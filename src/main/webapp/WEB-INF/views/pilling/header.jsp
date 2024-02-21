<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
        <!-- Topbar Start -->
        <div class="container-fluid topbar-top bg-primary">
            <div class="container">
                <div class="d-flex justify-content-between topbar py-2">
                    <div class="d-flex align-items-center flex-shrink-0 topbar-info">
                        <a href="#" class="me-4 text-secondary"><i class="fas fa-map-marker-alt me-2 text-dark"></i>123 Street, CA, USA</a>
                        <a href="#" class="me-4 text-secondary"><i class="fas fa-phone-alt me-2 text-dark"></i>+01234567890</a>
                        <a href="#" class="text-secondary"><i class="fas fa-envelope me-2 text-dark"></i>Example@gmail.com</a>
                    </div>
                    <div class="text-end pe-4 me-4 border-end border-dark search-btn">
                        <div class="search-form">
                            <form method="post" action="index.html">
                                <div class="form-group">
                                    <div class="d-flex">
                                        <input type="search" class="form-control border-0 rounded-pill" name="search-input" value="" placeholder="Search Here" required=""/>
                                        <button type="submit" value="Search Now!" class="btn"><i class="fa fa-search text-dark"></i></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="d-flex align-items-center justify-content-center topbar-icon">
                        <a href="#" class="me-4"><i class="fab fa-facebook-f text-dark"></i></a>
                        <a href="#" class="me-4"><i class="fab fa-twitter text-dark"></i></a>
                        <a href="#" class="me-4"><i class="fab fa-instagram text-dark"></i></a>
                        <a href="#" class=""><i class="fab fa-linkedin-in text-dark"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <div class="container-fluid bg-dark">
            <div class="container">
                <nav class="navbar navbar-dark navbar-expand-lg py-lg-0">
                    <a href="index.html" class="navbar-brand">
                        <h1 class="text-primary mb-0 display-5">Pest<span class="text-white">Kit</span><i class="fa fa-spider text-primary ms-2"></i></h1>
                    </a>
                    <button class="navbar-toggler bg-primary" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                        <span class="fa fa-bars text-dark"></span>
                    </button>
                    <div class="collapse navbar-collapse me-n3" id="navbarCollapse">
                        <div class="navbar-nav ms-auto">
                            <a href="index.html" class="nav-item nav-link active">Home</a>
                            <a href="about.html" class="nav-item nav-link">About</a>
                            <a href="service.html" class="nav-item nav-link">Services</a>
                            <a href="project.html" class="nav-item nav-link">Projects</a>
                            <div class="nav-item dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                                <div class="dropdown-menu m-0 bg-primary">
                                    <a href="price.html" class="dropdown-item">Pricing Plan</a>
                                    <a href="blog.html" class="dropdown-item">Blog Post</a>
                                    <a href="team.html" class="dropdown-item">Team Members</a>
                                    <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                                    <a href="404.html" class="dropdown-item">404 Page</a>
                                </div>
                            </div>
                            <a href="contact.html" class="nav-item nav-link">Contact</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->
</body>
</html>