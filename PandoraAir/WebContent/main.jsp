<%@ include file="./common/header.jsp"%>
<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
	height: 100% px
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
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
	/* .bgset{
		background-image: url('./image/air1.jpg');
	} */
	


</style>
</head>
<body>

	<div class="container-fluid">
		<div class="row content">
			<div class="col-sm-2 sidenav">
			
			<!-- 여기에 left 부분 들어가야됨 -->
			<%-- <%@ include file="./common/left.jsp" %> --%>
			
			
			<br>
			<a href="<%=MyCtrlCommand1%>AirplaneList">비행기 목록</a><br>
			<a href="<%=MyCtrlCommand1%>CityList">도시 목록</a><br>
			<a href="<%=MyCtrlCommand1%>ScheduleList">스케줄 목록</a><br>
			<%-- <a href="<%=MyCtrlCommand1%>bookingForm">예매 하기</a><br> --%>
			
			
			<%-- <%=MyCtrlByForm%><br>
			<%=MyCtrlCommand %><br> --%>
			</div>

			<div class="col-sm-10 bgset" >
			<img src="./image/air1.jpg">
				<div class="container">
  
  				
 					
 			<!-- <ul class="nav navbar-nav">
							<li class="dropdown-toggle"><a href="" class="dropdown-toggle" data-toggle="dropdown">회원 정보 <b class="caret"></b></a>
						<ul class="dropdown-menu">	
						
						<li><a href="">예매정보 확인</a></li>
						<li><a href="">회원정보 수정</a></li>
						<li><a href="">회원정보 탈퇴</a></li>
						
					</ul>
				</li>
			</ul> -->
  					
				</div>
				
			</div>

		</div>
	</div>

	<footer class="container-fluid">
		<p>Footer Text</p>
	</footer>

</body>
</html>
