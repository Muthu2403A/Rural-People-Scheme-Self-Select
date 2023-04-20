<html>
    <head>
        <title>Instruction Form</title>
        <meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <style>
            
        </style>
    </head>
    <body>
        <div class="content text-center">
            <div class="container-fluid">
                <h1 class="h3 mb-3">Introduction</h1>
                <div class="card mx-auto">
                    <div class="card-body">
                        <form method="post" action="<?php echo base_url(); ?>form_process">
                            <div class="form-group">
                                <label for="address">Mail</label>
                                <input class="form-control" id="email" name="email">
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
                              <input type="text" class="form-control" id="state" name="state">
                            </div>
                            <div class="form-group">
                              <label for="district">District</label>
                              <input type="text" class="form-control" id="district"  name="district">
                            </div>
                            <div class="form-group">
                              <label for="area">Area</label>
                              <input type="text" class="form-control" id="area" name="area">
                            </div>
                            <div class="form-group">
                              <label for="name">Name</label>
                              <input type="text" class="form-control" id="name" name="name">
                            </div>
                            <div class="form-group">
                              <label for="dob">DOB</label>
                              <input type="date" class="form-control" id="dob" name="dob">
                            </div>
                            <div class="form-group">
                              <label for="fatherName">Father Name</label>
                              <input type="text" class="form-control" id="father_Name" name="father_Name">
                            </div>
                            <div class="form-group">
                              <label for="gender">Gender</label>
                              <select class="form-control" id="gender" name="gender">
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="age">Age</label>
                              <input type="number" class="form-control" id="age" name="age">
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
                              <textarea class="form-control" id="address" name="address"></textarea>
                            </div>
                            <div class="form-group">
                              <label for="beneficiaryNumber">Beneficiary Number</label>
                              <input type="number" class="form-control" id="ben_no" name="ben_no">
                            </div>
                            <div class="form-group">
                              <label for="number">Number</label>
                              <input type="tel" class="form-control" id="ph_no" name="ph_no">
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
                              <input type="text" class="form-control" id="aadhar_name" name="aadhar_name">
                            </div>
                            <div class="form-group">
                              <label for="aadharNumber">Aadhar Number</label>
                              <input type="number" class="form-control" id="aadhar_no" name="aadhar_no">
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Submit</button>
                          
                    </form>
                        
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(document).ready(function() {
            $("#schemeName").on("change", function() {
                var selectedScheme = $(this).val();
                if (selectedScheme === "") {
                $("#schemeTypeGroup").hide();
                } else {
                $("#schemeTypeGroup").show();
                // Here you would replace the below switch statement with your own logic to determine the Scheme Type options based on the selected Scheme Name option
                switch(selectedScheme) {
                    case "NSAP":
                    $("#schemeType").html("<option value=''>Select a scheme type</option><option value='IGNOAPS'>IGNOAPS</option><option value='IGNWPS'>IGNWPS</option><option value='IGNDPS'>IGNDPS</option><option value='NFPS'>NFPS</option>");
                    break;
                    case "PMGSY":
                    $("#schemeType").html("<option value=''>Select a scheme type</option><option value='PMGSY-I'>PMGSY-I</option><option value='PMGSY-II'>PMGSY-II</option><option value='PMGSY-III'>PMGSY-III</option>");
                    break;
                    case "SPMRM":
                    $("#schemeType").html("<option value=''>Select a scheme type</option><option value='SPMRM'>SPMRM</option>");
                    break;
                    case "PMAY-G":
                    $("#schemeType").html("<option value=''>Select a scheme type</option><option value='PMAY-G'>PMAY-G</option>");
                    break;
                    case "Mission Antyodaya":
                    $("#schemeType").html("<option value=''>Select a scheme type</option><option value='Mission Antyodaya'>Mission Antyodaya</option>");
                    break;
                    case "MGNREGA":
                    $("#schemeType").html("<option value=''>Select a scheme type</option><option value='MGNREGA'>MGNREGA</option>");
                    break;
                    case "DDU_GKY":
                    $("#schemeType").html("<option value=''>Select a scheme type</option><option value='DDU_GKY'>DDU_GKY</option>");
                    break;
                    case "DAY-NRLM":
                    $("#schemeType").html("<option value=''>Select a scheme type</option><option value='DAY-NRLM'>DAY-NRLM</option>");
                    break;
                }
                }
            });
            });
        </script>


    </body>
    </html>