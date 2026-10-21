/**
 * TIỆN ÍCH CHUNG (UTILS)
 */

const utils = {
  // Định dạng tiền tệ VNĐ: 7500000 -> "7.500.000 ₫"
  formatCurrency(amount) {
    if (isNaN(amount) || amount === null) return '0 ₫';
    return new Intl.NumberFormat('vi-VN').format(Math.round(amount)) + ' ₫';
  },

  // Định dạng ngày: "2026-10-20" -> "20/10/2026"
  formatDate(dateStr) {
    if (!dateStr) return '';
    const [y, m, d] = dateStr.split('-');
    return `${d}/${m}/${y}`;
  },

  // Toast thông báo góc phải màn hình
  showToast(message, type = 'success') {
    let container = document.querySelector('.toast-container');
    if (!container) {
      container = document.createElement('div');
      container.className = 'toast-container';
      document.body.appendChild(container);
    }

    const toast = document.createElement('div');
    toast.className = `toast ${type}`;
    toast.innerHTML = `
      <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
        ${type === 'success' 
          ? '<path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline>'
          : '<circle cx="12" cy="12" r="10"></circle><line x1="15" y1="9" x2="9" y2="15"></line><line x1="9" y1="9" x2="15" y2="15"></line>'}
      </svg>
      <span>${message}</span>
    `;

    container.appendChild(toast);
    setTimeout(() => {
      toast.style.opacity = '0';
      toast.style.transform = 'translateY(10px)';
      toast.style.transition = 'all 0.3s ease';
      setTimeout(() => toast.remove(), 300);
    }, 3200);
  },

  // Lấy chi nhánh hiện tại đang được chọn (lưu trong localStorage)
  getCurrentBranchId() {
    return parseInt(localStorage.getItem('happykids_branch_id') || '1');
  },

  setCurrentBranchId(id) {
    localStorage.setItem('happykids_branch_id', id);
  },

  // Khởi tạo Lucide icons nếu thư viện đã nạp
  initIcons() {
    if (window.lucide && typeof window.lucide.createIcons === 'function') {
      window.lucide.createIcons();
    }
  },

  // Khởi tạo tính năng Thu gọn / Mở rộng Sidebar (lưu vào localStorage)
  initSidebarToggle() {
    const savedState = localStorage.getItem('happykids_sidebar_collapsed');
    if (savedState === '1') {
      document.body.classList.add('sidebar-collapsed');
    }

    const toggleBtns = document.querySelectorAll('.btn-toggle-sidebar, #btn-sidebar-collapse, #btn-toggle-sidebar');
    toggleBtns.forEach(btn => {
      // Tránh gán trùng lặp
      if (btn.dataset.toggleBound) return;
      btn.dataset.toggleBound = 'true';

      btn.addEventListener('click', (e) => {
        e.preventDefault();
        document.body.classList.toggle('sidebar-collapsed');
        const isCollapsed = document.body.classList.contains('sidebar-collapsed');
        localStorage.setItem('happykids_sidebar_collapsed', isCollapsed ? '1' : '0');
        this.updateSidebarToggleUI();
      });
    });

    this.updateSidebarToggleUI();
  },

  updateSidebarToggleUI() {
    const isCollapsed = document.body.classList.contains('sidebar-collapsed');
    const toggleBtns = document.querySelectorAll('.btn-toggle-sidebar, #btn-toggle-sidebar');
    toggleBtns.forEach(btn => {
      const textSpan = btn.querySelector('.btn-toggle-text');
      if (textSpan) {
        textSpan.textContent = isCollapsed ? 'Mở Menu' : 'Thu gọn Menu';
      }
      btn.setAttribute('title', isCollapsed ? 'Mở rộng thanh Menu' : 'Thu gọn thanh Menu để xem toàn màn hình');
    });
    this.initIcons();
  }
};

// Tự động kích hoạt tính năng thu gọn / mở rộng menu trên toàn bộ website
if (document.readyState === 'loading') {
  document.addEventListener('DOMContentLoaded', () => utils.initSidebarToggle());
} else {
  utils.initSidebarToggle();
}
