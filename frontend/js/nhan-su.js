/**
 * LOGIC TRANG QUẢN LÝ HỒ SƠ GIÁO VIÊN
 */

let currentBranchId = 1;
let currentSalaryTypeFilter = '';
let allEmployees = [];

function normalizeTime24(raw) {
  if (!raw) return '';
  raw = String(raw).trim().replace('.', ':').replace(';', ':');
  if (raw.includes(':')) {
    const parts = raw.split(':');
    let h = parseInt(parts[0], 10);
    let m = parseInt(parts[1] || '0', 10);
    if (isNaN(h)) return '';
    if (isNaN(m)) m = 0;
    if (h < 0) h = 0;
    if (h > 23) h = 23;
    if (m < 0) m = 0;
    if (m > 59) m = 59;
    return `${String(h).padStart(2, '0')}:${String(m).padStart(2, '0')}`;
  }
  if (/^\d{1,4}$/.test(raw)) {
    if (raw.length === 1 || raw.length === 2) {
      let h = parseInt(raw, 10);
      if (h > 23) h = 23;
      return `${String(h).padStart(2, '0')}:00`;
    }
    if (raw.length === 3) {
      let h = parseInt(raw.substring(0, 1), 10);
      let m = parseInt(raw.substring(1), 10);
      if (m > 59) m = 59;
      return `0${h}:${String(m).padStart(2, '0')}`;
    }
    if (raw.length === 4) {
      let h = parseInt(raw.substring(0, 2), 10);
      let m = parseInt(raw.substring(2), 10);
      if (h > 23) h = 23;
      if (m > 59) m = 59;
      return `${String(h).padStart(2, '0')}:${String(m).padStart(2, '0')}`;
    }
  }
  return '';
}

document.addEventListener('DOMContentLoaded', async () => {
  await auth.checkSession();
  utils.initIcons();

  currentBranchId = utils.getCurrentBranchId();
  const branchSelect = document.getElementById('sidebar-branch-select');
  if (branchSelect) {
    branchSelect.value = currentBranchId;
    branchSelect.addEventListener('change', (e) => {
      currentBranchId = parseInt(e.target.value);
      utils.setCurrentBranchId(currentBranchId);
      loadEmployees();
    });
  }

  // Bộ lọc loại lương
  document.getElementById('filter-all')?.addEventListener('click', () => setFilter(''));
  document.getElementById('filter-fixed')?.addEventListener('click', () => setFilter('FIXED'));
  document.getElementById('filter-hourly')?.addEventListener('click', () => setFilter('HOURLY'));

  // Tìm kiếm
  document.getElementById('input-search')?.addEventListener('input', (e) => {
    filterAndRender(e.target.value.toLowerCase().trim());
  });

  // Nút Xuất Excel Danh Sách Giáo Viên
  document.getElementById('btn-export-emp-excel')?.addEventListener('click', () => {
    const branchName = currentBranchId === 1 ? 'Chi nhánh Càng Long' : 'Chi nhánh Tân Nhựt';
    excelExporter.exportEmployees(currentBranchId, branchName, allEmployees);
  });

  // Modal Thêm mới
  document.getElementById('btn-add-employee')?.addEventListener('click', openAddModal);
  document.getElementById('btn-save-employee')?.addEventListener('click', saveEmployee);

  // Thay đổi Loại lương trong Form -> ẩn/hiện trường lương
  document.getElementById('emp-form-salary-type')?.addEventListener('change', (e) => {
    toggleSalaryFields(e.target.value);
  });

  document.getElementById('btn-logout')?.addEventListener('click', () => auth.logout());
  document.getElementById('btn-toggle-sidebar')?.addEventListener('click', () => {
    document.querySelector('.app-sidebar')?.classList.toggle('show');
  });

  await loadEmployees();
});

function setFilter(type) {
  currentSalaryTypeFilter = type;
  document.querySelectorAll('.tab-pill').forEach(btn => btn.classList.remove('active'));
  if (!type) document.getElementById('filter-all')?.classList.add('active');
  if (type === 'FIXED') document.getElementById('filter-fixed')?.classList.add('active');
  if (type === 'HOURLY') document.getElementById('filter-hourly')?.classList.add('active');
  filterAndRender();
}

async function loadEmployees() {
  const branchName = currentBranchId === 1 ? 'Chi nhánh Càng Long' : 'Chi nhánh Tân Nhựt';
  document.getElementById('page-branch-title').textContent = `Hồ Sơ Giáo Viên — ${branchName}`;

  const tbody = document.getElementById('employee-tbody');
  tbody.innerHTML = `<tr><td colspan="9" style="text-align: center; padding: 40px; color: var(--color-text-secondary);">Đang nạp dữ liệu...</td></tr>`;

  const res = await api.get('employees.php', { branch_id: currentBranchId });
  if (res.status === 'success' && res.data) {
    allEmployees = res.data;
    filterAndRender();
  } else {
    tbody.innerHTML = `<tr><td colspan="9" style="text-align: center; padding: 40px; color: var(--color-danger);">Lỗi: ${res.message}</td></tr>`;
  }
}

function filterAndRender(searchTerm = '') {
  let list = allEmployees;
  if (currentSalaryTypeFilter) {
    list = list.filter(e => e.salary_type === currentSalaryTypeFilter);
  }
  if (searchTerm) {
    list = list.filter(e => 
      e.full_name.toLowerCase().includes(searchTerm) || 
      e.employee_code.toLowerCase().includes(searchTerm) ||
      (e.phone && e.phone.includes(searchTerm))
    );
  }

  const tbody = document.getElementById('employee-tbody');
  if (list.length === 0) {
    tbody.innerHTML = `<tr><td colspan="12" style="text-align: center; padding: 30px; color: var(--color-text-secondary);">Không tìm thấy giáo viên nào phù hợp.</td></tr>`;
    return;
  }

  tbody.innerHTML = list.map((emp, index) => {
    const isFixed = emp.salary_type === 'FIXED';
    const typeBadge = isFixed 
      ? `<span class="badge badge-success">Lương cứng</span>` 
      : `<span class="badge badge-warning">Lương theo giờ</span>`;
    
    const stdDays = isFixed ? parseFloat(emp.standard_work_days || 26) : 0;
    const baseSal = isFixed ? parseFloat(emp.base_salary || 0) : 0;
    const dailyRate = (isFixed && stdDays > 0) ? Math.round(baseSal / stdDays) : 0;

    const salaryDisplay = isFixed 
      ? `<strong>${utils.formatCurrency(emp.base_salary)}</strong>` 
      : `<strong>${utils.formatCurrency(emp.hourly_rate)}</strong>/ca`;

    const stdDaysDisplay = isFixed 
      ? `<span class="badge badge-info" style="font-weight: 600;">${stdDays} ngày</span>` 
      : `-`;

    const dailyDisplay = isFixed 
      ? `<strong style="color: var(--color-primary);">${utils.formatCurrency(dailyRate)}</strong>` 
      : `-`;

    const travelDisplay = emp.travel_allowance > 0 
      ? `<span style="font-weight: 600; color: #047857;">${utils.formatCurrency(emp.travel_allowance)}</span>` 
      : `<span style="color: #9CA3AF;">-</span>`;

    const lunchDisplay = isFixed 
      ? (emp.has_lunch_allowance == 1 
          ? `<span class="badge badge-success" title="Được hưởng 25.000đ/ngày đi làm">Có (25k)</span>` 
          : `<span class="badge badge-danger" style="background:#FFE4E6; color:#BE123C; border:1px solid #FECDD3;" title="Không hưởng phụ cấp cơm">Không</span>`)
      : `<span style="color: #9CA3AF;">-</span>`;

    return `
      <tr>
        <td style="text-align: center; color: var(--color-text-secondary); font-size: 12.5px;">${index + 1}</td>
        <td><strong style="color: var(--color-primary);">${emp.employee_code}</strong></td>
        <td><strong>${emp.full_name}</strong></td>
        <td>${emp.position || '-'}</td>
        <td>${typeBadge}</td>
        <td>${salaryDisplay}</td>
        <td style="text-align: center;">${stdDaysDisplay}</td>
        <td>${dailyDisplay}</td>
        <td>${travelDisplay}</td>
        <td style="text-align: center;">${lunchDisplay}</td>
        <td><span style="font-size: 12px; color: var(--color-text-secondary);">${emp.time_frame || '-'}</span></td>
        <td style="text-align: right;">
          <button class="btn btn-secondary btn-sm" onclick="openEditModal(${emp.id})" title="Chỉnh sửa hồ sơ">
            <i data-lucide="edit-2"></i>
          </button>
          <button class="btn btn-secondary btn-sm" onclick="deleteEmployee(${emp.id})" title="Chuyển trạng thái nghỉ việc" style="color: var(--color-danger);">
            <i data-lucide="trash-2"></i>
          </button>
        </td>
      </tr>
    `;
  }).join('');

  utils.initIcons();
}

function toggleSalaryFields(type) {
  const fixedSection = document.getElementById('section-salary-fixed');
  const hourlySection = document.getElementById('section-salary-hourly');

  if (type === 'FIXED') {
    if (fixedSection) fixedSection.style.display = 'block';
    if (hourlySection) hourlySection.style.display = 'none';
  } else {
    if (fixedSection) fixedSection.style.display = 'none';
    if (hourlySection) hourlySection.style.display = 'block';
  }
}

window.calcEmpDailyRateLive = function() {
  const base = parseFloat(document.getElementById('emp-form-base-salary')?.value) || 0;
  const stdDays = parseFloat(document.getElementById('emp-form-std-days')?.value) || 26.0;
  const dailyRate = stdDays > 0 ? Math.round(base / stdDays) : 0;
  const el = document.getElementById('emp-form-daily-rate');
  if (el) {
    el.value = dailyRate > 0 ? utils.formatCurrency(dailyRate) : '0 ₫';
  }
};

function openAddModal() {
  document.getElementById('emp-modal-title').textContent = 'Thêm Hồ Sơ Giáo Viên Mới';
  document.getElementById('emp-form-id').value = '';
  document.getElementById('emp-form-code').value = '';
  document.getElementById('emp-form-name').value = '';
  document.getElementById('emp-form-position').value = '';
  document.getElementById('emp-form-phone').value = '';
  document.getElementById('emp-form-salary-type').value = 'FIXED';
  
  // Fields lương cứng
  document.getElementById('emp-form-base-salary').value = '';
  document.getElementById('emp-form-std-days').value = '26.0';
  document.getElementById('emp-form-att-rate').value = '0';
  document.getElementById('emp-form-travel-rate').value = '';
  document.getElementById('emp-form-has-lunch').value = '1';
  document.getElementById('emp-form-ot-rate').value = '150000';
  document.getElementById('emp-form-board-rate').value = '';

  // Fields lương theo giờ
  if (document.getElementById('emp-form-hourly-rate')) document.getElementById('emp-form-hourly-rate').value = '120000';
  if (document.getElementById('emp-form-hourly-board-rate')) document.getElementById('emp-form-hourly-board-rate').value = '30000';
  if (document.getElementById('emp-form-hourly-travel-rate')) document.getElementById('emp-form-hourly-travel-rate').value = '';
  if (document.getElementById('emp-form-hourly-att-rate')) document.getElementById('emp-form-hourly-att-rate').value = '0';

  // Khung giờ & ghi chú
  document.getElementById('emp-form-time-frame').value = '8:00 - 17:30 (9h30)';
  document.getElementById('emp-form-std-hours').value = '8.0';
  document.getElementById('emp-form-time-in').value = '08:00';
  document.getElementById('emp-form-time-out').value = '17:30';
  if (document.getElementById('emp-form-notes')) document.getElementById('emp-form-notes').value = '';

  calcEmpDailyRateLive();
  toggleSalaryFields('FIXED');
  document.getElementById('employee-modal').classList.add('active');
  utils.initIcons();
}

window.openEditModal = function(id) {
  const emp = allEmployees.find(e => e.id == id);
  if (!emp) return;

  document.getElementById('emp-modal-title').textContent = `Chỉnh Sửa Hồ Sơ: ${emp.full_name} (${emp.employee_code})`;
  document.getElementById('emp-form-id').value = emp.id;
  document.getElementById('emp-form-code').value = emp.employee_code;
  document.getElementById('emp-form-name').value = emp.full_name;
  document.getElementById('emp-form-position').value = emp.position || '';
  document.getElementById('emp-form-phone').value = emp.phone || '';
  document.getElementById('emp-form-salary-type').value = emp.salary_type;
  
  if (emp.salary_type === 'HOURLY') {
    if (document.getElementById('emp-form-hourly-rate')) document.getElementById('emp-form-hourly-rate').value = emp.hourly_rate || 120000;
    if (document.getElementById('emp-form-hourly-board-rate')) document.getElementById('emp-form-hourly-board-rate').value = emp.boarding_allowance || 30000;
    if (document.getElementById('emp-form-hourly-travel-rate')) document.getElementById('emp-form-hourly-travel-rate').value = emp.travel_allowance || '';
    if (document.getElementById('emp-form-hourly-att-rate')) document.getElementById('emp-form-hourly-att-rate').value = '0';
  } else {
    document.getElementById('emp-form-base-salary').value = emp.base_salary || '';
    document.getElementById('emp-form-std-days').value = emp.standard_work_days || '26.0';
    document.getElementById('emp-form-att-rate').value = '0';
    document.getElementById('emp-form-travel-rate').value = emp.travel_allowance || '';
    document.getElementById('emp-form-has-lunch').value = (emp.has_lunch_allowance !== undefined && emp.has_lunch_allowance !== null) ? String(emp.has_lunch_allowance) : '1';
    document.getElementById('emp-form-ot-rate').value = emp.overtime_rate || '150000';
    document.getElementById('emp-form-board-rate').value = emp.boarding_allowance || '';
  }

  calcEmpDailyRateLive();

  document.getElementById('emp-form-time-frame').value = emp.time_frame || '';
  document.getElementById('emp-form-std-hours').value = emp.standard_hours || '8.0';
  document.getElementById('emp-form-time-in').value = emp.default_time_in ? emp.default_time_in.substring(0, 5) : '';
  document.getElementById('emp-form-time-out').value = emp.default_time_out ? emp.default_time_out.substring(0, 5) : '';
  if (document.getElementById('emp-form-notes')) document.getElementById('emp-form-notes').value = emp.notes || '';

  toggleSalaryFields(emp.salary_type);
  document.getElementById('employee-modal').classList.add('active');
  utils.initIcons();
};

window.closeEmployeeModal = function() {
  document.getElementById('employee-modal').classList.remove('active');
};

async function saveEmployee() {
  const id = document.getElementById('emp-form-id').value;
  const code = document.getElementById('emp-form-code').value.trim();
  const name = document.getElementById('emp-form-name').value.trim();

  if (!code || !name) {
    utils.showToast('Vui lòng điền Mã GV và Họ tên', 'error');
    return;
  }

  const salaryType = document.getElementById('emp-form-salary-type').value;

  const payload = {
    branch_id: currentBranchId,
    employee_code: code,
    full_name: name,
    position: document.getElementById('emp-form-position').value.trim(),
    phone: document.getElementById('emp-form-phone').value.trim(),
    salary_type: salaryType,
    time_frame: document.getElementById('emp-form-time-frame').value.trim(),
    standard_hours: parseFloat(document.getElementById('emp-form-std-hours').value) || 8.0,
    default_time_in: normalizeTime24(document.getElementById('emp-form-time-in').value) || null,
    default_time_out: normalizeTime24(document.getElementById('emp-form-time-out').value) || null,
    notes: document.getElementById('emp-form-notes') ? document.getElementById('emp-form-notes').value.trim() : ''
  };

  if (salaryType === 'HOURLY') {
    payload.hourly_rate = parseFloat(document.getElementById('emp-form-hourly-rate')?.value) || 120000;
    payload.boarding_allowance = parseFloat(document.getElementById('emp-form-hourly-board-rate')?.value) || 0;
    payload.travel_allowance = parseFloat(document.getElementById('emp-form-hourly-travel-rate')?.value) || 0;
    payload.attendance_allowance = parseFloat(document.getElementById('emp-form-hourly-att-rate')?.value) || 0;
    payload.base_salary = 0;
    payload.standard_work_days = 26.0;
    payload.has_lunch_allowance = 0;
    payload.overtime_rate = 150000;
  } else {
    payload.base_salary = parseFloat(document.getElementById('emp-form-base-salary').value) || 0;
    payload.standard_work_days = parseFloat(document.getElementById('emp-form-std-days').value) || 26.0;
    payload.attendance_allowance = parseFloat(document.getElementById('emp-form-att-rate').value) || 0;
    payload.travel_allowance = parseFloat(document.getElementById('emp-form-travel-rate').value) || 0;
    payload.has_lunch_allowance = parseInt(document.getElementById('emp-form-has-lunch').value),
    payload.overtime_rate = parseFloat(document.getElementById('emp-form-ot-rate').value) || 150000;
    payload.boarding_allowance = parseFloat(document.getElementById('emp-form-board-rate').value) || 0;
    payload.hourly_rate = 0;
  }

  let res;
  if (id) {
    payload.id = parseInt(id);
    res = await api.put('employees.php', payload);
  } else {
    res = await api.post('employees.php', payload);
  }

  if (res.status === 'success') {
    utils.showToast(id ? 'Cập nhật thành công!' : 'Thêm giáo viên mới thành công!', 'success');
    closeEmployeeModal();
    await loadEmployees();
  } else {
    utils.showToast(res.message || 'Lỗi khi lưu dữ liệu', 'error');
  }
}

window.deleteEmployee = async function(id) {
  const emp = allEmployees.find(e => e.id == id);
  const name = emp ? `${emp.full_name} (${emp.employee_code})` : 'giáo viên này';

  const choice = prompt(
    `Bạn muốn xử lý hồ sơ "${name}":\n` +
    `1. Nhập '1' để chuyển trạng thái [NGHỈ VIỆC] (Lưu lại lịch sử chấm công các tháng cũ - Khuyên dùng)\n` +
    `2. Nhập '2' để [XÓA VĨNH VIỄN] khỏi cơ sở dữ liệu (Dành cho trường hợp nhập nhầm)\n` +
    `Hoặc bấm Cancel / Hủy để quay lại.`
  );

  if (choice === '1') {
    const res = await api.delete('employees.php', { id: id });
    if (res.status === 'success') {
      utils.showToast('Đã chuyển giáo viên sang trạng thái nghỉ việc', 'success');
      await loadEmployees();
    } else {
      utils.showToast(res.message || 'Lỗi khi cập nhật trạng thái', 'error');
    }
  } else if (choice === '2') {
    if (!confirm(`CẢNH BÁO: Bạn có chắc chắn muốn XÓA VĨNH VIỄN "${name}"? Toàn bộ dữ liệu liên quan sẽ bị xóa sạch.`)) return;

    const res = await api.delete('employees.php', { id: id, permanent: 1 });
    if (res.status === 'success') {
      utils.showToast('Đã xóa vĩnh viễn giáo viên khỏi Database', 'success');
      await loadEmployees();
    } else {
      utils.showToast(res.message || 'Lỗi khi xóa', 'error');
    }
  }
};
