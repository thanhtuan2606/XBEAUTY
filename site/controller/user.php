<?php
    include_once '../model_DAO/user.php';
    extract($_GET);
    if(isset($act)) {
        switch ($act) {
            case 'login':
                if (isset($login_submit)) {
                    $data=check_login($email,$pass);
                        //print_r($data);
                    if ($data) {
                        $_SESSION['user']=$data;
                        header('location: ?mod=page&act=home');
                    }else {
                        $data='Đăng nhập thất bại';
                    }
                }
                include_once 'view/template_header.php';
                include_once 'view/page_login.php';
                include_once 'view/template_footer.php';
            break;
            
            case 'info':
                $id=$_SESSION['user']['MaKhachHang'];
                $user=user_one($id);
                include_once 'view/template_header.php';
                include_once 'view/page_info_template.php';
                include_once 'view/page_info.php';
                include_once 'view/template_footer.php';
            break;

            case 'logout':
                unset($_SESSION['user']);
                header('location: ?mod=page&act=home');
            break;

            case 'register':
                if(isset($register_submit)){
                    if($pass==$repass) {
                        user_register($name,$email,$pass,$phone,$address,$_FILES['image']['name']);
                        move_uploaded_file($_FILES['image']['tmp_name'],'../content/img'.$_FILES['image']['name']);
                    //echo "Đăng ký thành công";
                    
                    header('location: ?mod=user&act=login');
                    } else {
                    $data="Mật khẩu không khớp";
                }
            }

                //user_register();
                include_once 'view/template_header.php';
                include_once 'view/page_register.php';
                include_once 'view/template_footer.php';
            break;

            case 'edit':
                $user=user_one($id);
                //print_r($user);
                if(isset($edit_submit)){
                    if($_FILES['image']['name']!=null){
                        user_edit($id,$name,$email,$address,$phone,$_FILES['image']['name']);
                        move_uploaded_file($_FILES['image']['tmp_name'],'../content/img/'.$_FILES['image']['name']);
                    }else{
                        user_edit($id,$name,$email,$address,$phone,$user['Anh']);
                    }
                    $_SESSION['user']=user_one($id);
                    header('location: ?mod=user&act=info');
                }
                include_once 'view/template_header.php';
                include_once 'view/page_info_template.php';
                include_once 'view/page_user_update.php';
                include_once 'view/template_footer.php';
            break;

            case 'pass':
                $user = user_one($id);
                //print_r($user);
                
                // Kiểm tra nếu form đã được gửi đi
                // kiểm tra thông tin
                if(isset($edit_submit)){                
                    $old_pass = $_POST['old_pass'];
                    $new_pass = $_POST['new_pass'];
                    $re_new_pass = $_POST['re_new_pass'];
            
                    if ($old_pass != $user['MatKhau']) {
                        echo '<div class="alert alert-warning">Mật khẩu cũ nhập không chính xác, đảm bảo đã tắt Caps lock.</div>';
                    } else if ($new_pass != $re_new_pass) {
                        echo '<div class="alert alert-warning">Nhập lại mật khẩu mới không khớp, đảm bảo đã tắt Caps lock.</div>'; 
                    } else {
                        user_change_pass($id, $new_pass);
                        // Hiển thị thông báo và tải lại trang
                        echo '<div class="alert alert-success">Đổi mật khẩu thành công!</div>';
                        header('location: ?mod=user&act=info');
                    } 
                }
                    include_once 'view/template_header.php';
                    include_once 'view/page_info_template.php';
                    include_once 'view/page_change_pass.php';
                    include_once 'view/template_footer.php';
                break;
            case 'forget':
                include_once 'view/template_header.php';
                include_once 'view/forget-password.php';
                include_once 'view/template_footer.php';
            break;
        }
    }