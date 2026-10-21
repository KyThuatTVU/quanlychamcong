/**
 * LOGIC TRANG TÍNH LƯƠNG & XUẤT BẢNG LƯƠNG — HỖ TRỢ ĐẦY ĐỦ THÊM, XÓA, SỬA
 */

let currentBranchId = 1;
let currentSalaryType = 'FIXED';
let currentMonth = 10;
let currentYear = 2026;
let payrollList = [];
let allBranchEmployees = [];

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
      loadPayroll();
    });
  }

  document.getElementById('select-month')?.addEventListener('change', (e) => {
    currentMonth = parseInt(e.target.value);
    loadPayroll();
  });
  document.getElementById('select-year')?.addEventListener('change', (e) => {
    currentYear = parseInt(e.target.value);
    loadPayroll();
  });

  document.getElementById('tab-fixed')?.addEventListener('click', () => switchTab('FIXED'));
  document.getElementById('tab-hourly')?.addEventListener('click', () => switchTab('HOURLY'));

  // Nút Tính lại tự động toàn bộ
  document.getElementById('btn-recalculate')?.addEventListener('click', () => {
    if (confirm(`Bạn có chắc muốn hệ thống tính toán lại tự động toàn bộ bảng lương Tháng ${currentMonth}/${currentYear} theo dữ liệu chấm công không?`)) {
      utils.showToast('Đang tính lại bảng lương từ chấm công...', 'info');
      loadPayroll(true);
    }
  });

  // Nút Xuất Excel Bản Đẹp
  document.getElementById('btn-export-excel')?.addEventListener('click', () => {
    const branchName = currentBranchId === 1 ? 'Chi nhánh Càng Long' : 'Chi nhánh Tân Nhựt';
    excelExporter.exportPayroll(currentBranchId, branchName, currentMonth, currentYear);
  });

  // Nút Thêm Dòng Lương
  document.getElementById('btn-add-payroll')?.addEventListener('click', openAddPayrollModal);
  document.getElementById('btn-submit-add-payroll')?.addEventListener('click', submitAddPayroll);

  // Nút Lưu Sửa Chi Tiết
  document.getElementById('btn-submit-edit-payroll')?.addEventListener('click', submitEditPayroll);

  // Nút Lưu Điều Chỉnh Nhanh
  document.getElementById('btn-save-adjustment')?.addEventListener('click', saveAdjustment);

  document.getElementById('btn-logout')?.addEventListener('click', () => auth.logout());

  await loadPayroll();
});

function switchTab(type) {
  currentSalaryType = type;
  document.querySelectorAll('.tab-pill').forEach(b => b.classList.remove('active'));
  if (type === 'FIXED') {
    document.getElementById('tab-fixed')?.classList.add('active');
  } else {
    document.getElementById('tab-hourly')?.classList.add('active');
  }
  loadPayroll();
}

async function loadPayroll(forceRecalculate = false) {
  const branchName = currentBranchId === 1 ? 'Chi nhánh Càng Long' : 'Chi nhánh Tân Nhựt';
  const typeText = currentSalaryType === 'FIXED' ? 'Lương Cứng' : 'Lương Theo Giờ';
  document.getElementById('page-branch-title').textContent = `Bảng Lương — ${branchName} (${typeText})`;
  document.getElementById('payroll-card-title').textContent = `Bảng Lương Tháng ${currentMonth}/${currentYear} — ${typeText}`;

  const thead = document.getElementById('payroll-thead');
  const tbody = document.getElementById('payroll-tbody');
  tbody.innerHTML = `<tr><td colspan="15" style="text-align: center; padding: 40px; color: var(--color-text-secondary);">Đang nạp bảng lương...</td></tr>`;

  const params = {
    branch_id: currentBranchId,
    salary_type: currentSalaryType,
    month: currentMonth,
    year: currentYear
  };
  if (forceRecalculate) {
    params.force_recalculate = 1;
  }

  const res = await api.get('payroll.php', params);

  if (res.status === 'success' && res.data) {
    payrollList = res.data.payroll_list || [];
    renderPayrollTable();
  } else {
    tbody.innerHTML = `<tr><td colspan="15" style="text-align: center; padding: 40px; color: var(--color-danger);">Lỗi: ${res.message}</td></tr>`;
  }
}

function renderPayrollTable() {
  const thead = document.getElementById('payroll-thead');
  const tbody = document.getElementById('payroll-tbody');

  let totalExpense = 0;

  if (currentSalaryType === 'FIXED') {
    thead.innerHTML = `
      <tr>
        <th style="width: 50px;">STT</th>
        <th>Mã GV</th>
        <th>Họ và Tên</th>
        <th>Lương Cơ Bản</th>
        <th>Công (X)</th>
        <th>Lương Ngày Công</th>
        <th>Tiền TC</th>
        <th>Bán Trú</th>
        <th>Chuyên Cần</th>
        <th>Tiền Cơm</th>
        <th>Thưởng</th>
        <th>Khấu Trừ</th>
        <th>THỰC LĨNH</th>
        <th style="text-align: right; min-width: 170px;">Thao Tác</th>
      </tr>
    `;

    if (payrollList.length === 0) {
      tbody.innerHTML = `<tr><td colspan="14" style="text-align: center; padding: 30px; color: var(--color-text-secondary);">Chưa có dữ liệu tính lương tháng ${currentMonth}/${currentYear}. Bấm <strong>"Thêm Dòng Lương"</strong> hoặc <strong>"Tính Lại Tự Động"</strong> để tạo bảng lương.</td></tr>`;
      document.getElementById('summary-total-cost').textContent = `Tổng chi lương: 0 ₫`;
      return;
    }

    tbody.innerHTML = payrollList.map((item, index) => {
      const net = parseFloat(item.net_salary || 0);
      totalExpense += net;
      const empId = item.employee_id || item.id;
      return `
        <tr>
          <td>${index + 1}</td>
          <td><strong style="color: var(--color-primary);">${item.employee_code}</strong></td>
          <td><strong>${item.full_name}</strong></td>
          <td>${utils.formatCurrency(item.base_salary)}</td>
          <td><strong style="color: var(--color-accent);">${item.total_days_x} ngày</strong></td>
          <td><strong class="cell-currency-bold">${utils.formatCurrency(item.salary_by_days)}</strong></td>
          <td>${item.ot_pay > 0 ? utils.formatCurrency(item.ot_pay) : '-'}</td>
          <td>${item.boarding_pay > 0 ? utils.formatCurrency(item.boarding_pay) : '-'}</td>
          <td>${item.attendance_allowance > 0 ? utils.formatCurrency(item.attendance_allowance) : '-'}</td>
          <td>${item.lunch_allowance > 0 ? utils.formatCurrency(item.lunch_allowance) : '-'}</td>
          <td style="color: var(--color-accent);">${item.bonus > 0 ? '+' + utils.formatCurrency(item.bonus) : '-'}</td>
          <td style="color: var(--color-danger);">${item.deductions > 0 ? '-' + utils.formatCurrency(item.deductions) : '-'}</td>
          <td><strong class="cell-net-salary">${utils.formatCurrency(item.net_salary)}</strong></td>
          <td style="text-align: right;">
            <div class="action-btn-group">
              <button class="btn btn-secondary btn-sm" onclick="openEditPayrollModal(${empId})" title="Sửa toàn bộ thông số lương">
                <i data-lucide="edit-3" style="width: 14px; height: 14px;"></i> Sửa
              </button>
              <button class="btn btn-secondary btn-sm" onclick="openAdjustmentModal(${empId})" title="Thưởng / Khấu trừ nhanh">
                <i data-lucide="sliders" style="width: 14px; height: 14px;"></i>
              </button>
              <a href="phieu-luong.html?employee_id=${empId}&month=${currentMonth}&year=${currentYear}" target="_blank" class="btn btn-secondary btn-sm" title="In phiếu lương">
                <i data-lucide="printer" style="width: 14px; height: 14px;"></i>
              </a>
              <button class="btn btn-danger btn-sm" onclick="deletePayrollRow(${empId}, '${item.full_name.replace(/'/g, "\\'")}')" title="Xóa dòng tính lương này">
                <i data-lucide="trash-2" style="width: 14px; height: 14px;"></i>
              </button>
            </div>
          </td>
        </tr>
      `;
    }).join('');
  } else {
    // LƯƠNG THEO GIỜ
    thead.innerHTML = `
      <tr>
        <th style="width: 50px;">STT</th>
        <th>Mã GV</th>
        <th>Họ và Tên</th>
        <th>Tổng Ca Dạy</th>
        <th>Đơn Giá / Ca</th>
        <th>Lương Theo Ca</th>
        <th>Phụ Cấp Bán Trú</th>
        <th>Thưởng</th>
        <th>Khấu Trừ</th>
        <th>THỰC LĨNH</th>
        <th style="text-align: right; min-width: 170px;">Thao Tác</th>
      </tr>
    `;

    if (payrollList.length === 0) {
      tbody.innerHTML = `<tr><td colspan="11" style="text-align: center; padding: 30px; color: var(--color-text-secondary);">Chưa có dữ liệu tính lương tháng ${currentMonth}/${currentYear}. Bấm <strong>"Thêm Dòng Lương"</strong> hoặc <strong>"Tính Lại Tự Động"</strong> để tạo bảng lương.</td></tr>`;
      document.getElementById('summary-total-cost').textContent = `Tổng chi lương: 0 ₫`;
      return;
    }

    tbody.innerHTML = payrollList.map((item, index) => {
      const net = parseFloat(item.net_salary || 0);
      totalExpense += net;
      const empId = item.employee_id || item.id;
      return `
        <tr>
          <td>${index + 1}</td>
          <td><strong style="color: var(--color-primary);">${item.employee_code}</strong></td>
          <td><strong>${item.full_name}</strong></td>
          <td><strong style="color: var(--color-accent);">${item.total_slots} ca</strong></td>
          <td>${utils.formatCurrency(item.hourly_rate || item.emp_hourly_rate || 120000)}</td>
          <td><strong class="cell-currency-bold">${utils.formatCurrency(item.salary_by_slots)}</strong></td>
          <td>${item.boarding_pay > 0 ? utils.formatCurrency(item.boarding_pay) + ` (${item.total_boarding_days || 0} buổi)` : '-'}</td>
          <td style="color: var(--color-accent);">${item.bonus > 0 ? '+' + utils.formatCurrency(item.bonus) : '-'}</td>
          <td style="color: var(--color-danger);">${item.deductions > 0 ? '-' + utils.formatCurrency(item.deductions) : '-'}</td>
          <td><strong class="cell-net-salary">${utils.formatCurrency(item.net_salary)}</strong></td>
          <td style="text-align: right;">
            <div class="action-btn-group">
              <button class="btn btn-secondary btn-sm" onclick="openEditPayrollModal(${empId})" title="Sửa toàn bộ thông số lương">
                <i data-lucide="edit-3" style="width: 14px; height: 14px;"></i> Sửa
              </button>
              <button class="btn btn-secondary btn-sm" onclick="openAdjustmentModal(${empId})" title="Thưởng / Khấu trừ nhanh">
                <i data-lucide="sliders" style="width: 14px; height: 14px;"></i>
              </button>
              <a href="phieu-luong.html?employee_id=${empId}&month=${currentMonth}&year=${currentYear}" target="_blank" class="btn btn-secondary btn-sm" title="In phiếu lương">
                <i data-lucide="printer" style="width: 14px; height: 14px;"></i>
              </a>
              <button class="btn btn-danger btn-sm" onclick="deletePayrollRow(${empId}, '${item.full_name.replace(/'/g, "\\'")}')" title="Xóa dòng tính lương này">
                <i data-lucide="trash-2" style="width: 14px; height: 14px;"></i>
              </button>
            </div>
          </td>
        </tr>
      `;
    }).join('');
  }

  document.getElementById('summary-total-cost').textContent = `Tổng chi lương: ${utils.formatCurrency(totalExpense)}`;
  utils.initIcons();
}

// =========================================================================
// 1. CHỨC NĂNG SỬA TOÀN BỘ THÔNG SỐ LƯƠNG
// =========================================================================
window.openEditPayrollModal = function(empId) {
  const item = payrollList.find(p => (p.employee_id || p.id) == empId);
  if (!item) return;

  document.getElementById('edit-emp-id').value = empId;
  const salaryType = item.salary_type || currentSalaryType;
  document.getElementById('edit-salary-type').value = salaryType;

  document.getElementById('edit-emp-display-name').textContent = `${item.full_name} (${item.employee_code})`;
  document.getElementById('edit-emp-display-type').textContent = salaryType === 'FIXED' ? 'Lương Cứng' : 'Lương Theo Giờ';

  if (salaryType === 'FIXED') {
    document.getElementById('edit-section-fixed').style.display = 'block';
    document.getElementById('edit-section-hourly').style.display = 'none';

    document.getElementById('edit-f-base-salary').value = item.base_salary || 0;
    document.getElementById('edit-f-days-x').value = item.total_days_x || 0;
    document.getElementById('edit-f-salary-by-days').value = item.salary_by_days || 0;
    document.getElementById('edit-f-ot-pay').value = item.ot_pay || 0;
    document.getElementById('edit-f-boarding-pay').value = item.boarding_pay || 0;
    document.getElementById('edit-f-att-allowance').value = item.attendance_allowance || 0;
    document.getElementById('edit-f-lunch-pay').value = item.lunch_allowance || 0;
  } else {
    document.getElementById('edit-section-fixed').style.display = 'none';
    document.getElementById('edit-section-hourly').style.display = 'block';

    document.getElementById('edit-h-slots').value = item.total_slots || 0;
    document.getElementById('edit-h-rate').value = item.hourly_rate || item.emp_hourly_rate || 120000;
    document.getElementById('edit-h-salary-by-slots').value = item.salary_by_slots || 0;
    document.getElementById('edit-h-boarding-days').value = item.total_boarding_days || 0;
    document.getElementById('edit-h-boarding-pay').value = item.boarding_pay || 0;
  }

  document.getElementById('edit-bonus').value = item.bonus || 0;
  document.getElementById('edit-deductions').value = item.deductions || 0;
  document.getElementById('edit-note').value = item.note || '';

  calcEditLiveNet();
  document.getElementById('edit-payroll-modal').classList.add('active');
};

window.closeEditPayrollModal = function() {
  document.getElementById('edit-payroll-modal').classList.remove('active');
};

// Tính toán tự động theo ngày công / số ca khi đang mở form sửa
window.calcEditLive = function() {
  const salaryType = document.getElementById('edit-salary-type').value;
  if (salaryType === 'FIXED') {
    const base = parseFloat(document.getElementById('edit-f-base-salary').value) || 0;
    const daysX = parseFloat(document.getElementById('edit-f-days-x').value) || 0;
    // Lương ngày công = (Base / 26) * Ngày công
    const byDays = Math.round((base / 26.0) * daysX);
    document.getElementById('edit-f-salary-by-days').value = byDays;
    // Cơm trưa = 25k * ngày công
    document.getElementById('edit-f-lunch-pay').value = Math.round(daysX * 25000);
  } else {
    const slots = parseFloat(document.getElementById('edit-h-slots').value) || 0;
    const rate = parseFloat(document.getElementById('edit-h-rate').value) || 120000;
    document.getElementById('edit-h-salary-by-slots').value = Math.round(slots * rate);

    const bDays = parseInt(document.getElementById('edit-h-boarding-days').value) || 0;
    document.getElementById('edit-h-boarding-pay').value = Math.round(bDays * 30000);
  }
  calcEditLiveNet();
};

window.calcEditLiveNet = function() {
  const salaryType = document.getElementById('edit-salary-type').value;
  let totalIncome = 0;

  if (salaryType === 'FIXED') {
    const byDays = parseFloat(document.getElementById('edit-f-salary-by-days').value) || 0;
    const ot = parseFloat(document.getElementById('edit-f-ot-pay').value) || 0;
    const board = parseFloat(document.getElementById('edit-f-boarding-pay').value) || 0;
    const att = parseFloat(document.getElementById('edit-f-att-allowance').value) || 0;
    const lunch = parseFloat(document.getElementById('edit-f-lunch-pay').value) || 0;
    totalIncome = byDays + ot + board + att + lunch;
  } else {
    const bySlots = parseFloat(document.getElementById('edit-h-salary-by-slots').value) || 0;
    const board = parseFloat(document.getElementById('edit-h-boarding-pay').value) || 0;
    totalIncome = bySlots + board;
  }

  const bonus = parseFloat(document.getElementById('edit-bonus').value) || 0;
  const deductions = parseFloat(document.getElementById('edit-deductions').value) || 0;

  totalIncome += bonus;
  const net = Math.max(0, totalIncome - deductions);
  document.getElementById('edit-display-net').textContent = utils.formatCurrency(net);
};

async function submitEditPayroll() {
  const empId = document.getElementById('edit-emp-id').value;
  const salaryType = document.getElementById('edit-salary-type').value;

  const payload = {
    employee_id: parseInt(empId),
    salary_type: salaryType,
    month: currentMonth,
    year: currentYear,
    bonus: parseFloat(document.getElementById('edit-bonus').value) || 0,
    deductions: parseFloat(document.getElementById('edit-deductions').value) || 0,
    note: document.getElementById('edit-note').value.trim()
  };

  if (salaryType === 'FIXED') {
    payload.base_salary = parseFloat(document.getElementById('edit-f-base-salary').value) || 0;
    payload.total_days_x = parseFloat(document.getElementById('edit-f-days-x').value) || 0;
    payload.salary_by_days = parseFloat(document.getElementById('edit-f-salary-by-days').value) || 0;
    payload.ot_pay = parseFloat(document.getElementById('edit-f-ot-pay').value) || 0;
    payload.boarding_pay = parseFloat(document.getElementById('edit-f-boarding-pay').value) || 0;
    payload.attendance_allowance = parseFloat(document.getElementById('edit-f-att-allowance').value) || 0;
    payload.lunch_allowance = parseFloat(document.getElementById('edit-f-lunch-pay').value) || 0;
  } else {
    payload.total_slots = parseFloat(document.getElementById('edit-h-slots').value) || 0;
    payload.hourly_rate = parseFloat(document.getElementById('edit-h-rate').value) || 120000;
    payload.salary_by_slots = parseFloat(document.getElementById('edit-h-salary-by-slots').value) || 0;
    payload.total_boarding_days = parseInt(document.getElementById('edit-h-boarding-days').value) || 0;
    payload.boarding_pay = parseFloat(document.getElementById('edit-h-boarding-pay').value) || 0;
  }

  utils.showToast('Đang lưu thông số lương...', 'info');
  const res = await api.put('payroll.php', payload);

  if (res.status === 'success') {
    utils.showToast('Đã cập nhật bảng lương thành công!', 'success');
    closeEditPayrollModal();
    await loadPayroll();
  } else {
    utils.showToast(res.message || 'Lỗi khi cập nhật bảng lương', 'error');
  }
}

// =========================================================================
// 2. CHỨC NĂNG THÊM DÒNG TÍNH LƯƠNG THỦ CÔNG
// =========================================================================
window.openAddPayrollModal = async function() {
  utils.showToast('Đang tải danh sách giáo viên...', 'info');

  const res = await api.get('employees.php', {
    branch_id: currentBranchId,
    salary_type: currentSalaryType
  });

  if (res.status === 'success' && res.data) {
    allBranchEmployees = res.data.employees || [];
    const select = document.getElementById('add-emp-select');
    select.innerHTML = `<option value="">-- Chọn giáo viên thuộc ${currentBranchId === 1 ? 'Càng Long' : 'Tân Nhựt'} --</option>`;

    allBranchEmployees.forEach(emp => {
      // Đánh dấu nếu đã có trong bảng lương tháng này
      const exists = payrollList.some(p => (p.employee_id || p.id) == emp.id);
      select.innerHTML += `<option value="${emp.id}">${emp.employee_code} - ${emp.full_name} (${emp.position || 'GV'}) ${exists ? '— (Đã có trong bảng lương)' : ''}</option>`;
    });

    // Reset các ô nhập
    document.getElementById('add-fields-fixed').style.display = 'none';
    document.getElementById('add-fields-hourly').style.display = 'none';
    document.getElementById('add-fields-common').style.display = 'none';
    document.getElementById('add-banner-net').style.display = 'none';
    document.getElementById('add-group-note').style.display = 'none';

    document.getElementById('add-payroll-modal').classList.add('active');
  } else {
    utils.showToast('Không tải được danh sách nhân sự', 'error');
  }
};

window.closeAddPayrollModal = function() {
  document.getElementById('add-payroll-modal').classList.remove('active');
};

window.onSelectAddEmployee = function(empId) {
  if (!empId) {
    document.getElementById('add-fields-fixed').style.display = 'none';
    document.getElementById('add-fields-hourly').style.display = 'none';
    document.getElementById('add-fields-common').style.display = 'none';
    document.getElementById('add-banner-net').style.display = 'none';
    document.getElementById('add-group-note').style.display = 'none';
    return;
  }

  const emp = allBranchEmployees.find(e => e.id == empId);
  if (!emp) return;

  document.getElementById('add-fields-common').style.display = 'flex';
  document.getElementById('add-banner-net').style.display = 'flex';
  document.getElementById('add-group-note').style.display = 'block';

  if (emp.salary_type === 'FIXED') {
    document.getElementById('add-fields-fixed').style.display = 'block';
    document.getElementById('add-fields-hourly').style.display = 'none';

    document.getElementById('add-f-base-salary').value = emp.base_salary || 5500000;
    document.getElementById('add-f-days-x').value = 26;
    document.getElementById('add-f-ot-pay').value = 0;
    document.getElementById('add-f-boarding-pay').value = emp.boarding_allowance || 0;
    document.getElementById('add-f-att-pay').value = emp.attendance_allowance || 0;
  } else {
    document.getElementById('add-fields-fixed').style.display = 'none';
    document.getElementById('add-fields-hourly').style.display = 'block';

    document.getElementById('add-h-slots').value = 10;
    document.getElementById('add-h-rate').value = emp.hourly_rate || 120000;
    document.getElementById('add-h-boarding-days').value = 0;
    document.getElementById('add-h-boarding-pay').value = 0;
  }

  calcAddLive();
};

window.calcAddLive = function() {
  const empId = document.getElementById('add-emp-select').value;
  const emp = allBranchEmployees.find(e => e.id == empId);
  if (!emp) return;

  let totalIncome = 0;
  if (emp.salary_type === 'FIXED') {
    const base = parseFloat(document.getElementById('add-f-base-salary').value) || 0;
    const daysX = parseFloat(document.getElementById('add-f-days-x').value) || 0;
    const byDays = Math.round((base / 26.0) * daysX);
    const ot = parseFloat(document.getElementById('add-f-ot-pay').value) || 0;
    const board = parseFloat(document.getElementById('add-f-boarding-pay').value) || 0;
    const att = parseFloat(document.getElementById('add-f-att-pay').value) || 0;
    const lunch = Math.round(daysX * 25000);
    totalIncome = byDays + ot + board + att + lunch;
  } else {
    const slots = parseFloat(document.getElementById('add-h-slots').value) || 0;
    const rate = parseFloat(document.getElementById('add-h-rate').value) || 120000;
    const board = parseFloat(document.getElementById('add-h-boarding-pay').value) || 0;
    totalIncome = Math.round(slots * rate) + board;
  }

  const bonus = parseFloat(document.getElementById('add-bonus').value) || 0;
  const deductions = parseFloat(document.getElementById('add-deductions').value) || 0;
  totalIncome += bonus;
  const net = Math.max(0, totalIncome - deductions);
  document.getElementById('add-display-net').textContent = utils.formatCurrency(net);
};

async function submitAddPayroll() {
  const empId = document.getElementById('add-emp-select').value;
  if (!empId) {
    utils.showToast('Vui lòng chọn giáo viên cần thêm', 'warning');
    return;
  }

  const emp = allBranchEmployees.find(e => e.id == empId);
  if (!emp) return;

  const payload = {
    employee_id: parseInt(empId),
    salary_type: emp.salary_type,
    month: currentMonth,
    year: currentYear,
    bonus: parseFloat(document.getElementById('add-bonus').value) || 0,
    deductions: parseFloat(document.getElementById('add-deductions').value) || 0,
    note: document.getElementById('add-note').value.trim()
  };

  if (emp.salary_type === 'FIXED') {
    payload.base_salary = parseFloat(document.getElementById('add-f-base-salary').value) || 0;
    payload.total_days_x = parseFloat(document.getElementById('add-f-days-x').value) || 0;
    payload.ot_pay = parseFloat(document.getElementById('add-f-ot-pay').value) || 0;
    payload.boarding_pay = parseFloat(document.getElementById('add-f-boarding-pay').value) || 0;
    payload.attendance_allowance = parseFloat(document.getElementById('add-f-att-pay').value) || 0;
  } else {
    payload.total_slots = parseFloat(document.getElementById('add-h-slots').value) || 0;
    payload.hourly_rate = parseFloat(document.getElementById('add-h-rate').value) || 120000;
    payload.total_boarding_days = parseInt(document.getElementById('add-h-boarding-days').value) || 0;
    payload.boarding_pay = parseFloat(document.getElementById('add-h-boarding-pay').value) || 0;
  }

  utils.showToast('Đang thêm giáo viên vào bảng lương...', 'info');
  const res = await api.post('payroll.php', payload);

  if (res.status === 'success') {
    utils.showToast('Đã thêm giáo viên vào bảng lương thành công!', 'success');
    closeAddPayrollModal();
    await loadPayroll();
  } else {
    utils.showToast(res.message || 'Lỗi khi thêm giáo viên vào bảng lương', 'error');
  }
}

// =========================================================================
// 3. CHỨC NĂNG XÓA DÒNG LƯƠNG
// =========================================================================
window.deletePayrollRow = async function(empId, empName) {
  const confirmMsg = `Bạn có chắc chắn muốn xóa bản ghi tính lương của giáo viên "${empName}" trong Tháng ${currentMonth}/${currentYear} không?\n\n(Lưu ý: Dòng này sẽ được xóa khỏi bảng lương tháng hiện tại).`;
  if (!confirm(confirmMsg)) return;

  utils.showToast('Đang xóa dòng tính lương...', 'info');
  const res = await api.delete('payroll.php', {
    employee_id: empId,
    month: currentMonth,
    year: currentYear
  });

  if (res.status === 'success') {
    utils.showToast(`Đã xóa thành công bảng lương của ${empName}!`, 'success');
    await loadPayroll();
  } else {
    utils.showToast(res.message || 'Lỗi khi xóa bảng lương', 'error');
  }
};

// =========================================================================
// 4. ĐIỀU CHỈNH NHANH THƯỞNG / KHẤU TRỪ
// =========================================================================
window.openAdjustmentModal = function(empId) {
  const item = payrollList.find(p => (p.employee_id || p.id) == empId);
  if (!item) return;

  document.getElementById('adj-emp-id').value = empId;
  document.getElementById('adj-emp-name').textContent = `Điều Chỉnh Lương: ${item.full_name} (${item.employee_code})`;
  document.getElementById('adj-bonus').value = item.bonus || '';
  document.getElementById('adj-deductions').value = item.deductions || '';
  document.getElementById('adj-note').value = item.note || '';

  document.getElementById('adjustment-modal').classList.add('active');
};

window.closeAdjustmentModal = function() {
  document.getElementById('adjustment-modal').classList.remove('active');
};

async function saveAdjustment() {
  const empId = document.getElementById('adj-emp-id').value;
  const bonus = parseFloat(document.getElementById('adj-bonus').value) || 0;
  const deductions = parseFloat(document.getElementById('adj-deductions').value) || 0;
  const note = document.getElementById('adj-note').value.trim();

  const res = await api.post('payroll.php?action=adjust', {
    employee_id: empId,
    month: currentMonth,
    year: currentYear,
    bonus: bonus,
    deductions: deductions,
    note: note
  });

  if (res.status === 'success') {
    utils.showToast('Đã lưu điều chỉnh lương thành công!', 'success');
    closeAdjustmentModal();
    await loadPayroll();
  } else {
    utils.showToast(res.message || 'Lỗi khi lưu điều chỉnh', 'error');
  }
}
