<?php
    include_once '../model_DAO/product.php';
    include_once '../model_DAO/feedback.php';
    extract($_GET);

    if (isset($act)) {
        switch ($act) {
            case 'detail':
                if((isset($id))&&(is_numeric($id))&&($id>0)){

               
                $sp=product_one($id);

                if(isset($feedback_submit)) {
                    feedback_add($feedback,$_SESSION['user']['MaKhachHang'],$id);
                }
                $feedback_list=feedback_list($id); //lấy theo sản phẩm
                
                include_once 'view/template_header.php';
                include_once 'view/page_product_detail.php';
                include_once 'view/page_feedback.php';
                include_once 'view/template_footer.php';

            }else{
                header('location: index.php');
            }
            break;
        }
    }