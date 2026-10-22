/**
 * AUTHENTICATION: ĐĂNG NHẬP GOOGLE & KIỂM TRA PHIÊN
 */

const auth = {
  currentUser: null,

  // Kiểm tra phiên đăng nhập hiện tại
  async checkSession() {
    const res = await api.get('me.php');
    if (res.status !== 'success' || !res.data) {
      // Nếu đang không ở trang login thì chuyển về trang login
      if (!window.location.pathname.includes('login.html')) {
        window.location.href = 'login.html';
      }
      return null;
    }

    this.currentUser = res.data;
    // Hiển thị thông tin người dùng lên Sidebar
    this.renderUserInfo(res.data);
    return res.data;
  },

  getUser() {
    return this.currentUser;
  },

  renderUserInfo(user) {
    const avatarEl = document.querySelector('.user-avatar');
    const nameEl = document.querySelector('.user-name');
    const roleEl = document.querySelector('.user-role');

    if (avatarEl && user.avatar) avatarEl.src = user.avatar;
    if (nameEl) nameEl.textContent = user.name || user.email;
    if (roleEl) {
      roleEl.textContent = user.role === 'SUPER_ADMIN' ? 'Quản trị viên' : 'Quản lý cơ sở';
    }
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
      utils.showToast(res.message || 'Đăng nhập thất bại', 'error');
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

  // Lấy danh sách tài khoản
  async getUsers() {
    return await api.get('auth_google.php?action=get_users');
  },

  // Thêm tài khoản Google được ủy quyền
  async addUser(email, name, role = 'SUPER_ADMIN') {
    return await api.post('auth_google.php?action=add_user', {
      email,
      name,
      role
    });
  }
};
