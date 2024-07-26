<?php
// Hàm kết nối đến CSDL sử dụng PDO
function pdo_get_connectionn()
{
    $dburl = "mysql:host=localhost;dbname=myphamshop;charset=utf8";
    $username = 'root';
    $password = '';

    $conn = new PDO($dburl, $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    return $conn;
}

// Hàm tạo mã khách hàng ngẫu nhiên
function generateRandomCustomerId()
{
    // Sử dụng uniqid() để tạo một chuỗi duy nhất dựa trên timestamp
    $uniqueId = uniqid();

    // Tạo một mã khách hàng ngẫu nhiên bằng cách lấy 8 ký tự đầu tiên của chuỗi duy nhất
    $randomCustomerId = substr($uniqueId, 0, 8);

    return $randomCustomerId;
}

// Xử lý đăng ký người dùng
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['register_submit'])) {
    // Lấy dữ liệu từ form
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['pass'];
    $repassword = $_POST['repass'];
    $address = $_POST['address'];
    $phone = $_POST['phone'];

    // Chưa xử lý đường dẫn cho ảnh đại diện
    $image = $_FILES['image']['name'];
    $target_directory = "../content/img/"; // Đặt thư mục upload của bạn

    // Di chuyển ảnh đến thư mục đích
    if (move_uploaded_file($_FILES['image']['tmp_name'], $target_directory . $image)) {
        // Tạo mã khách hàng ngẫu nhiên
        $randomCustomerId = generateRandomCustomerId();

        // Kết nối đến CSDL
        $conn = pdo_get_connectionn();

        // Kiểm tra xem email đã tồn tại chưa
        $checkEmailQuery = "SELECT COUNT(*) FROM khachhang WHERE Email = '$email'";
        $emailExists = $conn->query($checkEmailQuery)->fetchColumn();

        if ($emailExists > 0) {
            $data = "Email đã tồn tại. Vui lòng chọn email khác.";
        } else {
            // Insert dữ liệu vào CSDL với mã khách hàng ngẫu nhiên
            $sql = "INSERT INTO khachhang (MaKhachHang, Email, MatKhau, HoTen, DiaChi, SDT, Anh) 
                    VALUES ('$randomCustomerId', '$email', '$password', '$name', '$address', '$phone', '$image')";

            try {
                $conn->exec($sql);
                $data = "Đăng ký thành công!";
            } catch (PDOException $e) {
                $data = "Lỗi: " . $e->getMessage();
            }
        }

        // Đóng kết nối CSDL
        $conn = null;
    } else {
        $data = "Lỗi khi di chuyển tệp tin";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <!-- Thêm các thẻ meta, CSS, JS cần thiết tại đây -->
</head>
<body>

<section>
    <div class="container">
        <div class="row m-4">
            <!-- ----------------LOGIN------------------------- -->
            <div class="col-md-6 p-5 border-end">
                  <p class="fs-4 mb-4 color-main">ĐĂNG KÝ</p>
                  <form method="post" action="" class="text-muted" enctype="multipart/form-data">
                        <div class="form-outline mb-3">
                              <label class="form-label mb-1 " >Họ tên</label>
                              <input name="name" type="text" class="form-control border border-secondary rounded-4" required/>
                        </div>
                        <div class="form-outline mb-3 mb-3">
                              <label class="form-label  mb-1" >Email</label>
                              <input name="email" type="text" class="form-control border border-secondary rounded-4" required/>
                        </div>
                        <div class="form-outline mb-3">
                              <label class="form-label  mb-1" >Mật khẩu</label>
                              <input name="pass" type="password" class="form-control border border-secondary rounded-4" required/>
                        </div>
                        <div class="form-outline mb-3">
                              <label class="form-label  mb-1" >Nhập lại mật khẩu</label>
                              <input name="repass" type="password" class="form-control border border-secondary rounded-4"required />
                        </div>
                        <div class="form-outline mb-3">
                              <label class="form-label  mb-1" >Địa chỉ</label>
                              <input name="address" type="text" class="form-control border border-secondary rounded-4" />
                        </div>
                        <div class="form-outline mb-3">
                              <label class="form-label  mb-1" >Số điện thoại</label>
                              <input name="phone" type="text" class="form-control border border-secondary rounded-4" />
                        </div>
                        <div class="form-outline mb-3">
                              <label class="form-label  mb-1" >Ảnh đại diện</label>
                              <input name="image" type="file" class="form-control " />
                        </div>

                        <div class="d-grid">
                              <button class="btn btn-main rounded-0 text-white" type="submit" name="register_submit">Đăng ký</button>
                        </div>
                        <!-- <div class="text-center fs-1">
                              <input name="register_submit" type="submit" class="btn btn-main rounded-0 text-white" value="Đăng ký">
                        </div> -->
                  </form>
                  <?php if(isset($data)):?>
                  <div class="alert alert-warning mt-3 text-center text-danger" role="alert">
                        <?=$data;?>
                        <i class="fa-solid fa-exclamation"></i> 
                  </div>
                  <?php endif; unset($data);?>
            </div>

            <!-- -------------------------INFO LOGIN---------------------------------- -->
            <div class="col-md-6 p-5 border-start text-center login-background">
                <div>
                    <p class="fs-4 mb-4 color-main">ĐÃ CÓ TÀI KHOẢN ?</p>
                    <div class="registration-info px-5">
                        <span>
                            Đăng nhập trở thành thành viên của Pristine để nhận ngay những ưu đãi độc quyền chỉ dành cho thành viên.
                        </span>
                    </div>
                    <div class="pt-3">
                        <a href="?mod=user&act=login" class="text-white text-center btn btn-main w-25 rounded-0">Đăng nhập</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</body>
</html>
