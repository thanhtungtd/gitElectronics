<?php
	if(isset($_POST['logout'])){
		unset($_SESSION['dangnhap']);
		header('location:login.php');
	}
?>
<head>
    <style>
        .menu{
            width:100%;
            height:40px;
            margin-top:2px;
            background:rgb(255, 115, 0);	
        }
        .menu li:hover{
            background:#CCC;
            color: #000;
        }
        .button_themsp{
            width:100px;
            height:40px;
            border:1px solid #000;
            text-align:center;
            background:rgb(0, 153, 38);
            line-height:40px;
            color:#fff;
            float:right;
        }
        .header{
            width:100%;
            height:120px;
            text-align:center;
            line-height:120px;
            font-size:40px;
            color:rgb(18, 3, 105);	
        }
        .footer{
            width:100%;
            height:120px;
            text-align:center;
            line-height:120px;
            font-size:40px;
            color:rgb(247, 53, 53);
            margin-top:5px;	
        }
    </style>
</head>
<div class="menu">
    	<ul>
        	<li><a href="index.php?quanly=loaisp&ac=them">Quản lý loại sp</a></li>
             <li><a href="index.php?quanly=hieusp&ac=them">Quản lý thương hiệu</a></li>
            <li><a href="index.php?quanly=sanpham&ac=them">Quản lý sản phẩm</a></li>
            
            <li><a href="index.php?quanly=tintuc&ac=them">Quản lý tin tức</a></li>
            <li><a href="#">Quản lý hóa đơn</a></li>
            <form action="" method="post" enctype="multipart/form-data">
            <input type="submit" name="logout" value="Đăng xuất" style="background:#06F;color:#fff;width:200px;height:30px;" />
            </form>
        </ul>
       
    </div>

 <form action="index.php?quanly=timkiem&ac=sp" method="post" enctype="multipart/form-data">
     <p><input type="text" name="masp" placeholder="Nhập mã sản phẩm..." id="timkiem" required="required" />
        <input type="submit" id="button_timkiem" name="timkiem" value="Tìm sản phẩm" />
        </p>
        </form>