<?php
    require_once "controller/resetpassword.php";
?>
<div class="d-flex justify-content-center align-items-center">
  <div class="col-md-4 p-5">
    <h3 class="text-center mb-4 text-dark">QUÊN MẬT KHẨU</h3>
    <form method="post" action="">
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Địa chỉ email</label>
        <input type="email" class="form-control border border-primary" name="email" aria-describedby="emailHelp" required>
      </div>
      <div class="d-grid">
        <button class="btn btn-primary" type="submit" name="resetpass_submit">Gửi mật khẩu mới</button>
      </div>
    </form>
  </div>
  </div>