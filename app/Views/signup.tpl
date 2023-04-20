<!doctype html>
<html class="no-js" lang="en">

<head>
  <meta charset="utf-8">
  <title>Sign UP | qbytAdmin</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Google fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet">
  <!-- Stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.18/dist/sweetalert2.min.js"></script>

  
   <link rel="stylesheet" href="<?php echo base_url(); ?>content\common\fontawesome\css\all.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>content\common\css\vendor\bootstrap-4.3.1\bootstrap.min.css">
  <link rel="stylesheet" href="<?php echo base_url(); ?>content\common\css\main.css">
    <!-- Theme color -->
  <meta name="theme-color" content="#fafafa">
</head>

<body class="position-relative">
    <!-- Main content start -->
    <div class="login-page d-flex flex-row justify-content-center align-items-center">
        <!-- Login card -->
        <div class="card mx-3 mx-md-0 border-0 rounded-lg">
            <div class="card-body">
                <!-- Row -->
                <div class="row">
                    <!-- Left side -->
                    <div class="col-md-6 border-0 border-md-right">
                        <!-- Brand -->
                        <div class="login-brand m-3 m-md-0 d-flex justify-content-center align-items-center">
                            <img src="<?php echo base_url(); ?>content\common\img\QbyteIcon.png" alt="image" class="w-25">
                        </div>
                        <form id="registration-form" action="<?php echo base_url();?>Home/registration_process" method="post" onsubmit="return validateForm();">

                            <h5 class="text-dark my-3">Sign Up</h5>
                            <!-- Name -->
                            <div class="form-group mb-2">
                                <label for="name" class="text-muted">Your name</label>
                                <input id="name" class="form-control badge-pill bg-light" type="text" name="name" REQUIRED>
                            </div>
                            <!-- Email -->
                            <div class="form-group mb-2">
                                <label for="email" class="text-muted">Email Address</label>
                                <input id="email" class="form-control badge-pill bg-light" type="email" name="email" REQUIRED>
                            </div>
                            <!-- password -->
                            <div class="form-group mb-2">
                                <label for="password" class="text-muted">Password</label>
                                <input id="pass" class="form-control badge-pill bg-light" type="password" name="pass" REQUIRED>
                            </div>
                            <!-- Password -->
                            <div class="form-group mb-4">
                                <label for="c-pass" class="text-muted">Confirm Password</label>
                                <input id="cpass" class="form-control badge-pill bg-light" type="password" name="cpass" REQUIRED>
                            </div>

                            <button type="submit" class="btn btn-primary btn-outline-primary badge-pill btn-block w-75 m-auto">Sign Up</button>
                        </form>
                    </div>
                    <!-- Right side -->
                    <div class="col-md-6 d-flex flex-column justify-content-center align-items-center pt-3 pt-md-0">
                        <button class="btn btn-raised btn-primary btn-icon m-2 badge-pill btn-block w-75"><i class="fas fa-at"></i> <p class="d-inline">Sign up with Email</p></button>
                        <button class="btn btn-raised btn-google btn-icon m-2 badge-pill btn-block w-75"><i class="fab fa-google"></i> <p class="d-inline">Sign in with Google</p></button>
                        <button class="btn btn-raised btn-facebook btn-icon m-2 badge-pill btn-block w-75"><i class="fab fa-facebook-f"></i> <p class="d-inline">Sign in with Facebook</p></button>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
function validateForm() {
    var name = document.getElementById("name").value;
    var email = document.getElementById("email").value;
    var pass = document.getElementById("pass").value;
    var cpass = document.getElementById("cpass").value;

    if (name == "") {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Please enter your name.'
        });
        return false;
    }

    if (email == "") {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Please enter your email address.'
        });
        return false;
    }

    if (pass == "") {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Please enter a password.'
        });
        return false;
    }

    if (cpass == "") {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Please confirm your password.'
        });
        return false;
    }

    if (pass != cpass) {
        Swal.fire({
            icon: 'error',
            title: 'Oops...',
            text: 'Passwords do not match.'
        });
        return false;
    }

    // If the form is valid, submit it
    Swal.fire({
        icon: 'success',
        title: 'Success!',
        text: 'Your registration has been submitted.'
    });
    return true;
}
</script>

</body>

</html>