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
                <h1 class="h3 mb-3">Application Form</h1>
                <div class="card mx-auto">
                    <div class="card-body">
                        <form method="post" action="<?php echo base_url(); ?>form_process">
                            <div class="form-group">
                                <label for="address">Mail</label>
                                <input class="form-control" id="email" name="email" required>
                              </div>
                              <div class="form-group">
                                <label for="schemeName">Scheme Name</label>
                                <select class="form-control" id="scheme_name" name="scheme_name" required>
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
                                <select class="form-control" id="state" name="state" required>
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
                              <input type="text" class="form-control" id="district"  name="district" required>
                            </div>
                            <div class="form-group">
                              <label for="area">Area</label>
                              <input type="text" class="form-control" id="area" name="area" required>
                            </div>
                            <div class="form-group">
                              <label for="name">Name</label>
                              <input type="text" class="form-control" id="name" name="name" required>
                            </div>
                            <div class="form-group">
                              <label for="dob">DOB</label>
                              <input type="date" class="form-control" id="dob" name="dob" required>
                            </div>
                            <div class="form-group">
                              <label for="fatherName">Father Name</label>
                              <input type="text" class="form-control" id="father_name" name="father_name" required>
                            </div>
                            <div class="form-group">
                              <label for="gender">Gender</label>
                              <select class="form-control" id="gender" name="gender" required>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Other</option>
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="age">Age</label>
                              <input type="number" class="form-control" id="age" name="age" required>
                            </div>
                            <div class="form-group">
                                
                                    <label for="caste">Caste</label>
                                    <select class="form-control" id="caste" name="caste" required>
                                      <option value="">Select a caste</option>
                                      <option value="OBC">OBC</option>
                                      <option value="SC/ST">SC/ST</option>
                                      <option value="MBC">MBC</option>
                                      <option value="BC">BC</option>
                                    </select>
                                  
                            </div>
                            <div class="form-group">
                              <label for="address">Address</label>
                              <textarea class="form-control" id="address" name="address" required></textarea>
                            </div>
                            <div class="form-group">
                              <label for="beneficiaryNumber">Beneficiary Number</label>
                              <input type="number" class="form-control" id="ben_no" name="ben_no" required>
                            </div>
                            <div class="form-group">
                              <label for="number">Number</label>
                              <input type="tel" class="form-control" id="ph_no" name="ph_no" required>
                            </div>
                            <div class="form-group">
                              <label for="paymentMode">Payment Mode</label>
                              <select class="form-control" id="pay_mode" name="pay_mode" required>
                                <option value="">Select a Mode</option>
                                <option value="Online-UPI">Online-UPI</option>
                                <option value="Bank Account">Bank Account</option>
                                <option value="Offline">Offline</option>
                                
                              </select>
                            </div>
                            <div class="form-group">
                              <label for="nameAsPerAadhar">Name as per Aadhar</label>
                              <input type="text" class="form-control" id="aadhar_name" name="aadhar_name" required>
                            </div>
                            <div class="form-group">
                              <label for="aadharNumber">Aadhar Number</label>
                              <input type="number" class="form-control" id="aadhar_no" name="aadhar_no" required>
                            </div>
                            
                            <button type="submit" class="btn btn-primary">Submit</button>
                          
                    </form>
                        
                    </div>
                </div>
            </div>
        </div>
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


    </body>
    </html>