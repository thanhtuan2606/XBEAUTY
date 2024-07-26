<?php
include_once 'view/template_header.php';
// Place your PHP code here

session_start();

// Kết nối đến cơ sở dữ liệu
try {
    $db = new PDO('mysql:host=localhost;dbname=myphamshop;charset=utf8', 'root', '');
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    echo 'Kết nối CSDL thất bại: ' . $e->getMessage();
    die();
}

// Truy vấn SQL để lấy tất cả sản phẩm
$sql = "SELECT * FROM sanpham";
$stmt = $db->prepare($sql);
$stmt->execute();
$product_page = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 10px;
        }

        table {
            width: 90%;
            border-collapse: collapse;
            margin-top: -100px; /* Di chuyển bảng lên trên 100px */
            transform: scale(0.9);
        }

        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        th[colspan="9"] {
            background-color: white; /* Màu nền trắng */
            color: black; /* Màu chữ đen */
        }
        th:nth-child(3),
        td:nth-child(3) {
            width: 100px; /* Điều chỉnh kích thước của cột giá */
        }
        th:nth-child(2),
        td:nth-child(2) {
            width: 550px; /* Điều chỉnh kích thước của cột giá */
        }
        td p {
            margin: 0;
            transform: scale(1.1);
        }

        .tong-tien {
            text-align: right;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th colspan="9">
                    <h2>Quản lý thống kê</h2>
                </th>
            </tr>
            <tr>
                <th>Mã sản phẩm</th>
                <th>Tên sản phẩm</th>
                <th>Giá</th>
                <th>Giá khuyến mãi</th>
                <th>Số lượng</th>
                <th>Số lượng đã bán</th>
                <th>Tổng tiền đã bán</th>
                <th>Trạng thái</th>
            </tr>
        </thead>
        <tbody>
            <?php
            $tongSoLuongDaBan = 0;
            $tongTienDaBan = 0;
            foreach($product_page as $sp):
                $soLuongConLai = $sp['SoLuong'];
                $giaSanPham = $sp['Gia'];
                $soLuongDaBan = ($soLuongConLai < 50) ? (50 - $soLuongConLai) : 0;
                $tongSoLuongDaBan += $soLuongDaBan;
                $tongTienDaBan += $soLuongDaBan * $giaSanPham;
            ?>
                <tr>
                    <td><?= $sp['MaSanPham'] ?></td>
                    <td><?= $sp['TenSanPham'] ?></td>
                    <td><?= $sp['Gia'] ?> đ</td>
                    <td><?= $sp['GiaKhuyenMai'] ?> đ</td>
                    <td><?= $sp['SoLuong'] ?></td>
                    <td><?= $soLuongDaBan ?></td>
                    <td><?= number_format($soLuongDaBan * $giaSanPham, 0, '.', ',') ?> đ</td>
                    <td><?= $sp['TrangThai'] ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="6" class="tong-tien">Tổng số lượng đã bán: <?= $tongSoLuongDaBan ?></td>
                <td colspan="2" class="tong-tien">Tổng tiền đã bán: <?= number_format($tongTienDaBan, 0, '.', ',') ?> đ</td>
            </tr>
        </tfoot>
    </table>
</body>
</html>
