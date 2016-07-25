
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@page import="java.text.DecimalFormat"%>
	<%
	String patternBF = "###,###";
	DecimalFormat BF = new DecimalFormat(patternBF);
	int twelveBF = 12; //그리드 시스템의 숫자 값
	%>
    <%
	int myoffsetBF = 1 ;
	int mywidthBF = 5 * myoffsetBF;
	int formleftBF = 2 ;
	int formrightBF = 8 - formleftBF ; //값 입력창 크기 변경
	%>
	
	
	<%
	String contextPathBF = request.getContextPath(); //현재 진행 중인 프로젝트 이름 
	String CommandNameBF = "/BookingCtrl"; //요청을 위한 url 패턴 이름
	String MyCtrlByFormBF = contextPathBF + CommandNameBF; //폼이 있는 경우에 사용된다. 
	String MyCtrlCommandBF = contextPathBF + CommandNameBF + "?command=";
	//out.print( MyCtrlCommand + "<br>" ); // Model2/MiniShopCtrl?command=
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>


</head>
<body>
 		<div id="main_container" align="center" class="container col-xs-offset-<%=myoffsetBF%> col-lg-offset-<%=myoffsetBF%> col-xs-<%=mywidthBF%> col-lg-<%=mywidthBF%>"> 
		
		
		<h2>왕복</h2>
		<div class="panel panel-primary sub_container">
		
			<div class="panel-heading" align="left">
				<font color="red"><b>구간 1 : ${requestScope.local1} - ${requestScope.destination1}</b></font>
				<font color="blue"><b>구간 2 : ${requestScope.local2} - ${requestScope.destination2}</b></font>
			</div>
			
			<table class="table table-striped table-hover">
				<thead>
					
					<tr>
						<th>편명</th>
						<th>출발시간</th>
						<th>도착시간</th>
						<th>운임요금</th>
					</tr>
					
				</thead>
				<tr>
				</tr>
					<tr>
						<td>${bean.airplane}</td>
						<td>${bean.departure_time}</td>
						<td>${bean.arrival_time}</td>
						<td>${bean.fare}</td>
					</tr>
			</table>
			
		</div>		
	</div>

</body>
</html>