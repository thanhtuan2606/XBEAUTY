<?php
ob_start();
    session_start();  // lưu mảng 
    extract($_REQUEST);   //-->extract($_Get);
    if(isset($mod)) {
        switch($mod) {
            
            case 'page':
                include_once 'controller/page.php';
                break;
            
            case 'cart':
                include_once 'controller/cart.php';
                break;
            
            case 'user':
                include_once 'controller/user.php';
                break;
            
            case 'product':
                include_once 'controller/product.php';
                break;
            case 'changepass':
                include_once "controller/reset_password_process.php";
                break;
            case 'resetpass':
                include_once "view/forget-password.php";
                break;
                case 'checkout': 
                    include_once 'view/page_thanhcong.php'; 
                    break;
        
                default:
                    // header('location: ?mod=page&act=home');
                    include_once"view/page_thanhcong.php";
                    break;
        }
    } else {
        header('location: ?mod=page&act=home');
    }
    // try {
    //     $db = new PDO('mysql:host=localhost;dbname=myphamshop;charset=utf8', 'root', '');
    //     $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    //     // Sau khi khởi tạo và cấu hình kết nối CSDL, bạn có thể gọi tệp thanhcong.php và truyền biến $db vào:
    //     include_once('view/thanhcong.php');
    // } catch (PDOException $e) {
    //     echo 'Kết nối CSDL thất bại: ' . $e->getMessage();
    // }
?>