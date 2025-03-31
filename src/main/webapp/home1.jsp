<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FilmHorizon</title>
    <link rel="stylesheet" href="CSS/style.css">
    <!--bootstrap linked-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<!-- Navbar Start -->
<div class="navbar-dark">
    <nav class="navbar navbar-expand-lg navbar-dark container">
        <a class="navbar-brand py-2" href="#">
            <img src="img/brand/brand logo.png" width="120" height="40" alt="Brand Logo">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>



        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>



                <!-- User Login Image -->
                <li class="nav-item active">
                    <a class="nav-link" href="#">
                        <img src="img/brand/white-button-login.png" width="33" height="33" alt="Login">
                    </a>
                </li>
            </ul>
        </div>
    </nav>
</div>
<!-- Navbar End -->





<!--hero section start-->
<div style="height: 100vh; background-image: url(img/Home/homepage.png); background-size: cover; background-position: center;" class="position-relative w-100">
    <div class="position-absolute text-white d-flex flex-column align-items-start justify-content-center" style="top: 0; right: 0; bottom: 0; left: 0; background-color: rgba(0,0,0,.7);">
        <div class="container">
            <div class="col-md-6">
                <span style="color: #bbb;" class="text-uppercase">Your Path to Film Mastery</span>
                <!-- on small screens remove display-4 -->
                <h1 class="mb-4 mt-2 display-4 font-weight-bold">Discover <span style="color: #9B5DE5;">Film Horizon</span></h1>
                <p  style="color: #bbb;">At Film Horizon, we bring the magic of movies to your fingertips. Whether you're a fan of classic films or the latest blockbusters, our extensive collection caters to every taste and genre. Dive into reviews, trailers, and exclusive interviews that enrich your viewing experience. Join our community of film enthusiasts and explore the stories that shape our world. Ready to embark on your cinematic journey?</p>
                <div class="mt-5">
                    <!-- hover background-color: white; color: black; -->
                    <a href="register.jsp" class="btn px-5 py-3 text-white mt-3 mt-sm-0" style="border-radius: 30px; background-color: #6b207e;">Register</a>
                    <a href="login.jsp" class="btn px-5 py-3 text-white mt-3 mt-sm-0" style="border-radius: 30px; background-color: #6b207e;">Login</a>

                </div>
            </div>
        </div>
    </div>
</div>



<!--hero section end-->


</body>


<!--java script-->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>