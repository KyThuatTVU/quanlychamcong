/**
 * AUTHENTICATION: ĐĂNG NHẬP (MẬT KHẨU & GOOGLE), PHÂN QUYỀN VÀ KIỂM TRA PHIÊN
 */

const auth = {
  currentUser: null,

  // Kiểm tra phiên đăng nhập hiện tại
  async checkSession() {
    try {
      const res = await api.get('me.php');
      if (res.status !== 'success' || !res.data) {
        // Nếu không ở trang login thì chuyển về login.html
        if (!window.location.pathname.includes('login.html')) {
          window.location.href = 'login.html';
        }
        return null;
      }

      this.currentUser = res.data;
      this.renderUserInfo(res.data);
      this.applyRolePermissions(res.data);
      return res.data;
    } catch (err) {
      if (!window.location.pathname.includes('login.html')) {
        window.location.href = 'login.html';
      }
      return null;
    }
  },

  getUser() {
    return this.currentUser;
  },

  // Áp dụng giới hạn quyền cho vai trò STAFF
  applyRolePermissions(user) {
    const isStaff = (user.role === 'STAFF' || user.role === 'VIEWER');
    
    // Nếu là nhân viên nghiệp vụ (STAFF):
    if (isStaff) {
      // 1. Ẩn mục Cấu hình trên thanh điều hướng menu sidebar
      document.querySelectorAll('a[href*="cau-hinh.html"]').forEach(el => {
        el.style.display = 'none';
        // Xóa tiêu đề nhóm Hệ thống nếu trống
        const prevSection = el.previousElementSibling;
        if (prevSection && prevSection.classList.contains('nav-section-title') && prevSection.textContent.includes('Hệ thống')) {
          prevSection.style.display = 'none';
        }
      });

      // 2. Nếu đang cố tình mở trực tiếp trang cau-hinh.html -> Chặn và đẩy về index.html
      if (window.location.pathname.includes('cau-hinh.html')) {
        alert('Tài khoản của bạn chỉ có quyền sử dụng các nghiệp vụ (Chấm công, Nhân sự, Tính lương, Phiếu lương, Tổng quan). Không được phép truy cập mục Cấu hình và Quản trị tài khoản.');
        window.location.href = 'index.html';
      }
    }
  },

  renderUserInfo(user) {
    const avatarEl = document.querySelector('.user-avatar');
    const nameEl = document.querySelector('.user-name');
    const roleEl = document.querySelector('.user-role');

    if (avatarEl && user.avatar) avatarEl.src = user.avatar;
    if (nameEl) nameEl.textContent = user.name || user.username || user.email;
    if (roleEl) {
      let roleText = 'Quản trị viên';
      if (user.role === 'SUPER_ADMIN') roleText = 'Quản trị viên';
      else if (user.role === 'ADMIN_CANGLONG') roleText = 'Quản lý Càng Long';
      else if (user.role === 'ADMIN_TANNHUT') roleText = 'Quản lý Tân Nhựt';
      else if (user.role === 'STAFF') roleText = 'Nhân viên nghiệp vụ';
      else if (user.role === 'VIEWER') roleText = 'Người xem';
      roleEl.textContent = roleText;
    }
  },

  // Đăng nhập bằng Tên đăng nhập / Email và Mật khẩu
  async loginPassword(login, password) {
    return await api.post('auth_google.php?action=login_password', {
      login,
      password
    });
  },

  // Đăng nhập bằng Google ID Token (gọi từ Google Identity Services)
  async handleGoogleCallback(response) {
    if (!response || !response.credential) {
      utils.showToast('Không nhận được mã xác thực Google', 'error');
      return;
    }

    utils.showToast('Đang xác thực Google...', 'info');
    const res = await api.post('auth_google.php', {
      credential: response.credential
    });

    if (res.status === 'success') {
      utils.showToast('Đăng nhập Google thành công!', 'success');
      setTimeout(() => {
        window.location.href = 'index.html';
      }, 500);
    } else {
      const msg = res.message || 'Đăng nhập thất bại';
      utils.showToast(msg, 'error');
      const errorAlert = document.getElementById('login-error-alert');
      const errorText = document.getElementById('login-error-text');
      if (errorAlert && errorText) {
        errorText.textContent = msg;
        errorAlert.style.display = 'flex';
        utils.initIcons();
      }
    }
  },

  // Đăng nhập thử nghiệm (Dev Test)
  async loginDev() {
    const res = await api.post('auth_google.php', {
      is_dev_test: true
    });
    if (res.status === 'success') {
      utils.showToast('Đăng nhập thử nghiệm thành công!', 'success');
      setTimeout(() => {
        window.location.href = 'index.html';
      }, 400);
    }
  },

  // Đăng xuất
  async logout() {
    await api.get('auth_google.php?action=logout');
    window.location.href = 'login.html';
  },

  // Lấy Client ID Google từ backend
  async getGoogleClientId() {
    return await api.get('auth_google.php?action=get_client_id');
  },

  // Lưu Client ID Google vào backend
  async saveGoogleClientId(clientId) {
    return await api.post('auth_google.php?action=save_client_id', {
      client_id: clientId
    });
  },

  // Lấy danh sách tài khoản (chỉ admin)
  async getUsers() {
    return await api.get('auth_google.php?action=get_users');
  },

  // Thêm tài khoản mới
  async addUser(userData) {
    return await api.post('auth_google.php?action=add_user', userData);
  },

  // Xóa tài khoản
  async deleteUser(userId) {
    return await api.post('auth_google.php?action=delete_user', { id: userId });
  }
};
