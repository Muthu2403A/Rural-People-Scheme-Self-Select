<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

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
table.vertical {
  border-collapse: separate;
  border-spacing: 0px;
}
table.vertical td {
  border: 1px solid #ccc;
  padding: 0px;
}
table.vertical td:first-child {
  font-weight: bold;
  width: 300px;
  background-color: #f0f0f0;
}


		
	</style>
</head>

<body>
<div class="wrapper">
		<nav id="sidebar" class="sidebar js-sidebar">
			<div class="sidebar-content js-simplebar">
				<a class="sidebar-brand" href="#">
          <span class="align-middle" style="font-size: 14px;"><?php echo session('email'); ?></span>
        </a>

				<ul class="sidebar-nav">
					<li class="sidebar-header">
						Pages
					</li>

					<li class="sidebar-item active">
						<a class="sidebar-link" href="<?php echo base_url(); ?>admin_page">
              <i class="align-middle" data-feather="sliders"></i> <span class="align-middle">Dashboard</span>
            </a>
					</li>				

					<li class="sidebar-item">
						<a class="sidebar-link" href="<?php echo base_url(); ?>list_page">
              <i class="align-middle" data-feather="book"></i> <span class="align-middle">Applicant List</span>
            </a>
					</li>

					

					<li class="sidebar-item">
						<a class="sidebar-link" href="<?php echo base_url(); ?>add_page">
              <i class="align-middle" data-feather="square"></i> <span class="align-middle">Add Admin members</span>
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

					<h1 class="h3 mb-3">Applicant List</h1>

					<div class="row w-auto p-3" >
						<div class="col-12" >
						

								<div class="card-header ">
									
								<div class="row">
	<?php foreach($status->getResult() as $user): ?>
		<div class="col-md-6">
			<div class="card mb-3">
				<div class="card-body">
					<h5 class="card-title">Application ID: <?php echo $user->app_id; ?></h5>
					<p class="card-text"><strong>Applicant Name:</strong> <?php echo $user->name; ?></p>
					<p class="card-text"><strong>Email:</strong> <?php echo $user->email; ?></p>
					<p class="card-text"><strong>Scheme Name:</strong> <?php echo $user->scheme_name; ?></p>
					<p class="card-text"><strong>District:</strong> <?php echo $user->district; ?></p>
					<p class="card-text"><strong>Area:</strong> <?php echo $user->area; ?></p>
					<p class="card-text"><strong>Date of Birth:</strong> <?php echo $user->dob; ?></p>
					<p class="card-text"><strong>Father Name:</strong> <?php echo $user->father_name; ?></p>
					<p class="card-text"><strong>Gender:</strong> <?php echo $user->gender; ?></p>
					<p class="card-text"><strong>Age:</strong> <?php echo $user->age; ?></p>
					<p class="card-text"><strong>Caste:</strong> <?php echo $user->caste; ?></p>
					<p class="card-text"><strong>Address:</strong> <?php echo $user->address; ?></p>
					<p class="card-text"><strong>Beneficiary Number:</strong> <?php echo $user->ben_no; ?></p>
					<p class="card-text"><strong>Phone Number:</strong> <?php echo $user->ph_no; ?></p>
					<p class="card-text"><strong>Payment Mode:</strong> <?php echo $user->pay_mode; ?></p>
					<p class="card-text"><strong>Aadhar Name:</strong> <?php echo $user->aadhar_name; ?></p>
					<p class="card-text"><strong>Aadhar No:</strong> <?php echo $user->aadhar_no; ?></p>
					<form action="<?php echo base_url(); ?>confirm_process/<?php echo $user->app_id; ?>" method="post">
						<div class="form-group">
							<label for="confirm">Confirmation:</label>
							<select class="form-control" id="confirm" name="approve">
								<option value="accepted">Accept</option>
								<option value="declined">Decline</option>
							</select>
						</div>
						<div class="form-group py-4">
							<input type="submit" value="Submit" class="btn btn-primary">
						</div>
					</form>
				</div>
			</div>
		</div>
	<?php endforeach; ?>
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
								<a class="text-muted" href="https://adminkit.io/" target="_blank"><strong></strong></a> - <a class="text-muted" href="https://adminkit.io/" target="_blank"><strong>Project by Government</strong></a>								&copy;
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