<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">
	<title>Ministry of Rural Development</title>
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="https://thaicarenellai.in/content/images/twa-home-logo.png">

	<link rel="canonical" href="https://demo-basic.adminkit.io/" />

	<title></title>

	<link href="<?php echo base_url('content/'); ?>css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

	<style>
		@import url(https://fonts.googleapis.com/css?family=Oswald:300,400);
body {
  background-color: #222;
}
#currentTime {
  font-size: 2em;
  text-align: center;
  font-family: 'Oswald';
  font-weight: 10;
  color: #28218f;
  margin: 10px auto;
}
		@media screen and (max-width: 600px) {
  body {
    background-color: blue;
  }

 iframe {
   width: 150pt;
 }
}
		.dialog {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.4);
}

.dialog-content {
  background-color: #fefefe;
  margin: 15% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

.dialog-content button {
  display: block;
  margin: 0 auto;
}
.view {
  display: none;
  position: fixed;
  z-index: 1;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  overflow: auto;
  background-color: rgba(0, 0, 0, 0.4);
}

.view-content {
  background-color: #fefefe;
  margin: 15% auto;
  padding: 20px;
  border: 1px solid #888;
  width: 60%;
}

.view-content {
  display: block;
  margin: 0 auto;
}

		</style>
</head>

<body>
	<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="<?php echo base_url()?>user_page">
          <span class="align-middle" style="font-size: 14px;"><?php echo session('email'); ?></span>
       	 </a>
		

				<ul class="sidebar-nav">
					<li class="sidebar-header">
						Pages
					</li>

					<li class="sidebar-item active">
						<a class="sidebar-link" href="<?php echo base_url(); ?>user_page">
              <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
            </a>
					</li>	

					

					<li class="sidebar-item">
						<a class="sidebar-link" href="<?php echo base_url(); ?>">
              <i class="align-middle" data-feather="square"></i> <span class="align-middle">Log Out</span>
            </a>
					</li>					

					
				</ul>

			</div>
		</nav>

		<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle">
          <i class="hamburger align-self-center"></i>
		  
        </a>

				<div class="navbar-collapse collapse">
					<ul class="navbar-nav navbar-align">
						
						
						<li class="nav-item dropdown">
							
							<h4 id="currentTime"></h4>
						</li>
					</ul>
				</div>
			</nav>

			<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3"><strong>User </strong>Dashboard</h1>

					<div class="row">
						<div class="col-xl-6 col-xxl-5 d-flex">
							<div class="w-100">
								<div class="row">
									<div class="col-sm-6">
										<div class="card btn btn-primary" onclick="openDialog()">
											<div class="card-body ">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Application</h5>
													</div>
													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="clipboard"></i>
														</div>
													</div>
												</div>
											</div>
											<div id="dialog" class="dialog">
												<div class="dialog-content">
													<a class="btn" id="close-btn">Close</a>
													<div class="dialog-body">
														<iframe src="<?php echo base_url(); ?>instruct_page" width="700" height="600"></iframe>
													</div>														
												</div>
											</div>
										</div>
										<a href="<?php echo base_url(); ?>Home/status_view/<?php echo session('email'); ?>" class="card btn btn-primary" >
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Application Status</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="trending-up"></i>
														</div>
													</div>
												</div>
												
											</div>
										</a>
										
									</div>
									<div class="col-sm-6">
										<a href="<?php echo base_url(); ?>Home/user_view/<?php echo session('email'); ?>" class="card btn btn-primary">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">view Application</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="bookmark"></i>
														</div>
													</div>
												</div>
												
											</div>
											
										</a>
										<a href="<?php echo base_url(); ?>Home/user_update/<?php echo session('email'); ?>" class="card btn btn-primary">
											<div class="card-body">
												<div class="row">
													<div class="col mt-0">
														<h5 class="card-title">Update Application</h5>
													</div>

													<div class="col-auto">
														<div class="stat text-primary">
															<i class="align-middle" data-feather="edit"></i>
														</div>
													</div>
												</div>
												
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>

						

					
						
						<div class="col-12 col-md-6 col-xxl-3 d-flex order-1 order-xxl-1">
							<div class="card flex-fill">
								<div class="card-header">

									<h5 class="card-title mb-0">Calendar</h5>
								</div>
								<div class="card-body d-flex">
									<div class="align-self-center w-100">
										<div class="chart">
											<div id="datetimepicker-dashboard"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					

				</div>
			</main>

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-start">
							<p class="mb-0">
								<a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>Government Sector</strong></a> - <a class="text-muted" href="https://adminkit.io/" target="_blank"><strong></strong></a>								&copy;
							</p>
						</div>
						<div class="col-6 text-end">
							<ul class="list-inline">
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Support</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Help Center</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Privacy</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="https://adminkit.io/" target="_blank">Terms</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

	<script src="<?php echo base_url('content/');?>js/app.js"></script>
	<script src="<?php echo base_url('content/');?>js/bootstrap.js"></script>
	<script src="<?php echo base_url('content/');?>js/chartjs.js"></script>
	<script src="<?php echo base_url('content/');?>js/feather.js"></script>
	<script src="<?php echo base_url('content/');?>js/flatpickr.js"></script>
	<script src="<?php echo base_url('content/');?>js/sidebar.js"></script>
	<script src="<?php echo base_url('content/');?>js/theme.js"></script>
	<script src="<?php echo base_url('content/');?>js/vector-maps.js"></script>	
	
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			var date = new Date(Date.now() - 5 * 24 * 60 * 60 * 1000);
			var defaultDate = date.getUTCFullYear() + "-" + (date.getUTCMonth() + 1) + "-" + date.getUTCDate();
			document.getElementById("datetimepicker-dashboard").flatpickr({
				inline: true,
				prevArrow: "<span title=\"Previous month\">&laquo;</span>",
				nextArrow: "<span title=\"Next month\">&raquo;</span>",
				defaultDate: defaultDate
			});
		});
	</script>
    
	<script>
		function openDialog() {
			var dialog = document.getElementById("dialog");
			dialog.style.display = "block";
		}
		
		// Add a click event listener to the close button
// Add a click event listener to the close button
$("#close-btn").click(function() {
  // Fade out the dialog container over 500 milliseconds
  $("#dialog").fadeOut(500);
});



		</script>  
		<script>
		function openView() {
			var dialog = document.getElementById("view");
			view.style.display = "block";
		}
		
		// Add a click event listener to the close button
// Add a click event listener to the close button
$("#view-btn").click(function() {
  // Fade out the dialog container over 500 milliseconds
  $("#view").fadeOut(500);
});



		</script> 
		<script>
			window.onload = function() {
  clock();  
    function clock() {
    var now = new Date();
    var TwentyFourHour = now.getHours();
    var hour = now.getHours();
    var min = now.getMinutes();
    var sec = now.getSeconds();
    var mid = 'pm';
    if (min < 10) {
      min = "0" + min;
    }
    if (hour > 12) {
      hour = hour - 12;
    }    
    if(hour==0){ 
      hour=12;
    }
    if(TwentyFourHour < 12) {
       mid = 'am';
    }     
  document.getElementById('currentTime').innerHTML =     hour+':'+min+':'+sec +' '+mid ;
    setTimeout(clock, 1000);
    }
}
</script>
    

</body>

</html>