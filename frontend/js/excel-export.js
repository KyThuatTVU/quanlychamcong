/**
 * EXCEL EXPORT MODULE (SỬ DỤNG EXCELJS & FILESAVER)
 * Định dạng chuẩn đẹp chuyên nghiệp: Font chữ, màu nền, đường viền, cỡ chữ, tự động căn lề & định dạng tiền tệ VNĐ
 */

const excelExporter = {
  // Bảng màu & Kiểu dáng chuẩn doanh nghiệp HappyKids
  styles: {
    fontFamily: 'Arial',
    colors: {
      primaryNavy: 'FF1B365D',     // Xanh hải quân thương hiệu
      primaryBlue: 'FF2563EB',     // Xanh chủ đạo
      accentGreen: 'FF059669',     // Xanh lá điểm nhấn
      darkGreen: 'FF065F46',
      lightGreen: 'FFDCFCE7',      // Nền thực nhận
      dangerRed: 'FFBE123C',       // Màu giảm trừ / trễ
      lightPink: 'FFFFE4E6',       // Nền chủ nhật
      zebraLight: 'FFF8FAFC',      // Dòng chẵn
      white: 'FFFFFFFF',
      textMain: 'FF0F172A',
      textMuted: 'FF64748B',
      borderLight: 'FFCBD5E1',
      borderMedium: 'FF94A3B8'
    }
  },

  // Viền mỏng chuẩn
  getThinBorder() {
    const c = this.styles.colors.borderLight;
    return {
      top: { style: 'thin', color: { argb: c } },
      left: { style: 'thin', color: { argb: c } },
      bottom: { style: 'thin', color: { argb: c } },
      right: { style: 'thin', color: { argb: c } }
    };
  },

  /**
   * 1. XUẤT BẢNG LƯƠNG TỔNG HỢP TOÀN BỘ CHI NHÁNH
   * Xuất cả 2 sheet: "Lương GV Cố Định" và "Lương GV Thỉnh Giảng" trong cùng 1 file Excel
   */
  async exportPayroll(branchId, branchName, month, year) {
    if (!window.ExcelJS || !window.saveAs) {
      utils.showToast('Đang nạp thư viện xuất Excel, vui lòng thử lại sau 2 giây...', 'error');
      return;
    }

    utils.showToast('Đang tạo báo cáo Excel bảng lương...', 'info');

    try {
      // Tải dữ liệu lương cả 2 hình thức
      const [resFixed, resHourly] = await Promise.all([
        api.get('payroll.php', { branch_id: branchId, salary_type: 'FIXED', month, year }),
        api.get('payroll.php', { branch_id: branchId, salary_type: 'HOURLY', month, year })
      ]);

      const fixedList = resFixed.data?.payroll_list || (Array.isArray(resFixed.data) ? resFixed.data : []);
      const hourlyList = resHourly.data?.payroll_list || (Array.isArray(resHourly.data) ? resHourly.data : []);

      const workbook = new ExcelJS.Workbook();
      workbook.creator = 'Hệ Thống HappyKids HRM';
      workbook.lastModifiedBy = 'HappyKids Administrator';
      workbook.created = new Date();

      // Tạo Sheet 1: Lương GV Cố Định
      this.buildFixedPayrollSheet(workbook, fixedList, branchName, month, year);

      // Tạo Sheet 2: Lương GV Thỉnh Giảng
      this.buildHourlyPayrollSheet(workbook, hourlyList, branchName, month, year);

      // Xuất file tải về
      const buffer = await workbook.xlsx.writeBuffer();
      const blob = new Blob([buffer], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
      const safeBranch = branchName.replace(/[^a-zA-Z0-9àáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđĐ ]/g, '').trim().replace(/\s+/g, '_');
      const filename = `Bang_Luong_HappyKids_${safeBranch}_T${month}_${year}.xlsx`;

      saveAs(blob, filename);
      utils.showToast('Xuất file Excel bảng lương thành công!', 'success');
    } catch (err) {
      console.error('Lỗi xuất Excel bảng lương:', err);
      utils.showToast('Lỗi khi xuất file Excel bảng lương', 'error');
    }
  },

  // Xây dựng Sheet Lương Cố Định
  buildFixedPayrollSheet(workbook, dataList, branchName, month, year) {
    const sheet = workbook.addWorksheet('GV Lương Cố Định', {
      views: [{ showGridLines: true, state: 'frozen', ySplit: 6 }]
    });

    const S = this.styles;

    // Dòng 1: Tiêu đề công ty/trường
    sheet.mergeCells('A1:L1');
    const r1 = sheet.getCell('A1');
    r1.value = 'TRƯỜNG MẦM NON & TRUNG TÂM PHÁT TRIỂN GIÁO DỤC HAPPYKIDS';
    r1.font = { name: S.fontFamily, size: 11, bold: true, color: { argb: S.colors.primaryNavy } };
    r1.alignment = { vertical: 'middle', horizontal: 'left' };
    sheet.getRow(1).height = 20;

    // Dòng 2: Chi nhánh
    sheet.mergeCells('A2:L2');
    const r2 = sheet.getCell('A2');
    r2.value = `Cơ sở: ${branchName}`;
    r2.font = { name: S.fontFamily, size: 10, italic: true, color: { argb: S.colors.textMuted } };
    r2.alignment = { vertical: 'middle', horizontal: 'left' };
    sheet.getRow(2).height = 18;

    // Dòng 3: Tiêu đề lớn
    sheet.mergeCells('A3:L3');
    const r3 = sheet.getCell('A3');
    r3.value = `BẢNG THANH TOÁN TIỀN LƯƠNG GIÁO VIÊN CỐ ĐỊNH — THÁNG ${month}/${year}`;
    r3.font = { name: S.fontFamily, size: 15, bold: true, color: { argb: S.colors.primaryNavy } };
    r3.alignment = { vertical: 'middle', horizontal: 'center' };
    sheet.getRow(3).height = 32;

    // Dòng 4: Ghi chú quy định công chuẩn
    sheet.mergeCells('A4:L4');
    const r4 = sheet.getCell('A4');
    r4.value = `(Đơn vị tính: VNĐ • Công chuẩn: 26 ngày • Tăng ca: 1.50h/ca • Phụ cấp cơm: 25.000đ/ngày công X)`;
    r4.font = { name: S.fontFamily, size: 9.5, italic: true, color: { argb: S.colors.textMuted } };
    r4.alignment = { vertical: 'middle', horizontal: 'center' };
    sheet.getRow(4).height = 18;

    sheet.getRow(5).height = 8; // Dòng trống đệm

    // Dòng 6: TIÊU ĐỀ BẢNG (HEADERS)
    const headers = [
      'STT', 'Mã GV', 'Họ và Tên', 'Lương Cơ Bản', 'Ngày Công (X)',
      'Lương Theo Công', 'Tiền Tăng Ca', 'Phụ Cấp Bán Trú', 'Phụ Cấp Cơm',
      'Thưởng', 'Khấu Trừ', 'THỰC NHẬN'
    ];

    const hRow = sheet.getRow(6);
    hRow.height = 30;
    headers.forEach((h, i) => {
      const cell = hRow.getCell(i + 1);
      cell.value = h;
      cell.font = { name: S.fontFamily, size: 10.5, bold: true, color: { argb: S.colors.white } };
      cell.fill = {
        type: 'pattern',
        pattern: 'solid',
        fgColor: { argb: (i === 11) ? S.colors.accentGreen : S.colors.primaryNavy }
      };
      cell.alignment = { vertical: 'middle', horizontal: 'center', wrapText: true };
      cell.border = this.getThinBorder();
    });

    // Dữ liệu dòng
    let curRowIdx = 7;
    let sumBase = 0, sumSalaryDays = 0, sumOt = 0, sumBoard = 0, sumLunch = 0, sumBonus = 0, sumDeduct = 0, sumNet = 0;

    dataList.forEach((item, idx) => {
      const row = sheet.getRow(curRowIdx);
      row.height = 24;

      const baseSalary = parseFloat(item.base_salary || 0);
      const daysX = parseFloat(item.total_days_x || 0);
      const salaryByDays = parseFloat(item.salary_by_days || 0);
      const otPay = parseFloat(item.ot_pay || 0);
      const boardPay = parseFloat(item.boarding_pay || item.boarding_allowance || 0);
      const lunchPay = parseFloat(item.lunch_allowance || 0);
      const bonus = parseFloat(item.bonus || 0);
      const deductions = parseFloat(item.deductions || 0);
      const netSalary = parseFloat(item.net_salary || 0);

      sumBase += baseSalary;
      sumSalaryDays += salaryByDays;
      sumOt += otPay;
      sumBoard += boardPay;
      sumLunch += lunchPay;
      sumBonus += bonus;
      sumDeduct += deductions;
      sumNet += netSalary;

      const isEven = (idx % 2 === 1);
      const bgArgb = isEven ? S.colors.zebraLight : S.colors.white;

      // Gán giá trị và định dạng từng ô
      const values = [
        idx + 1,
        item.employee_code || `NV${String(item.employee_id).padStart(3, '0')}`,
        item.full_name || '',
        baseSalary,
        daysX,
        salaryByDays,
        otPay,
        boardPay,
        lunchPay,
        bonus,
        deductions,
        netSalary
      ];

      values.forEach((val, colIdx) => {
        const cell = row.getCell(colIdx + 1);
        cell.value = val;
        cell.font = { name: S.fontFamily, size: 10, color: { argb: S.colors.textMain } };
        cell.border = this.getThinBorder();
        cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: bgArgb } };

        // Căn lề và định dạng số
        if (colIdx === 0) {
          cell.alignment = { vertical: 'middle', horizontal: 'center' };
        } else if (colIdx === 1) {
          cell.alignment = { vertical: 'middle', horizontal: 'center' };
          cell.font = { name: S.fontFamily, size: 10, bold: true, color: { argb: S.colors.primaryBlue } };
        } else if (colIdx === 2) {
          cell.alignment = { vertical: 'middle', horizontal: 'left' };
          cell.font = { name: S.fontFamily, size: 10, bold: true };
        } else if (colIdx === 4) {
          cell.alignment = { vertical: 'middle', horizontal: 'center' };
          cell.numFmt = '0.0';
        } else if (colIdx === 11) {
          // Thực nhận
          cell.alignment = { vertical: 'middle', horizontal: 'right' };
          cell.numFmt = '#,##0 "₫"';
          cell.font = { name: S.fontFamily, size: 10.5, bold: true, color: { argb: S.colors.darkGreen } };
          cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: S.colors.lightGreen } };
        } else {
          // Các cột số tiền
          cell.alignment = { vertical: 'middle', horizontal: 'right' };
          cell.numFmt = '#,##0 "₫"';
          if (colIdx === 9 && val > 0) {
            cell.font = { name: S.fontFamily, size: 10, color: { argb: S.colors.accentGreen } };
          }
          if (colIdx === 10 && val > 0) {
            cell.font = { name: S.fontFamily, size: 10, color: { argb: S.colors.dangerRed } };
          }
        }
      });

      curRowIdx++;
    });

    // DÒNG TỔNG CỘNG (TOTAL ROW)
    const totRow = sheet.getRow(curRowIdx);
    totRow.height = 28;
    sheet.mergeCells(`A${curRowIdx}:C${curRowIdx}`);
    const totLabel = totRow.getCell(1);
    totLabel.value = 'TỔNG CỘNG TOÀN BỘ';
    totLabel.alignment = { vertical: 'middle', horizontal: 'center' };
    totLabel.font = { name: S.fontFamily, size: 11, bold: true, color: { argb: S.colors.primaryNavy } };

    const totalCells = [
      { col: 4, val: sumBase },
      { col: 5, val: '' },
      { col: 6, val: sumSalaryDays },
      { col: 7, val: sumOt },
      { col: 8, val: sumBoard },
      { col: 9, val: sumLunch },
      { col: 10, val: sumBonus },
      { col: 11, val: sumDeduct },
      { col: 12, val: sumNet }
    ];

    // Áp dụng định dạng dòng tổng
    for (let c = 1; c <= 12; c++) {
      const cell = totRow.getCell(c);
      cell.border = {
        top: { style: 'thin', color: { argb: S.colors.borderMedium } },
        bottom: { style: 'double', color: { argb: S.colors.primaryNavy } },
        left: { style: 'thin', color: { argb: S.colors.borderLight } },
        right: { style: 'thin', color: { argb: S.colors.borderLight } }
      };
      cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFE0F2FE' } }; // Light Sky Blue
    }

    totalCells.forEach(tc => {
      if (tc.val !== '') {
        const cell = totRow.getCell(tc.col);
        cell.value = tc.val;
        cell.numFmt = '#,##0 "₫"';
        cell.alignment = { vertical: 'middle', horizontal: 'right' };
        cell.font = { name: S.fontFamily, size: 11, bold: true, color: (tc.col === 12 ? S.colors.darkGreen : S.colors.primaryNavy) };
      }
    });

    // Tự động căn chỉnh độ rộng cột tối ưu
    const colWidths = [6, 12, 28, 16, 14, 16, 14, 16, 14, 14, 14, 20];
    colWidths.forEach((w, i) => {
      sheet.getColumn(i + 1).width = w;
    });

    // Chữ ký xác nhận ở cuối
    const signRowIdx = curRowIdx + 2;
    sheet.getCell(`C${signRowIdx}`).value = 'Người Lập Bảng';
    sheet.getCell(`C${signRowIdx}`).font = { name: S.fontFamily, size: 10, bold: true };
    sheet.getCell(`C${signRowIdx}`).alignment = { horizontal: 'center' };

    sheet.getCell(`L${signRowIdx}`).value = 'Ban Giám Hiệu Phê Duyệt';
    sheet.getCell(`L${signRowIdx}`).font = { name: S.fontFamily, size: 10, bold: true };
    sheet.getCell(`L${signRowIdx}`).alignment = { horizontal: 'center' };
  },

  // Xây dựng Sheet Lương GV Thỉnh Giảng (Dạy theo giờ)
  buildHourlyPayrollSheet(workbook, dataList, branchName, month, year) {
    const sheet = workbook.addWorksheet('GV Dạy Theo Giờ', {
      views: [{ showGridLines: true, state: 'frozen', ySplit: 6 }]
    });

    const S = this.styles;

    // Tiêu đề
    sheet.mergeCells('A1:J1');
    const r1 = sheet.getCell('A1');
    r1.value = 'TRƯỜNG MẦM NON & TRUNG TÂM PHÁT TRIỂN GIÁO DỤC HAPPYKIDS';
    r1.font = { name: S.fontFamily, size: 11, bold: true, color: { argb: S.colors.primaryNavy } };
    r1.alignment = { vertical: 'middle', horizontal: 'left' };
    sheet.getRow(1).height = 20;

    sheet.mergeCells('A2:J2');
    const r2 = sheet.getCell('A2');
    r2.value = `Cơ sở: ${branchName}`;
    r2.font = { name: S.fontFamily, size: 10, italic: true, color: { argb: S.colors.textMuted } };
    r2.alignment = { vertical: 'middle', horizontal: 'left' };
    sheet.getRow(2).height = 18;

    sheet.mergeCells('A3:J3');
    const r3 = sheet.getCell('A3');
    r3.value = `BẢNG THANH TOÁN LƯƠNG GIÁO VIÊN THỈNH GIẢNG (THEO GIỜ) — THÁNG ${month}/${year}`;
    r3.font = { name: S.fontFamily, size: 14, bold: true, color: { argb: S.colors.primaryNavy } };
    r3.alignment = { vertical: 'middle', horizontal: 'center' };
    sheet.getRow(3).height = 32;

    sheet.mergeCells('A4:J4');
    const r4 = sheet.getCell('A4');
    r4.value = `(Đơn vị tính: VNĐ • Chuẩn 90 phút = 1 ca dạy chuyên biệt)`;
    r4.font = { name: S.fontFamily, size: 9.5, italic: true, color: { argb: S.colors.textMuted } };
    r4.alignment = { vertical: 'middle', horizontal: 'center' };
    sheet.getRow(4).height = 18;

    sheet.getRow(5).height = 8;

    // Headers
    const headers = [
      'STT', 'Mã GV', 'Họ và Tên', 'Số Ca Dạy (90p)', 'Đơn Giá / Ca',
      'Tiền Dạy Ca', 'Phụ Cấp Bán Trú', 'Thưởng', 'Khấu Trừ', 'THỰC NHẬN'
    ];

    const hRow = sheet.getRow(6);
    hRow.height = 30;
    headers.forEach((h, i) => {
      const cell = hRow.getCell(i + 1);
      cell.value = h;
      cell.font = { name: S.fontFamily, size: 10.5, bold: true, color: { argb: S.colors.white } };
      cell.fill = {
        type: 'pattern',
        pattern: 'solid',
        fgColor: { argb: (i === 9) ? S.colors.accentGreen : S.colors.primaryNavy }
      };
      cell.alignment = { vertical: 'middle', horizontal: 'center', wrapText: true };
      cell.border = this.getThinBorder();
    });

    let curRowIdx = 7;
    let sumSlots = 0, sumSalarySlots = 0, sumBoard = 0, sumBonus = 0, sumDeduct = 0, sumNet = 0;

    dataList.forEach((item, idx) => {
      const row = sheet.getRow(curRowIdx);
      row.height = 24;

      const slots = parseFloat(item.total_slots || 0);
      const rate = parseFloat(item.hourly_rate || item.emp_hourly_rate || 120000);
      const salarySlots = parseFloat(item.salary_by_slots || (slots * rate));
      const boardPay = parseFloat(item.boarding_pay || 0);
      const bonus = parseFloat(item.bonus || 0);
      const deductions = parseFloat(item.deductions || 0);
      const netSalary = parseFloat(item.net_salary || 0);

      sumSlots += slots;
      sumSalarySlots += salarySlots;
      sumBoard += boardPay;
      sumBonus += bonus;
      sumDeduct += deductions;
      sumNet += netSalary;

      const isEven = (idx % 2 === 1);
      const bgArgb = isEven ? S.colors.zebraLight : S.colors.white;

      const values = [
        idx + 1,
        item.employee_code || `NV${String(item.employee_id).padStart(3, '0')}`,
        item.full_name || '',
        slots,
        rate,
        salarySlots,
        boardPay,
        bonus,
        deductions,
        netSalary
      ];

      values.forEach((val, colIdx) => {
        const cell = row.getCell(colIdx + 1);
        cell.value = val;
        cell.font = { name: S.fontFamily, size: 10, color: { argb: S.colors.textMain } };
        cell.border = this.getThinBorder();
        cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: bgArgb } };

        if (colIdx === 0) {
          cell.alignment = { vertical: 'middle', horizontal: 'center' };
        } else if (colIdx === 1) {
          cell.alignment = { vertical: 'middle', horizontal: 'center' };
          cell.font = { name: S.fontFamily, size: 10, bold: true, color: { argb: S.colors.primaryBlue } };
        } else if (colIdx === 2) {
          cell.alignment = { vertical: 'middle', horizontal: 'left' };
          cell.font = { name: S.fontFamily, size: 10, bold: true };
        } else if (colIdx === 3) {
          cell.alignment = { vertical: 'middle', horizontal: 'center' };
          cell.numFmt = '0.0';
        } else if (colIdx === 9) {
          cell.alignment = { vertical: 'middle', horizontal: 'right' };
          cell.numFmt = '#,##0 "₫"';
          cell.font = { name: S.fontFamily, size: 10.5, bold: true, color: { argb: S.colors.darkGreen } };
          cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: S.colors.lightGreen } };
        } else {
          cell.alignment = { vertical: 'middle', horizontal: 'right' };
          cell.numFmt = '#,##0 "₫"';
        }
      });

      curRowIdx++;
    });

    // Dòng tổng cộng
    const totRow = sheet.getRow(curRowIdx);
    totRow.height = 28;
    sheet.mergeCells(`A${curRowIdx}:C${curRowIdx}`);
    const totLabel = totRow.getCell(1);
    totLabel.value = 'TỔNG CỘNG TOÀN BỘ';
    totLabel.alignment = { vertical: 'middle', horizontal: 'center' };
    totLabel.font = { name: S.fontFamily, size: 11, bold: true, color: { argb: S.colors.primaryNavy } };

    for (let c = 1; c <= 10; c++) {
      const cell = totRow.getCell(c);
      cell.border = {
        top: { style: 'thin', color: { argb: S.colors.borderMedium } },
        bottom: { style: 'double', color: { argb: S.colors.primaryNavy } },
        left: { style: 'thin', color: { argb: S.colors.borderLight } },
        right: { style: 'thin', color: { argb: S.colors.borderLight } }
      };
      cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFE0F2FE' } };
    }

    totRow.getCell(4).value = sumSlots;
    totRow.getCell(4).numFmt = '0.0';
    totRow.getCell(4).alignment = { vertical: 'middle', horizontal: 'center' };
    totRow.getCell(4).font = { name: S.fontFamily, size: 11, bold: true };

    totRow.getCell(6).value = sumSalarySlots;
    totRow.getCell(6).numFmt = '#,##0 "₫"';
    totRow.getCell(6).alignment = { vertical: 'middle', horizontal: 'right' };
    totRow.getCell(6).font = { name: S.fontFamily, size: 11, bold: true };

    totRow.getCell(7).value = sumBoard;
    totRow.getCell(7).numFmt = '#,##0 "₫"';
    totRow.getCell(7).alignment = { vertical: 'middle', horizontal: 'right' };

    totRow.getCell(8).value = sumBonus;
    totRow.getCell(8).numFmt = '#,##0 "₫"';
    totRow.getCell(8).alignment = { vertical: 'middle', horizontal: 'right' };

    totRow.getCell(9).value = sumDeduct;
    totRow.getCell(9).numFmt = '#,##0 "₫"';
    totRow.getCell(9).alignment = { vertical: 'middle', horizontal: 'right' };

    totRow.getCell(10).value = sumNet;
    totRow.getCell(10).numFmt = '#,##0 "₫"';
    totRow.getCell(10).alignment = { vertical: 'middle', horizontal: 'right' };
    totRow.getCell(10).font = { name: S.fontFamily, size: 11.5, bold: true, color: { argb: S.colors.darkGreen } };

    const colWidths = [6, 12, 28, 16, 16, 18, 18, 14, 14, 20];
    colWidths.forEach((w, i) => {
      sheet.getColumn(i + 1).width = w;
    });
  },

  /**
   * 2. XUẤT MA TRẬN BẢNG CHẤM CÔNG THÁNG (CHUẨN FORM EXCEL TRƯỜNG)
   */
  async exportAttendanceMatrix(branchId, branchName, month, year, salaryType) {
    if (!window.ExcelJS || !window.saveAs) {
      utils.showToast('Đang nạp thư viện xuất Excel, vui lòng thử lại sau 2 giây...', 'error');
      return;
    }

    utils.showToast('Đang tạo báo cáo Excel chấm công ma trận...', 'info');

    try {
      const res = await api.get('attendance.php', {
        action: 'month_matrix',
        branch_id: branchId,
        salary_type: salaryType,
        month,
        year
      });

      const matrixData = res.data;
      if (!matrixData || !matrixData.employees) {
        utils.showToast('Không có dữ liệu chấm công để xuất!', 'error');
        return;
      }

      const workbook = new ExcelJS.Workbook();
      workbook.creator = 'HappyKids HRM';
      const typeLabel = salaryType === 'FIXED' ? 'Lương Cố Định' : 'Dạy Theo Giờ';
      const sheet = workbook.addWorksheet(`Chấm Công ${typeLabel}`, {
        views: [{ showGridLines: true, state: 'frozen', xSplit: 3, ySplit: 6 }]
      });

      const S = this.styles;
      const daysInMonth = matrixData.days_in_month || 31;
      const totalCols = daysInMonth + (salaryType === 'FIXED' ? 6 : 5);

      // Header trường
      sheet.mergeCells(1, 1, 1, 6);
      sheet.getCell('A1').value = 'TRƯỜNG MẦM NON & TRUNG TÂM PHÁT TRIỂN GIÁO DỤC HAPPYKIDS';
      sheet.getCell('A1').font = { name: S.fontFamily, size: 11, bold: true, color: { argb: S.colors.primaryNavy } };

      sheet.mergeCells(2, 1, 2, 6);
      sheet.getCell('A2').value = `Cơ sở: ${branchName}`;
      sheet.getCell('A2').font = { name: S.fontFamily, size: 10, italic: true, color: { argb: S.colors.textMuted } };

      sheet.mergeCells(3, 1, 3, totalCols);
      sheet.getCell('A3').value = `BẢNG CHẤM CÔNG MA TRẬN (${typeLabel.toUpperCase()}) — THÁNG ${month}/${year}`;
      sheet.getCell('A3').font = { name: S.fontFamily, size: 14, bold: true, color: { argb: S.colors.primaryNavy } };
      sheet.getCell('A3').alignment = { vertical: 'middle', horizontal: 'center' };
      sheet.getRow(3).height = 28;

      sheet.getRow(4).height = 6;

      // Hàng 5: Số ngày (1..31)
      // Hàng 6: Thứ trong tuần (T2, T3.. CN)
      const r5 = sheet.getRow(5);
      const r6 = sheet.getRow(6);
      r5.height = 20;
      r6.height = 18;

      // Cột 1-3 cố định
      sheet.mergeCells('A5:A6');
      sheet.getCell('A5').value = 'STT';
      sheet.mergeCells('B5:B6');
      sheet.getCell('B5').value = 'Mã GV';
      sheet.mergeCells('C5:C6');
      sheet.getCell('C5').value = 'Họ và Tên';

      ['A5', 'B5', 'C5'].forEach(pos => {
        const c = sheet.getCell(pos);
        c.font = { name: S.fontFamily, size: 10, bold: true, color: { argb: S.colors.white } };
        c.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: S.colors.primaryNavy } };
        c.alignment = { vertical: 'middle', horizontal: 'center' };
        c.border = this.getThinBorder();
      });

      // Ngày 1 đến ngày cuối tháng
      for (let d = 1; d <= daysInMonth; d++) {
        const dateStr = `${year}-${String(month).padStart(2, '0')}-${String(d).padStart(2, '0')}`;
        const dayOfWeek = new Date(dateStr).getDay();
        const isSun = (dayOfWeek === 0);
        const dayText = isSun ? 'CN' : `T${dayOfWeek + 1}`;
        const colIdx = d + 3;

        const cTop = r5.getCell(colIdx);
        cTop.value = d;
        cTop.font = { name: S.fontFamily, size: 10, bold: true, color: { argb: isSun ? S.colors.dangerRed : S.colors.white } };
        cTop.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: isSun ? S.colors.lightPink : S.colors.primaryNavy } };
        cTop.alignment = { vertical: 'middle', horizontal: 'center' };
        cTop.border = this.getThinBorder();

        const cBot = r6.getCell(colIdx);
        cBot.value = dayText;
        cBot.font = { name: S.fontFamily, size: 8.5, bold: isSun, color: { argb: isSun ? S.colors.dangerRed : S.colors.white } };
        cBot.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: isSun ? S.colors.lightPink : S.colors.primaryNavy } };
        cBot.alignment = { vertical: 'middle', horizontal: 'center' };
        cBot.border = this.getThinBorder();

        sheet.getColumn(colIdx).width = 5.2; // Độ rộng ô ngày nhỏ gọn
      }

      // Các cột tổng hợp cuối bảng
      let sumColIdx = daysInMonth + 4;
      if (salaryType === 'FIXED') {
        sheet.mergeCells(5, sumColIdx, 6, sumColIdx);
        sheet.getCell(5, sumColIdx).value = 'Tổng Công (X)';
        sheet.mergeCells(5, sumColIdx + 1, 6, sumColIdx + 1);
        sheet.getCell(5, sumColIdx + 1).value = 'Tăng Ca (h)';
        sheet.mergeCells(5, sumColIdx + 2, 6, sumColIdx + 2);
        sheet.getCell(5, sumColIdx + 2).value = 'Trễ (phút)';

        for (let i = 0; i < 3; i++) {
          const c = sheet.getCell(5, sumColIdx + i);
          c.font = { name: S.fontFamily, size: 9.5, bold: true, color: { argb: S.colors.white } };
          c.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: S.colors.accentGreen } };
          c.alignment = { vertical: 'middle', horizontal: 'center', wrapText: true };
          c.border = this.getThinBorder();
          sheet.getColumn(sumColIdx + i).width = 12;
        }
      } else {
        sheet.mergeCells(5, sumColIdx, 6, sumColIdx);
        sheet.getCell(5, sumColIdx).value = 'Tổng Ca';
        sheet.mergeCells(5, sumColIdx + 1, 6, sumColIdx + 1);
        sheet.getCell(5, sumColIdx + 1).value = 'Bán Trú';

        for (let i = 0; i < 2; i++) {
          const c = sheet.getCell(5, sumColIdx + i);
          c.font = { name: S.fontFamily, size: 9.5, bold: true, color: { argb: S.colors.white } };
          c.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: S.colors.accentGreen } };
          c.alignment = { vertical: 'middle', horizontal: 'center', wrapText: true };
          c.border = this.getThinBorder();
          sheet.getColumn(sumColIdx + i).width = 12;
        }
      }

      sheet.getColumn(1).width = 6;
      sheet.getColumn(2).width = 11;
      sheet.getColumn(3).width = 24;

      // Điền từng dòng nhân viên
      let rowIdx = 7;
      matrixData.employees.forEach((emp, eIdx) => {
        const row = sheet.getRow(rowIdx);
        row.height = 22;

        row.getCell(1).value = eIdx + 1;
        row.getCell(1).alignment = { vertical: 'middle', horizontal: 'center' };
        row.getCell(1).border = this.getThinBorder();

        row.getCell(2).value = emp.employee_code || '';
        row.getCell(2).alignment = { vertical: 'middle', horizontal: 'center' };
        row.getCell(2).font = { name: S.fontFamily, size: 9.5, bold: true, color: { argb: S.colors.primaryBlue } };
        row.getCell(2).border = this.getThinBorder();

        row.getCell(3).value = emp.full_name || '';
        row.getCell(3).alignment = { vertical: 'middle', horizontal: 'left' };
        row.getCell(3).font = { name: S.fontFamily, size: 9.5, bold: true };
        row.getCell(3).border = this.getThinBorder();

        let totalX = 0, totalOt = 0, totalLate = 0, totalSlots = 0, totalBt = 0;

        for (let d = 1; d <= daysInMonth; d++) {
          const colIdx = d + 3;
          const attDays = emp.attendance_days || emp.attendance || {};
          const att = attDays[d] || attDays[String(d)] || null;
          const cell = row.getCell(colIdx);
          cell.border = this.getThinBorder();
          cell.alignment = { vertical: 'middle', horizontal: 'center' };

          const dateStr = `${year}-${String(month).padStart(2, '0')}-${String(d).padStart(2, '0')}`;
          const isSun = (new Date(dateStr).getDay() === 0);
          if (isSun) {
            cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFFFF1F2' } };
          }

          if (att) {
            if (salaryType === 'FIXED') {
              const sym = String(att.salary_symbol || att.work_symbol || '').trim();
              if (sym) {
                cell.value = sym;
                if (sym === 'X') {
                  totalX += 1;
                  cell.font = { name: S.fontFamily, size: 9.5, bold: true, color: { argb: S.colors.textMain } };
                } else if (sym === 'X+TC' || sym === 'X + TC') {
                  totalX += 1;
                  let otH = parseFloat(att.ot_salary_hours || att.ot_hours || 0);
                  if (otH <= 0) otH = 1.5;
                  totalOt += otH;
                  cell.font = { name: S.fontFamily, size: 9, bold: true, color: { argb: S.colors.darkGreen } };
                  cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFECFDF5' } };
                } else if (sym === 'P') {
                  cell.font = { name: S.fontFamily, size: 9, bold: true, color: { argb: 'FFD97706' } };
                  cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFFEF3C7' } };
                } else if (sym === 'K' || sym === 'Thiếu' || sym === 'V') {
                  cell.font = { name: S.fontFamily, size: 9, bold: true, color: { argb: S.colors.dangerRed } };
                  cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFFEE2E2' } };
                } else {
                  cell.font = { name: S.fontFamily, size: 9, bold: true };
                }
                const late = parseInt(att.late_minutes || 0);
                if (late > 0) totalLate += late;
              } else {
                cell.value = isSun ? '' : '-';
                cell.font = { name: S.fontFamily, size: 8.5, color: { argb: S.colors.textMuted } };
              }
            } else {
              // GV Dạy theo giờ (HOURLY)
              const slots = parseFloat(att.actual_slots !== undefined && att.actual_slots !== null ? att.actual_slots : (att.total_slots || 0));
              const hasBt = parseInt(att.has_boarding || 0) === 1;

              if (slots > 0 && hasBt) {
                cell.value = `${slots}+BT`;
                totalSlots += slots;
                totalBt += 1;
                cell.font = { name: S.fontFamily, size: 9, bold: true, color: { argb: S.colors.primaryBlue } };
                cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFEFF6FF' } };
              } else if (slots > 0) {
                cell.value = `${slots}`;
                totalSlots += slots;
                cell.font = { name: S.fontFamily, size: 9, bold: true, color: { argb: S.colors.textMain } };
              } else if (hasBt) {
                cell.value = 'BT';
                totalBt += 1;
                cell.font = { name: S.fontFamily, size: 9, bold: true, color: { argb: S.colors.darkGreen } };
                cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: 'FFECFDF5' } };
              } else if (att.work_symbol) {
                cell.value = att.work_symbol;
                cell.font = { name: S.fontFamily, size: 9 };
              } else {
                cell.value = isSun ? '' : '-';
                cell.font = { name: S.fontFamily, size: 8.5, color: { argb: S.colors.textMuted } };
              }
            }
          } else {
            cell.value = isSun ? '' : '-';
            cell.font = { name: S.fontFamily, size: 8.5, color: { argb: S.colors.textMuted } };
          }
        }

        // Cột tổng hợp
        if (salaryType === 'FIXED') {
          const cX = row.getCell(sumColIdx);
          cX.value = totalX;
          cX.alignment = { vertical: 'middle', horizontal: 'center' };
          cX.font = { name: S.fontFamily, size: 10, bold: true, color: { argb: S.colors.accentGreen } };
          cX.border = this.getThinBorder();

          const cOt = row.getCell(sumColIdx + 1);
          cOt.value = totalOt;
          cOt.numFmt = '0.0';
          cOt.alignment = { vertical: 'middle', horizontal: 'center' };
          cOt.font = { name: S.fontFamily, size: 9.5, bold: true };
          cOt.border = this.getThinBorder();

          const cLate = row.getCell(sumColIdx + 2);
          cLate.value = totalLate > 0 ? totalLate : '-';
          cLate.alignment = { vertical: 'middle', horizontal: 'center' };
          cLate.font = { name: S.fontFamily, size: 9.5, color: { argb: totalLate > 0 ? S.colors.dangerRed : S.colors.textMuted } };
          cLate.border = this.getThinBorder();
        } else {
          const cSlot = row.getCell(sumColIdx);
          cSlot.value = totalSlots;
          cSlot.numFmt = '0.0';
          cSlot.alignment = { vertical: 'middle', horizontal: 'center' };
          cSlot.font = { name: S.fontFamily, size: 10, bold: true, color: { argb: S.colors.accentGreen } };
          cSlot.border = this.getThinBorder();

          const cBt = row.getCell(sumColIdx + 1);
          cBt.value = totalBt;
          cBt.alignment = { vertical: 'middle', horizontal: 'center' };
          cBt.font = { name: S.fontFamily, size: 9.5 };
          cBt.border = this.getThinBorder();
        }

        rowIdx++;
      });

      // Bảng chú thích ký hiệu ở chân bảng
      const legendRowIdx = rowIdx + 1;
      sheet.mergeCells(legendRowIdx, 1, legendRowIdx, totalCols);
      const legCell = sheet.getCell(legendRowIdx, 1);
      legCell.value = salaryType === 'FIXED' 
        ? 'Ghi chú ký hiệu: [ X ]: Làm đủ ngày (1.0 công)  •  [ X+TC ]: Làm ngày + Tăng ca (1.50h)  •  [ P ]: Nghỉ phép  •  [ K / Thiếu ]: Vắng không phép  •  [ CN ]: Chủ nhật nghỉ cuối tuần'
        : 'Ghi chú ký hiệu: [ Số ]: Số ca dạy 90 phút (1 ca = 90p)  •  [ +BT ]: Có phụ cấp buổi trưa bán trú  •  [ CN ]: Chủ nhật';
      legCell.font = { name: S.fontFamily, size: 9, italic: true, color: { argb: S.colors.textMuted } };
      sheet.getRow(legendRowIdx).height = 22;

      // Xuất file
      const buffer = await workbook.xlsx.writeBuffer();
      const blob = new Blob([buffer], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
      const safeBranch = branchName.replace(/[^a-zA-Z0-9àáạảãâầấậẩẫăằắặẳẵèéẹẻẽêềếệểễìíịỉĩòóọỏõôồốộổỗơờớợởỡùúụủũưừứựửữỳýỵỷỹđĐ ]/g, '').trim().replace(/\s+/g, '_');
      const filename = `Cham_Cong_Ma_Tran_${safeBranch}_T${month}_${year}.xlsx`;

      saveAs(blob, filename);
      utils.showToast('Xuất file Excel chấm công ma trận thành công!', 'success');
    } catch (err) {
      console.error('Lỗi xuất Excel chấm công:', err);
      utils.showToast('Lỗi khi xuất file Excel chấm công', 'error');
    }
  },

  /**
   * 3. XUẤT DANH SÁCH NHÂN SỰ / GIÁO VIÊN
   */
  async exportEmployees(branchId, branchName, employeeList) {
    if (!window.ExcelJS || !window.saveAs) {
      utils.showToast('Đang nạp thư viện xuất Excel...', 'error');
      return;
    }

    try {
      const workbook = new ExcelJS.Workbook();
      const sheet = workbook.addWorksheet('Danh Sách Nhân Sự', {
        views: [{ showGridLines: true, state: 'frozen', ySplit: 5 }]
      });

      const S = this.styles;

      sheet.mergeCells('A1:J1');
      sheet.getCell('A1').value = 'TRƯỜNG MẦM NON & TRUNG TÂM PHÁT TRIỂN GIÁO DỤC HAPPYKIDS';
      sheet.getCell('A1').font = { name: S.fontFamily, size: 11, bold: true, color: { argb: S.colors.primaryNavy } };

      sheet.mergeCells('A2:J2');
      sheet.getCell('A2').value = `DANH SÁCH HỒ SƠ GIÁO VIÊN & NHÂN VIÊN — ${branchName.toUpperCase()}`;
      sheet.getCell('A2').font = { name: S.fontFamily, size: 14, bold: true, color: { argb: S.colors.primaryNavy } };
      sheet.getCell('A2').alignment = { vertical: 'middle', horizontal: 'center' };
      sheet.getRow(2).height = 28;

      sheet.getRow(3).height = 6;

      const headers = [
        'STT', 'Mã NV', 'Họ và Tên', 'Chức Vụ', 'Hình Thức Lương',
        'Lương Cơ Bản', 'Đơn Giá Tiết', 'Đơn Giá Tăng Ca', 'Số Điện Thoại', 'Trạng Thái'
      ];

      const hRow = sheet.getRow(4);
      hRow.height = 28;
      headers.forEach((h, i) => {
        const cell = hRow.getCell(i + 1);
        cell.value = h;
        cell.font = { name: S.fontFamily, size: 10, bold: true, color: { argb: S.colors.white } };
        cell.fill = { type: 'pattern', pattern: 'solid', fgColor: { argb: S.colors.primaryNavy } };
        cell.alignment = { vertical: 'middle', horizontal: 'center' };
        cell.border = this.getThinBorder();
      });

      employeeList.forEach((emp, idx) => {
        const row = sheet.getRow(idx + 5);
        row.height = 22;

        const isFixed = emp.salary_type === 'FIXED';
        const typeStr = isFixed ? 'Lương cố định' : 'Dạy theo giờ';

        const values = [
          idx + 1,
          emp.employee_code || '',
          emp.full_name || '',
          emp.position || '',
          typeStr,
          parseFloat(emp.base_salary || 0),
          parseFloat(emp.hourly_rate || 0),
          parseFloat(emp.overtime_rate || 0),
          emp.phone || '',
          emp.status === 'ACTIVE' ? 'Đang làm việc' : 'Đã nghỉ việc'
        ];

        values.forEach((v, cIdx) => {
          const cell = row.getCell(cIdx + 1);
          cell.value = v;
          cell.font = { name: S.fontFamily, size: 9.5 };
          cell.border = this.getThinBorder();

          if (cIdx === 0 || cIdx === 1 || cIdx === 8 || cIdx === 9) {
            cell.alignment = { vertical: 'middle', horizontal: 'center' };
          } else if (cIdx === 5 || cIdx === 6 || cIdx === 7) {
            cell.alignment = { vertical: 'middle', horizontal: 'right' };
            cell.numFmt = '#,##0 "₫"';
          } else {
            cell.alignment = { vertical: 'middle', horizontal: 'left' };
          }
        });
      });

      const colWidths = [6, 12, 26, 18, 16, 16, 15, 16, 15, 15];
      colWidths.forEach((w, i) => {
        sheet.getColumn(i + 1).width = w;
      });

      const buffer = await workbook.xlsx.writeBuffer();
      const blob = new Blob([buffer], { type: 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' });
      const filename = `Danh_Sach_Nhan_Su_HappyKids_${branchId === 1 ? 'CangLong' : 'TanNhut'}.xlsx`;

      saveAs(blob, filename);
      utils.showToast('Xuất file Excel danh sách nhân sự thành công!', 'success');
    } catch (err) {
      console.error('Lỗi xuất Excel nhân sự:', err);
      utils.showToast('Lỗi khi xuất file Excel nhân sự', 'error');
    }
  }
};
