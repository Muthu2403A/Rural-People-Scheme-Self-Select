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
				<div class="content text-center">
            <div class="container-fluid">
                <h1 class="h3 mb-3">Update Application</h1>
                <div class="card mx-auto">
				<?php foreach($status->getResult() as $user): ?>
                    <div class="card-body">
                        <form method="post" action="<?php echo base_url(); ?>update_process">
                            <div class="form-group">
                                <label for="address">Mail</label>
                                <input class="form-control" id="email" name="email" value="<?php echo $user->email; ?>">
                              </div>
                              <div class="form-group">
                                <label for="schemeName">Scheme Name</label>
                                <select class="form-control" id="scheme_name" name="scheme_name">
                                  <option value="">Select a scheme</option>
                                  <option value="NSAP">NSAP</option>
                                  <option value="PMGSY">PMGSY</option>
                                  <option value="DAY-NRLM">DAY-NRLM</option>
                                  <option value="DDU_GKY">DDU_GKY</option>
                                  <option value="MGNREGA">MGNREGA</option>
                                  <option value="Mission Antyodaya">Mission Antyodaya</option>
                                  <option value="PMAY-G">PMAY-G</option>
                                  <option value="SPMRM">SPMRM</option>
                                </select>
                              </div>
                              
                              <div class="form-group" id="schemeTypeGroup" style="display: none;">
                                <label for="schemeType">Scheme Type</label>
                                <select class="form-control" id="scheme_type" name="scheme_type">
                                  <option value="">Select a scheme type</option>
                                </select>
                              </div>
                              
                              <div class="form-group">
                                <label for="state">State</label>
                                <select class="form-control" id="state" name="state">
                                  <option value="">Select a state</option>
                                  <option value="Andhra Pradesh">Andhra Pradesh</option>
                                  <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                                  <option value="Assam">Assam</option>
                                  <option value="Bihar">Bihar</option>
                                  <option value="Chhattisgarh">Chhattisgarh</option>
                                  <option value="Goa">Goa</option>
                                  <option value="Gujarat">Gujarat</option>
                                  <option value="Haryana">Haryana</option>
                                  <option value="Himachal Pradesh">Himachal Pradesh</option>
                                  <option value="Jharkhand">Jharkhand</option>
                                  <option value="Karnataka">Karnataka</option>
                                  <option value="Kerala">Kerala</option>
                                  <option value="Madhya Pradesh">Madhya Pradesh</option>
                                  <option value="Maharashtra">Maharashtra</option>
                                  <option value="Manipur">Manipur</option>
                                  <option value="Meghalaya">Meghalaya</option>
                                  <option value="Mizoram">Mizoram</option>
                                  <option value="Nagaland">Nagaland</option>
                                  <option value="Odisha">Odisha</option>
                                  <option value="Punjab">Punjab</option>
                                  <option value="Rajasthan">Rajasthan</option>
                                  <option value="Sikkim">Sikkim</option>
                                  <option value="Tamil Nadu">Tamil Nadu</option>
                                  <option value="Telangana">Telangana</option>
                                  <option value="Tripura">Tripura</option>
                                  <option value="Uttar Pradesh">Uttar Pradesh</option>
                                  <option value="Uttarakhand">Uttarakhand</option>
                                  <option value="West Bengal">West Bengal</option>
                                </select>
                              </div>
                              
                            <div class="form-group">
                              <label for="district">District</label>
                              <input type="text" class="form-control" id="district"  name="district" value="<?php echo $user->district; ?>">
                            </div>
                            <div class="form-group">
                              <label for="area">Area</label>
                              <input type="text" class="form-control" id="area" name="area" value="<?php echo $user->area; ?>">
                            </div>
                            <div class="form-group">
                              <label for="name">Name</label>
                              <input type="text" class="form-control" id="name" name="name" value="<?php echo $user->name; ?>">
                            </div>
                            <div class="form-group">
                              <label for="dob">DOB</label>
                              <input type="date" class="form-control" id="dob" name="dob" value="<?php echo $user->dob; ?>">
                            </div>
                            <div class="form-group">
                              <label for="fatherName">Father Name</label>
                              <input type="text" class="form-control" id="father_Name" name="father_name" value="<?php echo $user->father_name; ?>">
                            </div>
                            <div class="form-group">
                              <label for="gender">Gender</label>
                              <select class="form-control" id="gender" name="gender" value="<?php echo $user->gender; ?>">
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="age">Age</label>
                              <input type="number" class="form-control" id="age" name="age" value="<?php echo $user->age; ?>">
                            </div>
                            <div class="form-group">
                                
                                    <label for="caste">Caste</label>
                                    <select class="form-control" id="caste" name="caste">
                                      <option value="">Select a caste</option>
                                      <option value="OBC">OBC</option>
                                      <option value="SC/ST">SC/ST</option>
                                      <option value="MBC">MBC</option>
                                      <option value="BC">BC</option>
                                    </select>
                                  
                            </div>
                            <div class="form-group">
                              <label for="address">Address</label>
                              <textarea class="form-control" id="address" name="address" value="<?php echo $user->address; ?>"></textarea>
                            </div>
                            <div class="form-group">
                              <label for="beneficiaryNumber">Beneficiary Number</label>
                              <input type="number" class="form-control" id="ben_no" name="ben_no" value="<?php echo $user->ben_no; ?>">
                            </div>
                            <div class="form-group">
                              <label for="number">Number</label>
                              <input type="tel" class="form-control" id="ph_no" name="ph_no" value="<?php echo $user->ph_no; ?>">
                            </div>
                            <div class="form-group">
                              <label for="paymentMode">Payment Mode</label>
                              <select class="form-control" id="pay_mode" name="pay_mode">
                                <option value="">Select a Mode</option>
                                <option value="Online-UPI">Online-UPI</option>
                                <option value="Bank Account">Bank Account</option>
                                <option value="Offline">Offline</option>
                                
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="nameAsPerAadhar">Name as per Aadhar</label>
                              <input type="text" class="form-control" id="aadhar_name" name="aadhar_name" value="<?php echo $user->aadhar_name; ?>">
                            </div>
                            <div class="form-group">
                              <label for="aadharNumber">Aadhar Number</label>
                              <input type="number" class="form-control" id="aadhar_no" name="aadhar_no" value="<?php echo $user->aadhar_no; ?>">
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Submit</button>
                          
                    </form>
                        
                    </div>
					<?php endforeach; ?>
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
	<script>// Define a function to update the scheme type options based on the selected scheme name
          function updateSchemeTypeOptions(selectedScheme) {
            // Get a reference to the scheme type select element
            const schemeTypeSelect = document.getElementById("scheme_type");
          
            // Define an object to map scheme names to their corresponding scheme types
            const schemeTypeOptionsMap = {
              "NSAP": ["IGNOAPS", "IGNWPS", "IGNDPS", "NFPS"],
              "PMGSY": ["PMGSY-I", "PMGSY-II", "PMGSY-III"],
              "SPMRM": ["SPMRM"],
              "PMAY-G": ["PMAY-G"],
              "Mission Antyodaya": ["Mission Antyodaya"],
              "MGNREGA": ["MGNREGA"],
              "DDU_GKY": ["DDU_GKY"],
              "DAY-NRLM": ["DAY-NRLM"]
            };
          
            // Get the scheme type options for the selected scheme name from the map
            const schemeTypeOptions = schemeTypeOptionsMap[selectedScheme];
          
            // Clear any existing options from the scheme type select element
            schemeTypeSelect.innerHTML = "<option value=''>Select a scheme type</option>";
          
            // Add the new scheme type options to the scheme type select element
            schemeTypeOptions.forEach(function(schemeType) {
            const optionElement = document.createElement("option");
            optionElement.value = schemeType.toLowerCase().replace(" ", "-");
            optionElement.textContent = schemeType;
            schemeTypeSelect.appendChild(optionElement);
          });

          
            // Show the scheme type select element
            document.getElementById("schemeTypeGroup").style.display = "block";
          }
          
          // Attach an event listener to the scheme select element
          const schemeSelect = document.getElementById("scheme_name");
          schemeSelect.addEventListener("change", function(event) {
            const selectedScheme = event.target.value;
            if (selectedScheme === "") {
              // Hide the scheme type select element if no scheme is selected
              document.getElementById("schemeTypeGroup").style.display = "none";
            } else {
              // Update the scheme type options if a scheme is selected
              updateSchemeTypeOptions(selectedScheme);
            }
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