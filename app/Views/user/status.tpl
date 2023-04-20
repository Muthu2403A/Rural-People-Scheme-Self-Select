<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>

	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link rel="shortcut icon" href="https://thaicarenellai.in/content/images/twa-home-logo.png">

	<link rel="canonical" href="https://demo-basic.adminkit.io/" />

	<title>Ministry of Rural Development</title>

	<link href="<?php echo base_url('content/'); ?>css/app.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">
	<style>
	@import url(https://fonts.googleapis.com/css?family=Oswald:300,400);
body {
  background-color: #222;
}
#currentTime {
  font-size: 1.5em;
  text-align: center;
  font-family: 'Oswald';
  font-weight: 10;
  color: #28218f;
  margin: 10px auto;
}
.status {
        padding: 5px;
        font-weight: bold;
        text-transform: uppercase;
    }
    .status.accepted {
        background-color: #e5f5e0; /* light green */
    }
    .status.declined {
        background-color: #f8d7da; /* light red */
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
				<div class="container-fluid p-0 w-100" >

					<h1 class="h3 mb-3">Status</h1>

					<div class="row w-auto p-3 container-fluid" >
						<div class="col-12" >
							<div class="card vertical" >

								<div class="card-header ">
								<div class="card-container">
								<?php foreach($status->getResult() as $user): ?>
								<div class="card">
								<div class="card-header">
								<h5 class="card-title">Application ID: <?php echo $user->app_id; ?></h5>
								</div>
								<div class="card-body py-3">
								<div class="container">
								<div class="row text-center py-4 ">
								<div class="col-md-4 py-4">
								<strong>Applicant Name:</strong> 
								<h4><?php echo $user->name; ?></h4>
								</div>
								<div class="col-md-4 py-4">
								<strong>Email:</strong> 
								<h4><?php echo $user->email; ?></h4>
								</div>
								<div class="col-md-4 p-4">
								<strong>Date of Birth:</strong> 
								<h4><?php echo $user->dob; ?></h4>
								</div>
								</div>

								<div class="row text-center py-4">
								<div class="col-md-4 py-4">
								<strong>Scheme Name:</strong> 
								<h4><?php echo $user->scheme_name; ?></h4>
								</div>
								<div class="col-md-4 py-4">
								<strong>District:</strong> 
								<h4><?php echo $user->district; ?></h4>
								</div>
								<div class="col-md-4 py-4">
								<strong>Area:</strong> 
								<h4><?php echo $user->area; ?></h4>
								</div>
								</div>

								<div class="row text-center py-4">
								<div class="col-md-4 py-4">
								<strong>Father Name:</strong> 
								<h4><?php echo $user->father_name; ?></h4>
								</div>
								<div class="col-md-4 py-4">
								<strong>Beneficiary Number:</strong> 
								<h4><?php echo $user->ben_no; ?></h4>
								</div>
								<div class="col-md-4 py-4">
									<strong>Aadhar No:</strong> 
									<h4><?php echo $user->aadhar_no; ?></h4>
								</div>
								<div class="row text-center py-4">
									<strong>Status</strong>
									<div class="status <?php echo $user->approve == 'accepted' ? 'accepted' : 'declined'; ?>"><?php echo $user->approve; ?></div>
								</div>
								</div>
								</div>

								</div>
								<?php endforeach; ?>
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
								<a class="text-muted" href="https://adminkit.io/" target="_blank"><strong></strong></a> - <a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>Project by Government</strong></a>
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