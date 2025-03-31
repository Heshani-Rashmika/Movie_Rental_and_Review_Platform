<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>CineCinema - Home</title>
    <link rel="stylesheet" href="CSS/bootstrap.min.css">
    <style>
        .hero-section {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.7)),
            url('https://source.unsplash.com/random/1920x1080/?cinema');
            background-size: cover;
            background-position: center;
            height: 100vh;
            display: flex;
            align-items: center;
            color: white;
        }
        .cta-buttons .btn {
            min-width: 150px;
            margin: 10px;
            transition: all 0.3s ease;
        }
        .cta-buttons .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }
        .features-section {
            padding: 80px 0;
            background-color: #f8f9fa;
        }
        .feature-card {
            border: none;
            border-radius: 15px;
            transition: transform 0.3s;
        }
        .feature-card:hover {
            transform: translateY(-10px);
        }
    </style>
</head>
<body>
<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
        <a class="navbar-brand" href="home1.jsp">CineCinema</a>
        <div class="navbar-nav ms-auto">
            <a class="nav-link" href="login.jsp">Login</a>
            <a class="nav-link" href="register.jsp">Register</a>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<div class="hero-section">
    <div class="container text-center">
        <h1 class="display-4 mb-4">Experience Movie Magic</h1>
        <p class="lead mb-5">Your Ultimate Movie Review & Rental Platform</p>
        <div class="cta-buttons">
            <a href="register.jsp" class="btn btn-primary btn-lg">Get Started</a>
            <a href="login.jsp" class="btn btn-outline-light btn-lg">Sign In</a>
        </div>
    </div>
</div>

<!-- Features Section -->
<div class="features-section">
    <div class="container">
        <div class="row g-4">
            <div class="col-md-4">
                <div class="card feature-card h-100">
                    <div class="card-body text-center">
                        <h5 class="card-title">🎬 Unlimited Movies</h5>
                        <p class="card-text">Access thousands of movies from classic to latest releases</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card feature-card h-100">
                    <div class="card-body text-center">
                        <h5 class="card-title">⭐ Rate & Review</h5>
                        <p class="card-text">Share your opinions and read reviews from fellow cinephiles</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card feature-card h-100">
                    <div class="card-body text-center">
                        <h5 class="card-title">🎟 Easy Rental</h5>
                        <p class="card-text">Rent movies with just a few clicks</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Footer -->
<footer class="bg-dark text-white py-4">
    <div class="container text-center">
        <p>&copy; 2024 CineCinema. All rights reserved.</p>
        <div class="social-links">
            <a href="#" class="text-white mx-2">Facebook</a>
            <a href="#" class="text-white mx-2">Twitter</a>
            <a href="#" class="text-white mx-2">Instagram</a>
        </div>
    </div>
</footer>

<script src="JS/bootstrap.bundle.min.js"></script>
</body>
</html>