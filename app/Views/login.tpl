<!doctype html>
<html class="no-js" lang="en">

<head>
  <meta charset="utf-8">
  <title>Login | qbytAdmin</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Google fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet">
  <!-- Stylesheet -->
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
                        <?php if (isset($login_error) && $login_error) { ?>
    <div class="alert alert-danger" role="alert">
        Incorrect email or password. Please try again.
    </div>
<?php } ?>
                             <form action="<?php echo base_url();?>login_process" method="post">
                            <h5 class="text-dark my-3">Sign In</h5>
                            <!-- Email -->
                            <div class="form-group mb-2">
                                <label for="email" class="text-muted">Email Address</label>
                                <input id="email" class="form-control badge-pill bg-light" type="text" name="email" REQUIRED>
                            </div>
                            <!-- Passeord -->
                            <div class="form-group mb-2">
                                <label for="Passeord" class="text-muted">Password</label>
                                <input id="Passeord" class="form-control badge-pill bg-light" type="password" name="pass" REQUIRED>
                            </div>
                            <!-- Remember me checkbox -->
                            <div class="custom-control custom-checkbox">
                                <input id="my-input" class="custom-control-input" type="checkbox" name="" value="true">
                                <label for="my-input" class="custom-control-label">Remember me</label>
                            </div>

                            <button type="submit" class="btn btn-primary btn-outline-primary badge-pill btn-block w-75 m-auto">Sign in</button>
                            <p class="text-center mt-3"><a href="<?php echo base_url(); ?>Home/forget_page" >Forgot Password?</a></p>
                            <p class="text-center mt-3"><a href="<?php echo base_url(); ?>Home/registration_page" >Register</a></p>
                        </form>
                    </div>
                    <!-- Right side -->
                    <div class="col-md-6 d-flex flex-column justify-content-center align-items-center pt-3 pt-md-0">
                        <button class="btn btn-raised btn-google btn-icon m-2 badge-pill btn-block w-75"><i class="fab fa-google"></i> <p class="d-inline">Sign up with Google</p></button>
                        <button class="btn btn-raised btn-facebook btn-icon m-2 badge-pill btn-block w-75"><i class="fab fa-facebook-f"></i> <p class="d-inline">Sign up with Facebook</p></button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>

</html>