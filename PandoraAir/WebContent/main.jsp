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
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<link type="text/css" rel="stylesheet" href="./view/css/button1.css"><!-- button css -->

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

 position:relative;

 float:left; /* optional */

}

.image .button {

 position:absolute;

 top:40px; /* in conjunction with left property, decides the text position */

 left:80px;

 width:700px; /* optional, though better have one */

}


</style>
<script type="text/javascript">

	function goto1(){
	
		location.href="<%=geturl%>?menu1=1&menu2=1";
	}
	function goto2(){
		location.href="<%=geturl%>?menu1=2&menu2=1";
	}

</script>
</head>
<body>

	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-2 sidenav">
			
				<%@ include file="./common/left.jsp" %>

			<br>
			</div>

			<div class="col-sm-10 bgset" >
				<!-- <div class="container">
  					<img src="./image/air1.jpg">
  					
  					<div > -->
  					
  					
			<div class="image">

                <img alt="" src="./image/main1.jpg" />
                
            
   			<div  class="button" width: 430px;">
  				<ul  style=" margin-top: 5px;">
  					<c:if test="sessionScope.whologin != 0">
  					<input class="mw-ui-button" type="button" onclick="goto1()" id="b1" value="국내선" style="">
					<input class="mw-ui-button" type="button" onclick="goto2()" id="b2" value="국제선">
					</c:if>
		
	<%
		String menu1 = request.getParameter("menu1");

		if(menu1 != null) {
			if(menu1.equals("1")) {
	%>
				<%@ include file="./view/booking/bookingFormLocal.jsp"%>
	<%
			} else if(menu1.equals("2")) {
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

	<footer class="container-fluid">
		<p>Footer Text</p>
	</footer>

</body>
</html>
