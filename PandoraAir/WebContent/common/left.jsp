<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%
	String contextPath = request.getContextPath(); //현재 진행 중인 프로젝트 이름 
	String CommandName = "/BookingCtrl"; //요청을 위한 url 패턴 이름
	String MyCtrlByForm = contextPath + CommandName; //폼이 있는 경우에 사용된다. 
	String MyCtrlCommand = contextPath + CommandName + "?command=";
	//out.print( MyCtrlCommand + "<br>" ); // Model2/MiniShopCtrl?command=
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
nav ul{
	list-style : none;
	margin-top: 100px;
	margin-bottom: 150%;
}
nav ul li{
	margin-top: 10px;
	margin-bottom: 10px;
}
a{
	font: sans-serif;
	font-size: x-large;
}
</style>
<title>Bootstrap Example</title>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<ul>
			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">비행정보<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="<%=MyCtrlCommand%>AirplaneList">비행기 목록</a></li>
					<li><a href="<%=MyCtrlCommand%>CityList">도시 목록</a></li>
					<li><a href="<%=MyCtrlCommand%>ScheduleList">스케줄 목록</a></li>
				</ul>
			</li>
			<li>
				<a href="#">예매</a>
			</li>
		</ul>
	</nav>
</body>
</html>