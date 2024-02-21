<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<title><tiles:getAsString name="title" /></title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Font Stylesheet -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600;700;800&display=swap" rel="stylesheet"> 
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
        
<!-- Icon Font Stylesheet -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">


<!-- Libraries Stylesheet -->
<link href="resources/pilling/lib/animate/animate.min.css" rel="stylesheet">
<link href="resources/pilling/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/pilling/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/pilling/css/style.css" rel="stylesheet">
        
</head>

<body>
	<div id="wrapper">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-grow text-primary" role="status"></div>
		</div>
		<!-- Spinner End -->

		<!-- header Start -->
		<tiles:insertAttribute name="header" />
		<!-- header End -->

		<!-- body Start -->
		<tiles:insertAttribute name="body" />
		<!-- body end -->

		<!-- Footer Start -->
		<tiles:insertAttribute name="footer" />
		<!-- Footer End -->

	    <!-- Back to Top -->
	    <a href="#" class="btn btn-primary rounded-circle border-3 back-to-top"><i class="fa fa-arrow-up"></i></a>
	</div>
	
<!-- JavaScript Libraries -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="resources/pilling/lib/wow/wow.min.js"></script>
<script src="resources/pilling/lib/easing/easing.min.js"></script>
<script src="resources/pilling/lib/waypoints/waypoints.min.js"></script>
<script src="resources/pilling/lib/owlcarousel/owl.carousel.min.js"></script>
<script src="https://kit.fontawesome.com/14e995bc13.js" crossorigin="anonymous"></script>

<!-- Template Javascript -->
<script src="resources/pilling/js/main.js"></script>
</body>
</html>
