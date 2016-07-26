<%@ include file="./common/header.jsp"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	StringBuffer geturl = request.getRequestURL();
%>
<head>
<title>PandoraAir Main</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link type="text/css" rel="stylesheet" href="./view/css/button1.css">
<!-- button css -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>

/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
	height: 100%;
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 1024px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}

.image {
	position: relative;
	float: left; /* optional */
}

.image .button {
	position: absolute;
	top: 40px;
	/* in conjunction with left property, decides the text position */
	left: 80px;
	width: 700px; /* optional, though better have one */
}

#cf1 {
	height: 600px;
}

#c2 {
	padding-left: 0px;
	padding-right: 0px;
	width: 933px;
}

#bgset {
	padding-left: 0px;
}
</style>

<script type="text/javascript">

	function goto1(){
	
		location.href="<%=geturl%>?menu1=1&menu2=1";
	}
	function goto2(){
		location.href="<%=geturl%>
	?menu1=2&menu2=1";
	}
</script>
</head>
<body>

	<div class="container-fluid" id="cf1">
		<div class="row content">
			<div class="col-sm-2 sidenav">


				<%@ include file="./common/left.jsp"%>
			</div>

			<div class="col-sm-10 bgset">
				<div class="image">


					<div class="container" id="c2">
						<div id="myCarousel" class="carousel slide" data-ride="carousel">
							<!-- Indicators -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
								<li data-target="#myCarousel" data-slide-to="3"></li>
							</ol>

							<!-- Wrapper for slides -->
							<div class="carousel-inner" role="listbox">
								<div class="item active">
									<img src="./image/122.jpg" alt="Chania" width="932"
										height="522">
								</div>

								<div class="item">
									<img src="./image/123.jpg" alt="Chania" width="932"
										height="522">
								</div>

								<div class="item">
									<img src="./image/124.jpg" alt="Flower" width="932"
										height="522">
								</div>

								<div class="item">
									<img src="./image/125.jpg" alt="Flower" width="932"
										height="522">
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel" role="button"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								role="button" data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</div>


					<div class="button"width: 430px;">

						<ul style="margin-top: 5px;">
							<c:if test="${whologin != 0}">
								<input class="mw-ui-button" type="button" onclick="goto1()"
									id="b1" value="국내선">
								<input class="mw-ui-button" type="button" onclick="goto2()"
									id="b2" value="국제선">
							</c:if>

							<%
								String menu1 = request.getParameter("menu1");

								if (menu1 != null) {
									if (menu1.equals("1")) {
							%>
							<%@ include file="./view/booking/bookingFormLocal.jsp"%>
							<%
								} else if (menu1.equals("2")) {
							%>
							<%@ include file="./view/booking/bookingFormGrobal.jsp"%>
							<%
								}
								}
							%>
						</ul>

					</div>

				</div>
			</div>
		</div>

	</div>

	</div>
	</div>

</body>
</html>
