<?php
    extract($_REQUEST);
    if(isset($mod)) {
        switch ($mod) {
            case 'category':
                include_once 'controller/category.php';
                break;
            
            case 'product':
                include_once 'controller/product.php';
                break;

            case 'user':
                include_once 'controller/user.php';
                break;
                
            case 'feedback':
                include_once 'controller/feedback.php';
                break;
            case 'statistic':
                include_once 'controller/statistic.php';
                break;
            case 'order':
                include_once 'view/page_orders.php';
            default:
                # code...
                break;
        }
    }
?>
