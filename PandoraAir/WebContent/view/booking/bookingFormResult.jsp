
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
	int formrightBF = 9 - formleftBF ; //값 입력창 크기 변경
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
 		<div id="main_container" align="center" 
		class="container col-xs-offset-<%=myoffsetBF%> col-lg-offset-<%=myoffsetBF%> col-xs-<%=mywidthBF%> col-lg-<%=mywidthBF%>"> 
		
		
		<h2>왕복</h2>
		<div class="panel panel-primary sub_container">
			<div class="panel-heading" align="left">
				<font color="red"><b>왕복!</b></font>
			</div>
			
			<div class="panel-body sub_container">
				<form id="myform" name="myform" class="form-horizontal" action="<%=MyCtrlByFormBF%>" method="post">
					<input type="hidden" name="command" value="#">
					
					<div class="form-group">
						<label for="section1" class="col-xs-<%=formleftBF+1%> col-lg-<%=formleftBF+1%> control-label">구간 1</label>
	        			<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	            			<label>${requestScope.local1}</label>
	            			<!-- <input type="text" name="local1" id="local1" class="form-control"> -->
	        			</div>
	        			<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	        				<label>${requestScope.destination1}</label>
	            			<!-- <input type="text" name="destination1" id="destination1" class="form-control"> -->
	        			</div>
	        		</div>
	        		
	        		<div class="form-group">
						<label for="section2" class="col-xs-<%=formleftBF+1%> col-lg-<%=formleftBF+1%> control-label">구간 2</label>
	        			<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	        				<label>${requestScope.local2}</label>
	            			<!-- <input type="text" name="local2" id="local2" class="form-control"> -->
	        			</div>
	        			<div class="col-xs-<%=formrightBF-3%> col-lg-<%=formrightBF-3%>">
	        				<label>${requestScope.destination2}</label>
	            			<!-- <input type="text" name="destination2" id="destination2" class="form-control"> -->
	        			</div>
	        		</div>		
	        		
					<div class="form-group">
						<label for="persons" class="col-xs-<%=formleftBF+1%> col-lg-<%=formleftBF+1%> control-label">인원</label>
	        			<div class="col-xs-<%=formrightBF-4%> col-lg-<%=formrightBF-4%>">
	        				<label>${requestScope.persons}</label>
	            			<!-- <input type="text" name="persons" id="persons" class="form-control"> -->
	        			</div>
	        		</div>
				
					
					<div class="form-group">
						<div class="col-xs-<%=twelveBF%> col-lg-<%=twelveBF%>" align="center">
							<button type="submit" class="btn btn-default" onclick="return checkForm();"><b>확인 완료</b></button>
						</div>
					</div>
					
				</form>
			</div>
		</div>		
	</div>
        
        

        
        
        
        

</body>
</html>