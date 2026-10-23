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

  // Nút Cấu Hình Chuyên Cần Tháng
  document.getElementById('btn-batch-attendance')?.addEventListener('click', openBatchAttendanceModal);

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
  let totalOtPay = 0;
  let totalOtHours = 0;
  let totalOtStaffCount = 0;

  if (currentSalaryType === 'FIXED') {
    thead.innerHTML = `
      <tr>
        <th style="width: 45px;">STT</th>
        <th>Mã GV</th>
        <th>Họ và Tên</th>
        <th>Chức Vụ</th>
        <th>Lương Cơ Bản</th>
        <th>Ngày Chuẩn</th>
        <th>Lương / Ngày</th>
        <th>Công (X)</th>
        <th>Lương Ngày Công</th>
        <th>Số Ca TC</th>
        <th>Tiền TC</th>
        <th>Bán Trú</th>
        <th>Chuyên Cần</th>
        <th>Tiền Cơm</th>
        <th>Thưởng Đi Lại</th>
        <th>Thưởng Khác</th>
        <th>Khấu Trừ</th>
        <th>THỰC LĨNH</th>
        <th>Nhận Xét Của GĐ</th>
        <th style="text-align: right; min-width: 150px;">Thao Tác</th>
      </tr>
    `;

    if (payrollList.length === 0) {
      tbody.innerHTML = `<tr><td colspan="20" style="text-align: center; padding: 30px; color: var(--color-text-secondary);">Chưa có dữ liệu tính lương tháng ${currentMonth}/${currentYear}. Bấm <strong>"Thêm Dòng Lương"</strong> hoặc <strong>"Tính Lại Tự Động"</strong> để tạo bảng lương.</td></tr>`;
      document.getElementById('summary-total-cost').textContent = `Tổng chi lương: 0 ₫`;
      const otBadge = document.getElementById('summary-total-ot');
      if (otBadge) otBadge.style.display = 'none';
      return;
    }

    tbody.innerHTML = payrollList.map((item, index) => {
      const net = parseFloat(item.net_salary || 0);
      const ot = parseFloat(item.ot_pay || 0);
      const otH = parseFloat(item.total_ot_hours || 0);
      const otSlots = parseFloat(item.ot_count || (otH > 0 ? (otH / 1.5).toFixed(1) : 0));

      totalExpense += net;
      if (ot > 0 || otSlots > 0 || otH > 0) {
        totalOtPay += ot;
        totalOtHours += otSlots;
        totalOtStaffCount++;
      }

      const empId = item.employee_id || item.id;
      const stdDays = item.standard_work_days || item.emp_std_days || 26.0;
      const dailyRate = item.daily_salary_rate || (stdDays > 0 ? Math.round(item.base_salary / stdDays) : 0);
      const travelPay = parseFloat(item.travel_allowance || 0);
      const directorReview = item.director_review || '';

      return `
        <tr>
          <td>${index + 1}</td>
          <td><strong style="color: var(--color-primary);">${item.employee_code}</strong></td>
          <td><strong>${item.full_name}</strong></td>
          <td><span style="font-size: 12px; color: var(--color-text-secondary);">${item.position || 'Giáo viên'}</span></td>
          <td>${utils.formatCurrency(item.base_salary)}</td>
          <td><strong>${stdDays}</strong></td>
          <td>${utils.formatCurrency(dailyRate)}</td>
          <td><strong style="color: var(--color-accent);">${item.total_days_x} ngày</strong></td>
          <td><strong class="cell-currency-bold">${utils.formatCurrency(item.salary_by_days)}</strong></td>
          <td style="${otSlots > 0 ? 'font-weight: 700; color: #B45309; background: #FFFBEB;' : ''}">${otSlots > 0 ? otSlots + ' ca' : '-'}</td>
          <td style="${ot > 0 ? 'font-weight: 700; color: #B45309; background: #FEF3C7;' : ''}">${ot > 0 ? utils.formatCurrency(ot) : '-'}</td>
          <td>${item.boarding_pay > 0 ? utils.formatCurrency(item.boarding_pay) : '-'}</td>
          <td style="cursor: pointer; text-align: right;" onclick="openQuickAttendanceModal(${empId}, ${item.attendance_allowance || 0}, '${item.full_name.replace(/'/g, "\\'")}')" title="Bấm vào để cấu hình tiền Chuyên cần cho cô">
            ${item.attendance_allowance > 0 
              ? `<span style="font-weight: 700; color: #1D4ED8; border-bottom: 1px dashed #2563EB;">${utils.formatCurrency(item.attendance_allowance)} ✏️</span>` 
              : `<span class="badge" style="background:#EFF6FF; color:#2563EB; border: 1px dashed #93C5FD; font-weight: 600; cursor: pointer;">+ Nhập CC</span>`
            }
          </td>
          <td>${item.lunch_allowance > 0 ? utils.formatCurrency(item.lunch_allowance) : '-'}</td>
          <td>${travelPay > 0 ? utils.formatCurrency(travelPay) : '-'}</td>
          <td style="color: var(--color-accent);">${item.bonus > 0 ? '+' + utils.formatCurrency(item.bonus) : '-'}</td>
          <td style="color: var(--color-danger);">${item.deductions > 0 ? '-' + utils.formatCurrency(item.deductions) : '-'}</td>
          <td><strong class="cell-net-salary">${utils.formatCurrency(item.net_salary)}</strong></td>
          <td style="max-width: 200px; font-size: 12px; color: #374151;" title="${directorReview}">${directorReview ? `<em>${directorReview}</em>` : '-'}</td>
          <td style="text-align: right;">
            <div class="action-btn-group">
              <button class="btn btn-secondary btn-sm" onclick="openEditPayrollModal(${empId})" title="Cấu hình đầy đủ phiếu lương của giáo viên">
                <i data-lucide="sliders-horizontal" style="width: 14px; height: 14px; color: var(--color-primary);"></i> Cấu hình
              </button>
              <button class="btn btn-secondary btn-sm" onclick="openAdjustmentModal(${empId})" title="Thưởng / Khấu trừ nhanh">
                <i data-lucide="sliders" style="width: 14px; height: 14px;"></i>
              </button>
              <a href="phieu-luong.html?employee_id=${empId}&month=${currentMonth}&year=${currentYear}&branch_id=${currentBranchId}" target="_blank" class="btn btn-secondary btn-sm" title="Mở phiếu lương cá nhân (Điền tổng / In / Xuất Excel)">
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
          <td><strong style="color: var(--color-accent);">${parseFloat(item.total_slots || 0).toFixed(2).replace(/\.?0+$/, '')} ca</strong></td>
          <td>${utils.formatCurrency(item.hourly_rate || item.emp_hourly_rate || 120000)}</td>
          <td><strong class="cell-currency-bold">${utils.formatCurrency(item.salary_by_slots)}</strong></td>
          <td>${item.boarding_pay > 0 ? utils.formatCurrency(item.boarding_pay) + ` (${item.total_boarding_days || 0} buổi)` : '-'}</td>
          <td style="color: var(--color-accent);">${item.bonus > 0 ? '+' + utils.formatCurrency(item.bonus) : '-'}</td>
          <td style="color: var(--color-danger);">${item.deductions > 0 ? '-' + utils.formatCurrency(item.deductions) : '-'}</td>
          <td><strong class="cell-net-salary">${utils.formatCurrency(item.net_salary)}</strong></td>
          <td style="text-align: right;">
            <div class="action-btn-group">
              <button class="btn btn-secondary btn-sm" onclick="openEditPayrollModal(${empId})" title="Cấu hình đầy đủ phiếu lương">
                <i data-lucide="sliders-horizontal" style="width: 14px; height: 14px; color: var(--color-primary);"></i> Cấu hình
              </button>
              <button class="btn btn-secondary btn-sm" onclick="openAdjustmentModal(${empId})" title="Thưởng / Khấu trừ nhanh">
                <i data-lucide="sliders" style="width: 14px; height: 14px;"></i>
              </button>
              <a href="phieu-luong.html?employee_id=${empId}&month=${currentMonth}&year=${currentYear}&branch_id=${currentBranchId}" target="_blank" class="btn btn-secondary btn-sm" title="Mở phiếu lương cá nhân (Điền tổng / In / Xuất Excel)">
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

  const otBadge = document.getElementById('summary-total-ot');
  const otText = document.getElementById('summary-total-ot-text');
  if (otBadge && otText) {
    if (totalOtPay > 0) {
      otBadge.style.display = 'inline-flex';
      const slotsText = totalOtHours > 0 ? `${totalOtHours} ca` : '';
      otText.textContent = `Tăng ca: ${totalOtStaffCount} GV ${slotsText ? `(${slotsText})` : ''} — ${utils.formatCurrency(totalOtPay)}`;
    } else {
      otBadge.style.display = 'none';
    }
  }

  utils.initIcons();
}

// =========================================================================
// 1. CHỨC NĂNG CẤU HÌNH PHIẾU LƯƠNG ĐẦY ĐỦ CHO 1 GIÁO VIÊN
// =========================================================================
window.openEditPayrollModal = function(empId) {
  const item = payrollList.find(p => (p.employee_id || p.id) == empId);
  if (!item) return;

  document.getElementById('edit-payroll-title').textContent = `Cấu Hình Phiếu Lương — ${item.full_name} (${item.employee_code})`;
  document.getElementById('edit-emp-id').value = empId;
  const salaryType = item.salary_type || currentSalaryType;
  document.getElementById('edit-salary-type').value = salaryType;

  document.getElementById('edit-emp-display-name').textContent = `${item.full_name} (${item.employee_code})`;
  document.getElementById('edit-emp-display-type').textContent = salaryType === 'FIXED' ? 'Lương Cứng' : 'Lương Theo Giờ';

  if (salaryType === 'FIXED') {
    document.getElementById('edit-section-fixed').style.display = 'block';
    document.getElementById('edit-section-hourly').style.display = 'none';

    document.getElementById('edit-f-base-salary').value = item.base_salary || 0;
    const stdDays = parseFloat(item.standard_work_days || item.emp_std_days || 26.0);
    document.getElementById('edit-f-std-days').value = stdDays;
    const dailyRate = parseFloat(item.daily_salary_rate || 0) || (stdDays > 0 ? Math.round((item.base_salary || 0) / stdDays) : 0);
    document.getElementById('edit-f-daily-rate').value = dailyRate;

    document.getElementById('edit-f-days-x').value = item.total_days_x || 0;
    document.getElementById('edit-f-salary-by-days').value = item.salary_by_days || 0;
    document.getElementById('edit-f-ot-hours').value = item.ot_count || (item.total_ot_hours ? (item.total_ot_hours / 1.5).toFixed(1) : '');
    document.getElementById('edit-f-ot-pay').value = item.ot_pay || 0;
    document.getElementById('edit-f-boarding-pay').value = item.boarding_pay || 0;
    document.getElementById('edit-f-att-allowance').value = item.attendance_allowance || 0;
    document.getElementById('edit-f-lunch-pay').value = item.lunch_allowance || 0;
    document.getElementById('edit-f-travel-pay').value = item.travel_allowance || 0;
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
  document.getElementById('edit-director-review').value = item.director_review || '';
  document.getElementById('edit-note').value = item.note || '';

  calcEditLiveNet();
  document.getElementById('edit-payroll-modal').classList.add('active');
  utils.initIcons();
};

window.closeEditPayrollModal = function() {
  document.getElementById('edit-payroll-modal').classList.remove('active');
};

// Tính toán tự động theo ngày công / số ca khi đang mở form sửa
window.calcEditLive = function() {
  const salaryType = document.getElementById('edit-salary-type').value;
  if (salaryType === 'FIXED') {
    const base = parseFloat(document.getElementById('edit-f-base-salary').value) || 0;
    const stdDays = parseFloat(document.getElementById('edit-f-std-days').value) || 26.0;
    const dailyRate = stdDays > 0 ? Math.round(base / stdDays) : 0;
    document.getElementById('edit-f-daily-rate').value = dailyRate;

    const daysX = parseFloat(document.getElementById('edit-f-days-x').value) || 0;
    // Lương ngày công = Lương/ngày * Ngày công
    const byDays = Math.round(dailyRate * daysX);
    document.getElementById('edit-f-salary-by-days').value = byDays;
  } else {
    const rawSlots = String(document.getElementById('edit-h-slots').value || '0').replace(',', '.');
    const slots = parseFloat(rawSlots) || 0;
    const rate = parseFloat(document.getElementById('edit-h-rate').value) || 120000;
    document.getElementById('edit-h-salary-by-slots').value = Math.round(slots * rate);

    const bDays = parseInt(document.getElementById('edit-h-boarding-days').value) || 0;
    document.getElementById('edit-h-boarding-pay').value = Math.round(bDays * 30000);
  }
  calcEditLiveNet();
};

window.calcEditOtLive = function() {
  const rawOt = String(document.getElementById('edit-f-ot-hours').value || '0').replace(',', '.');
  const otSlots = parseFloat(rawOt) || 0;
  const empId = document.getElementById('edit-emp-id').value;
  const item = payrollList.find(p => (p.employee_id || p.id) == empId);
  const otRate = item ? (parseFloat(item.overtime_rate || item.emp_overtime_rate) || 100000) : 100000;
  const otPay = Math.round(otSlots * otRate);
  document.getElementById('edit-f-ot-pay').value = otPay;
  calcEditLiveNet();
};

window.calcAddOtLive = function() {
  const rawOt = String(document.getElementById('add-f-ot-hours').value || '0').replace(',', '.');
  const otSlots = parseFloat(rawOt) || 0;
  const select = document.getElementById('add-emp-select');
  const empId = select ? select.value : null;
  const emp = addEmployeeList.find(e => e.id == empId);
  const otRate = emp ? (parseFloat(emp.overtime_rate) || 100000) : 100000;
  const otPay = Math.round(otSlots * otRate);
  document.getElementById('add-f-ot-pay').value = otPay;
  calcAddLive();
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
    const travel = parseFloat(document.getElementById('edit-f-travel-pay').value) || 0;
    totalIncome = byDays + ot + board + att + lunch + travel;
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
    director_review: document.getElementById('edit-director-review').value.trim(),
    note: document.getElementById('edit-note').value.trim()
  };

  if (salaryType === 'FIXED') {
    payload.base_salary = parseFloat(document.getElementById('edit-f-base-salary').value) || 0;
    payload.standard_work_days = parseFloat(document.getElementById('edit-f-std-days').value) || 26.0;
    payload.daily_salary_rate = parseFloat(document.getElementById('edit-f-daily-rate').value) || 0;
    payload.total_days_x = parseFloat(document.getElementById('edit-f-days-x').value) || 0;
    payload.salary_by_days = parseFloat(document.getElementById('edit-f-salary-by-days').value) || 0;
    const rawOt = String(document.getElementById('edit-f-ot-hours').value || '0').replace(',', '.');
    payload.ot_count = parseFloat(rawOt) || 0;
    payload.total_ot_hours = payload.ot_count * 1.5;
    payload.ot_pay = parseFloat(document.getElementById('edit-f-ot-pay').value) || 0;
    payload.boarding_pay = parseFloat(document.getElementById('edit-f-boarding-pay').value) || 0;
    payload.attendance_allowance = parseFloat(document.getElementById('edit-f-att-allowance').value) || 0;
    payload.lunch_allowance = parseFloat(document.getElementById('edit-f-lunch-pay').value) || 0;
    payload.travel_allowance = parseFloat(document.getElementById('edit-f-travel-pay').value) || 0;
  } else {
    const rawSlots = String(document.getElementById('edit-h-slots').value || '0').replace(',', '.');
    payload.total_slots = parseFloat(rawSlots) || 0;
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
    document.getElementById('add-group-review').style.display = 'none';
    document.getElementById('add-group-note').style.display = 'none';

    document.getElementById('add-payroll-modal').classList.add('active');
    utils.initIcons();
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
    document.getElementById('add-group-review').style.display = 'none';
    return;
  }

  const emp = allBranchEmployees.find(e => e.id == empId);
  if (!emp) return;

  document.getElementById('add-fields-common').style.display = 'block';
  document.getElementById('add-banner-net').style.display = 'flex';
  document.getElementById('add-group-review').style.display = 'block';
  document.getElementById('add-director-review').value = emp.notes || '';

  if (emp.salary_type === 'FIXED') {
    document.getElementById('add-fields-fixed').style.display = 'block';
    document.getElementById('add-fields-hourly').style.display = 'none';

    const stdDays = parseFloat(emp.standard_work_days || 26.0);
    document.getElementById('add-f-base-salary').value = emp.base_salary || 5500000;
    document.getElementById('add-f-std-days').value = stdDays;
    document.getElementById('add-f-days-x').value = stdDays;
    document.getElementById('add-f-ot-hours').value = 0;
    document.getElementById('add-f-ot-pay').value = 0;
    document.getElementById('add-f-boarding-pay').value = emp.boarding_allowance || 0;
    document.getElementById('add-f-att-pay').value = emp.attendance_allowance || 0;
    document.getElementById('add-f-travel-pay').value = emp.travel_allowance || 0;
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
    const stdDays = parseFloat(document.getElementById('add-f-std-days').value) || 26.0;
    const dailyRate = stdDays > 0 ? Math.round(base / stdDays) : 0;
    const daysX = parseFloat(document.getElementById('add-f-days-x').value) || 0;
    const byDays = Math.round(dailyRate * daysX);
    const ot = parseFloat(document.getElementById('add-f-ot-pay').value) || 0;
    const board = parseFloat(document.getElementById('add-f-boarding-pay').value) || 0;
    const att = parseFloat(document.getElementById('add-f-att-pay').value) || 0;
    const travel = parseFloat(document.getElementById('add-f-travel-pay').value) || 0;
    const hasLunch = emp.has_lunch_allowance !== 0 && emp.has_lunch_allowance !== '0';
    const lunch = hasLunch ? Math.round(daysX * 25000) : 0;
    totalIncome = byDays + ot + board + att + lunch + travel;
  } else {
    const rawSlots = String(document.getElementById('add-h-slots').value || '0').replace(',', '.');
    const slots = parseFloat(rawSlots) || 0;
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
    director_review: document.getElementById('add-director-review').value.trim(),
    note: document.getElementById('add-note').value.trim()
  };

  if (emp.salary_type === 'FIXED') {
    payload.base_salary = parseFloat(document.getElementById('add-f-base-salary').value) || 0;
    payload.standard_work_days = parseFloat(document.getElementById('add-f-std-days').value) || 26.0;
    payload.total_days_x = parseFloat(document.getElementById('add-f-days-x').value) || 0;
    const rawOt = String(document.getElementById('add-f-ot-hours').value || '0').replace(',', '.');
    payload.ot_count = parseFloat(rawOt) || 0;
    payload.total_ot_hours = payload.ot_count * 1.5;
    payload.ot_pay = parseFloat(document.getElementById('add-f-ot-pay').value) || 0;
    payload.boarding_pay = parseFloat(document.getElementById('add-f-boarding-pay').value) || 0;
    payload.attendance_allowance = parseFloat(document.getElementById('add-f-att-pay').value) || 0;
    payload.travel_allowance = parseFloat(document.getElementById('add-f-travel-pay').value) || 0;
  } else {
    const rawSlots = String(document.getElementById('add-h-slots').value || '0').replace(',', '.');
    payload.total_slots = parseFloat(rawSlots) || 0;
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
// 4. ĐIỀU CHỈNH NHANH THƯỞNG / CHUYÊN CẦN / KHẤU TRỪ
// =========================================================================
window.openAdjustmentModal = function(empId) {
  const item = payrollList.find(p => (p.employee_id || p.id) == empId);
  if (!item) return;

  document.getElementById('adj-emp-id').value = empId;
  document.getElementById('adj-emp-name').textContent = `Đánh Giá & Điều Chỉnh: ${item.full_name} (${item.employee_code})`;
  document.getElementById('adj-attendance').value = item.attendance_allowance || '';
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
  const att = parseFloat(document.getElementById('adj-attendance').value) || 0;
  const bonus = parseFloat(document.getElementById('adj-bonus').value) || 0;
  const deductions = parseFloat(document.getElementById('adj-deductions').value) || 0;
  const note = document.getElementById('adj-note').value.trim();

  const res = await api.post('payroll.php?action=adjust', {
    employee_id: empId,
    month: currentMonth,
    year: currentYear,
    attendance_allowance: att,
    bonus: bonus,
    deductions: deductions,
    note: note
  });

  if (res.status === 'success') {
    utils.showToast('Đã lưu đánh giá & điều chỉnh lương thành công!', 'success');
    closeAdjustmentModal();
    await loadPayroll();
  } else {
    utils.showToast(res.message || 'Lỗi khi lưu điều chỉnh', 'error');
  }
}

// =========================================================================
// 5. CẤU HÌNH NHANH CHUYÊN CẦN CHO 1 GIÁO VIÊN (1-CHẠM)
// =========================================================================
window.openQuickAttendanceModal = function(empId, currentAtt, empName) {
  document.getElementById('quick-att-emp-id').value = empId;
  document.getElementById('quick-att-emp-name').textContent = empName;
  document.getElementById('quick-att-month-text').textContent = `Kỳ Lương Tháng ${currentMonth} / ${currentYear}`;
  document.getElementById('quick-att-amount').value = currentAtt || '';
  document.getElementById('quick-att-modal').classList.add('active');
  setTimeout(() => {
    document.getElementById('quick-att-amount')?.focus();
    document.getElementById('quick-att-amount')?.select();
  }, 100);
};

window.closeQuickAttendanceModal = function() {
  document.getElementById('quick-att-modal').classList.remove('active');
};

window.setQuickAttAmount = function(val) {
  document.getElementById('quick-att-amount').value = val;
};

window.saveQuickAttendance = async function() {
  const empId = document.getElementById('quick-att-emp-id').value;
  const att = parseFloat(document.getElementById('quick-att-amount').value) || 0;

  utils.showToast('Đang lưu chuyên cần...', 'info');
  const res = await api.post('payroll.php?action=adjust', {
    employee_id: empId,
    month: currentMonth,
    year: currentYear,
    attendance_allowance: att
  });

  if (res.status === 'success') {
    utils.showToast('Đã cập nhật tiền chuyên cần thành công!', 'success');
    closeQuickAttendanceModal();
    await loadPayroll();
  } else {
    utils.showToast(res.message || 'Lỗi khi lưu chuyên cần', 'error');
  }
};

// =========================================================================
// 6. CẤU HÌNH CHUYÊN CẦN HÀNG LOẠT TOÀN TRƯỜNG TRONG THÁNG
// =========================================================================
window.openBatchAttendanceModal = function() {
  document.getElementById('batch-att-title').textContent = `Cấu Hình Chuyên Cần — Tháng ${currentMonth}/${currentYear}`;
  const tbody = document.getElementById('batch-att-tbody');

  if (payrollList.length === 0) {
    tbody.innerHTML = `<tr><td colspan="7" style="text-align: center; padding: 30px; color: var(--color-text-secondary);">Chưa có dữ liệu bảng lương tháng này. Hãy bấm <strong>"Tính Lại Tự Động"</strong> trước.</td></tr>`;
    document.getElementById('batch-att-modal').classList.add('active');
    return;
  }

  tbody.innerHTML = payrollList.map((item, idx) => {
    const empId = item.employee_id || item.id;
    const currentAtt = parseFloat(item.attendance_allowance || 0);
    const daysX = item.total_days_x || item.total_slots || 0;
    const unit = item.salary_type === 'FIXED' ? 'công' : 'ca';

    return `
      <tr>
        <td style="text-align: center; font-size: 12px; color: var(--color-text-secondary);">${idx + 1}</td>
        <td><strong style="color: var(--color-primary);">${item.employee_code}</strong></td>
        <td><strong>${item.full_name}</strong></td>
        <td><span style="font-size: 12px; color: var(--color-text-secondary);">${item.position || '-'}</span></td>
        <td style="text-align: center;"><span class="badge badge-info">${daysX} ${unit}</span></td>
        <td>
          <input type="number" step="50000" class="form-control batch-att-input" 
                 data-emp-id="${empId}" 
                 id="batch-input-${empId}" 
                 value="${currentAtt > 0 ? currentAtt : ''}" 
                 placeholder="0"
                 style="font-weight: 700; color: #1D4ED8; max-width: 150px;">
        </td>
        <td>
          <div style="display: flex; gap: 4px; flex-wrap: wrap;">
            <button type="button" class="btn btn-secondary btn-sm" style="padding: 2px 7px; font-size: 11px;" onclick="setBatchRowAmount(${empId}, 700000)">700k</button>
            <button type="button" class="btn btn-secondary btn-sm" style="padding: 2px 7px; font-size: 11px;" onclick="setBatchRowAmount(${empId}, 500000)">500k</button>
            <button type="button" class="btn btn-secondary btn-sm" style="padding: 2px 7px; font-size: 11px;" onclick="setBatchRowAmount(${empId}, 300000)">300k</button>
            <button type="button" class="btn btn-secondary btn-sm" style="padding: 2px 7px; font-size: 11px; color: #BE123C;" onclick="setBatchRowAmount(${empId}, 0)">0đ</button>
          </div>
        </td>
      </tr>
    `;
  }).join('');

  document.getElementById('batch-att-modal').classList.add('active');
  utils.initIcons();
};

window.closeBatchAttendanceModal = function() {
  document.getElementById('batch-att-modal').classList.remove('active');
};

window.setBatchRowAmount = function(empId, val) {
  const inp = document.getElementById(`batch-input-${empId}`);
  if (inp) {
    inp.value = val;
  }
};

window.saveBatchAttendance = async function() {
  const inputs = document.querySelectorAll('.batch-att-input');
  if (inputs.length === 0) return;

  utils.showToast('Đang lưu chuyên cần cho tất cả giáo viên...', 'info');
  let successCount = 0;

  for (const inp of inputs) {
    const empId = inp.getAttribute('data-emp-id');
    const att = parseFloat(inp.value) || 0;

    const res = await api.post('payroll.php?action=adjust', {
      employee_id: empId,
      month: currentMonth,
      year: currentYear,
      attendance_allowance: att
    });
    if (res.status === 'success') {
      successCount++;
    }
  }

  utils.showToast(`Đã cấu hình thành công chuyên cần cho ${successCount} giáo viên!`, 'success');
  closeBatchAttendanceModal();
  await loadPayroll();
};
