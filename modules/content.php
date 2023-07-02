 <head>
	 <style>
		.hangbanchay li:hover{
			background:rgb(92, 227, 245);
		}
		.hangbanchay p{
			padding:5px;
			color:black;
			font-weight:bold;
		}
		.tieude{
			width:auto;
			height:40px;
			background:orangered;
			font-size:20px;
			text-align:center;
			padding:5px;
			color:#fff;
			line-height:40px;
		}
		.list li{
			width:auto;
			height:20px;
			padding-left:10px;
			padding-top:5px;
			background:rgb(189, 188, 187);
			
		}
		.list li a{
			text-decoration:none;
			color:#000;
			font-weight: 600;
			display:block;
		}
		.list li:hover{
			background:whitesmoke;
		}
		.product li:hover{
			background:wheat;
			box-shadow: 10px 5px 5px rgba(145, 145, 145, 0.6)
		}
		.product li{
			width:215px;
			height:240px;
			text-align:center;
			padding-top:5px;
			float:left;
			margin:4px;	
		}
		.product p{
			padding-top:2px;
			color:#000;
			font-size:16px;	
		}
		.sanphamlienquan a{
			text-decoration:none;
			color:black;
		}
		.product li:hover{
			background:rgb(255, 255, 255);
			box-shadow: 5px 5px 5px 5px rgba(145, 145, 145, 0.6)
		}
		
		.product li a img{
			width: 98%;
			height: 160px;
		}
		.sanphamlienquan ul li{
			width:215px;
			height:230px;
			text-align:center;
			margin:8px;
			float:left;
		}
		.sanphamlienquan ul li:hover{
			box-shadow: 3px 3px 3px 3px rgba(145, 145, 145, 0.6);
		}
	 </style>
 </head> 
 
 <div class="content">
        	<div class="content_left">
            	<?php
					include('modules/left/list.php');
				?>
            </div>
            <div class="content_right">
            <?php
				if(isset($_GET['quanly'])&&($_GET['quanly'])!=''){
					$tam= $_GET['quanly'];
				}else{
					$tam ='';
				}if($tam == 'chitietsp'){
					include('modules/right/chitietsp.php');
				}elseif($tam == 'loaisp'){
					include('modules/right/loaisp.php');
				}elseif($tam == 'dathang'){
					include('modules/right/dathang.php');
				}elseif($tam == 'dangkymoi'){
					include('modules/right/dangkymoi.php');
				}elseif($tam == 'dangnhap'){
					include('modules/right/dangnhap.php');
				}elseif($tam == 'xulygiohang'){
					include('modules/right/xulygiohang.php');
				}elseif($tam == 'camon'){
					include('modules/right/camon.php');
				
				}else{
					include('modules/right/spmoi.php');
				}
			?>
        </div>
        <div class="clear"></div>