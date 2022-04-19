<!DOCTYPE html>
<html lang="en">

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">

	<title>WISATA</title>

	<!-- Custom fonts for this template-->
	<link href="<?= base_url('assets/vendor/fontawesome-free/css/all.min.css');?>" rel="stylesheet" type="text/css">
	<link
		href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
		rel="stylesheet">

	<!-- Custom styles for this template-->
	<link href="<?= base_url('assets/css/sb-admin-2.min.css');?>" rel="stylesheet">
    
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
	

    <!-- Custom styles for this page -->
    <link href="<?= base_url('assets/vendor/datatables/dataTables.bootstrap4.min.css')?>" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-light sidebar sidebar-light accordion" id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="<?= base_url('/') ?>">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-bus"></i>
				</div>
				<div class="sidebar-brand-text mx-3">Weesata</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">
			
			<?php 
				 if(!isset($this->session->userdata['username'])):
			?>
			<!-- Nav Item - Dashboard -->
			<li class="nav-item active">
				<a class="nav-link" href="<?= base_url('/');?>">
					<i class="fas fa-home"></i>
					<span>Beranda</span></a>
			</li>
			<!-- Divider -->
			<hr class="sidebar-divider">
			<!-- Nav Item - Charts -->
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url('Home/wisata');?>">
					<i class="fas fa-bus "></i>
					<span>Tempat Wisata</span></a>
			</li>
			
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url('Admin');?>">
					<i class="fas fa-sign-out-alt "></i>
					<span>Login</span></a>
			</li>
			<?php 
				endif;
			?>
			<!-- Divider -->

			<hr class="sidebar-divider d-none d-md-block">

			<?php 
				 if(isset($this->session->userdata['username'])):
			?>
			
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url('Admin/transaksi');?>">
					<i class="fas fa-folder "></i>
					<span>Data Transaksi</span></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<?= base_url('Admin/logout');?>">
					<i class="fas fa-sign-out-alt "></i>
					<span>LogOut</span></a>
			</li>
			<?php 
				endif;
			?>
			
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<?php 
				 if(!isset($this->session->userdata['username'])):
			?>
			<header class="bg-dark py-5" style="
                    background-image: url('https://pusakapusaka.com/wp-content/uploads/2015/10/Panorama-Alam-Pegunungan-di-Jawa-Timur.jpg');
                    height: 90vh;
					background-repeat: no-repeat;
					background-size: cover;
					
                ">
				<div class="container px-4 px-lg-5 my-5">
					<div class="text-center text-dark text-border">
					</div>
				</div>
			</header>
			<?php endif; ?>
			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->

				<!-- End of Topbar -->
