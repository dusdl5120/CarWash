<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>CARWASH MAIN</title>

<!-- Bootstrap core CSS -->
<link href="resources/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom fonts for this template -->
<link href="resources/vendor/font-awesome/css/font-awesome.min.css"	rel="stylesheet" type="text/css">
<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

<!-- Bootstrap core JavaScript -->
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Plugin JavaScript -->
<script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="resources/vendor/scrollreveal/scrollreveal.min.js"></script>
<script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

<!-- Custom scripts for this template -->
<script src="resources/js/creative.min.js"></script>

<!-- Plugin CSS -->
<link href="resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/creative.min.css" rel="stylesheet">

</head>

<script>
function() {
	$("#myModal").modal();
};

</script>

<body>
    <!-- Navigation 시작 -->
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand js-scroll-trigger" href="#page-top">CarWash</a>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>11``
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Notice</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">Information</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">Reservation</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">Community</a></li>
				</ul>
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link js-scroll-trigger" data-toggle="modal" href="#myModal" style="magrin-left: 50px;">Login</a></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger" href="#">Join</a></li>
				</ul>
			</div>
		</div>
	</nav>
</body>
</html>

