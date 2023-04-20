<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>admin page</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">
   
  <!-- Google fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap" rel="stylesheet">
  <!-- Stylesheet -->
  <link rel="stylesheet" href="fontawesome/css/all.min.css">
  <link rel="stylesheet" href="css/vendor/bootstrap-4.3.1/bootstrap.min.css">
  <link rel="stylesheet" href="css/main.css">
    <style>
    </style>
  <meta name="theme-color" content="#fafafa">

</head>
<body>
   <div class="container-fluid px-0">
      <!-- The side bar -->
      <div class="side-bar side-bar-lg-active" data-theme="purple">
          <!-- Brand details -->
          <div class="side-menu-brand d-flex flex-column justify-content-center align-items-center clear mt-3">
              <img src="img/QbyteIcon.png" alt="bran_name" class="brand-img">
              <a href="#" class="brand-name mt-2 ml-2 font-weight-bold">Admin</a>
          </div>
          <!-- Side bar menu -->
          <div class="the_menu mt-5">
              <!-- Heading -->
              <div class="side-menu-heading d-flex">
                  <h6 class=" font-weight-bold pb-2 mx-3">  </h6>
                  <a href="#" class="font-weight-bold ml-auto px-3">
                      <i class="fas fa-sign-out-alt"></i>
                  </a>
              </div>

              <!-- Menu item -->
              <div id="accordion">
                  <ul class="side-menu p-0 m-0 mt-3">
                      <li class="side-menu-item px-3"><a href="#" class="w-100 py-3 pl-4">Dashboard</a></li>
                      <!-- Sub menu parent -->
                      <li class="side-menu-item px-3"><a href="#" class="w-100 py-3 pl-4 sub-menu-parent" data-toggle="collapse" data-target="#sub_menu_1" aria-expanded="false" aria-controls="sub_menu_1">Application List</a></li>
                      <!-- Sub menu -->
                                              <!-- Sub menu parent -->
                      <li class="side-menu-item px-3"><a href="#" class="w-100 py-3 pl-4 sub-menu-parent" data-toggle="collapse" data-target="#form-sub-menu" aria-expanded="false" aria-controls="form-sub-menu">Previous List</a></li>
                      
                      <li class="side-menu-item px-3"><a href="#" class="w-100 py-3 pl-4 sub-menu-parent" data-toggle="collapse" data-target="#chart-sub-menu" aria-expanded="false" aria-controls="chart-sub-menu">Staff List</a></li>
                      
                      <li class="side-menu-item px-3"><a href="#" class="w-100 py-3 pl-4 sub-menu-parent" data-toggle="collapse" data-target="#table-sub-menu" aria-expanded="false" aria-controls="table-sub-menu">Reject List</a></li>
                      <!-- Sub menu -->
                      

                      
                      <!-- Sub menu parent -->
                      <li class="side-menu-item px-3"><a href="index.html" class="w-100 py-3 pl-4 sub-menu-parent" data-toggle="collapse" data-target="#sub_menu_2" aria-expanded="true" aria-controls="sub_menu_2">Log Out</a></li>
                      <!-- Sub menu -->
                     
                  </ul>
              </div>
          </div>
      </div>
      
         <iframe  src="stat.html" frameBorder="0"  width="1100" height="500" style="position: relative; left: 250px;"></iframe> 
      

      



</body>
</html>