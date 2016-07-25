
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@page import="java.text.DecimalFormat"%>
<%
  		StringBuffer geturlGro = request.getRequestURL();
		
  	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html  style="width: 500px;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  <script src="./common/js/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css" href="./templates/default/js/ui.datepicker/css/smoothness/jquery-ui-1.7.2.custom.css">
<script type="text/javascript" src="./templates/default/js/ui.datepicker/jquery-ui-1.8.16.custom.min.js"></script>
<script src="./templates/default/js/kr.validate.js" language="javascript" type="text/javascript"></script>
<script src="./templates/default/js/formValidate.js" language="javascript" type="text/javascript"></script>
<script type="text/javascript"></script>
<title>Insert title here</title>

<script type="text/javascript">

	
	
	function busw1(){
		var img1 = document.getElementById('b1');
		img1.src = img.src.replace('oneWayOff', 'oneWayOn');
		
		
				
		
	}	
	
	function goto1(){
		document.getElementById('b1').className += ' on';
		
		location.href="<%=geturlGro.substring(0, 58)%>.jsp?menu1=2&menu2=1";
	}
	function goto2(){
		
		location.href="<%=geturlGro.substring(0, 58)%>.jsp?menu1=2&menu2=2";
	}


</script>
<style type="text/css">
    .mw-ui-button {
        font-family: inherit;
        font-size: 1em;
        display: inline-block;
        padding: .5em 1em;
        margin: 0;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        -webkit-appearance: none;
        *display: inline;
        zoom: 1;
        background: #FFF;
        color: #555;
        border: 1px solid #CCC;
        border-radius: 2px;
        min-width: 4em;
        vertical-align: middle;
        text-align: center;
        font-weight: 700;
        cursor: pointer;
        -webkit-transition: background .1s ease-in-out, color .1s ease-in-out, box-shadow .1s ease-in-out;
        -moz-transition: background .1s ease-in-out, color .1s ease-in-out, box-shadow .1s ease-in-out;
        -o-transition: background .1s ease-in-out, color .1s ease-in-out, box-shadow .1s ease-in-out;
        transition: background .1s ease-in-out, color .1s ease-in-out, box-shadow .1s ease-in-out
    }
    
    .mw-ui-button:hover,
    .mw-ui-button:focus {
        box-shadow: 0 1px rgba(0, 0, 0, .1), inset 0 -3px rgba(0, 0, 0, .2);
        border-bottom-color: #ccc;
        outline: 0
    }
    
    .mw-ui-button:hover::-moz-focus-inner,
    .mw-ui-button:focus::-moz-focus-inner {
        border-color: transparent
    }
    
    .mw-ui-button:active,
    .mw-ui-button.mw-ui-checked {
        background: #ccc;
        box-shadow: none
    }
    
    .mw-ui-button:hover,
    .mw-ui-button:active,
    .mw-ui-button:visited {
        color: #555
    }
    
    .mw-ui-button:disabled {
        color: #CCC
    }
    
    .mw-ui-button:disabled:hover,
    .mw-ui-button:disabled:active {
        background: #FFF;
        box-shadow: none
    }
    
    .mw-ui-button:disabled {
        text-shadow: none;
        cursor: default
    }
    
    .mw-ui-button.mw-ui-block {
        display: block;
        width: 100%
    }
    
    .mw-ui-button.mw-ui-progressive,
    .mw-ui-button.mw-ui-primary {
        background: #347bff;
        color: #fff;
        border: 1px solid #347bff;
        text-shadow: 0 1px rgba(0, 0, 0, .1)
    }
    
    .mw-ui-button.mw-ui-progressive:hover,
    .mw-ui-button.mw-ui-progressive:focus,
    .mw-ui-button.mw-ui-primary:hover,
    .mw-ui-button.mw-ui-primary:focus {
        box-shadow: 0 1px rgba(0, 0, 0, .1), inset 0 -3px rgba(0, 0, 0, .2);
        border-bottom-color: #2a62cc;
        outline: 0
    }
    
    .mw-ui-button.mw-ui-progressive:hover::-moz-focus-inner,
    .mw-ui-button.mw-ui-progressive:focus::-moz-focus-inner,
    .mw-ui-button.mw-ui-primary:hover::-moz-focus-inner,
    .mw-ui-button.mw-ui-primary:focus::-moz-focus-inner {
        border-color: transparent
    }
    
    .mw-ui-button.mw-ui-progressive:active,
    .mw-ui-button.mw-ui-progressive.mw-ui-checked,
    .mw-ui-button.mw-ui-primary:active,
    .mw-ui-button.mw-ui-primary.mw-ui-checked {
        background: #2a62cc;
        box-shadow: none
    }
    
    .mw-ui-button.mw-ui-progressive:disabled,
    .mw-ui-button.mw-ui-primary:disabled {
        background: #DDD;
        border-color: #DDD
    }
    
    .mw-ui-button.mw-ui-progressive:disabled:hover,
    .mw-ui-button.mw-ui-progressive:disabled:active,
    .mw-ui-button.mw-ui-progressive:disabled.mw-ui-checked,
    .mw-ui-button.mw-ui-primary:disabled:hover,
    .mw-ui-button.mw-ui-primary:disabled:active,
    .mw-ui-button.mw-ui-primary:disabled.mw-ui-checked {
        box-shadow: none
    }

    .mw-ui-button.mw-ui-constructive {
        background: #00af89;
        color: #fff;
        border: 1px solid #00af89;
        text-shadow: 0 1px rgba(0, 0, 0, .1)
    }
    
    .mw-ui-button.mw-ui-constructive:hover,
    .mw-ui-button.mw-ui-constructive:focus {
        box-shadow: 0 1px rgba(0, 0, 0, .1), inset 0 -3px rgba(0, 0, 0, .2);
        border-bottom-color: #008c6e;
        outline: 0
    }
    
    .mw-ui-button.mw-ui-constructive:hover::-moz-focus-inner,
    .mw-ui-button.mw-ui-constructive:focus::-moz-focus-inner {
        border-color: transparent
    }
    
    .mw-ui-button.mw-ui-constructive:active,
    .mw-ui-button.mw-ui-constructive.mw-ui-checked {
        background: #008c6e;
        box-shadow: none
    }
    
    .mw-ui-button.mw-ui-constructive:disabled {
        background: #DDD;
        border-color: #DDD
    }
    
    .mw-ui-button.mw-ui-constructive:disabled:hover,
    .mw-ui-button.mw-ui-constructive:disabled:active,
    .mw-ui-button.mw-ui-constructive:disabled.mw-ui-checked {
        box-shadow: none
    }
    
    .mw-ui-button.mw-ui-destructive {
        background: #d11d13;
        color: #fff;
        border: 1px solid #d11d13;
        text-shadow: 0 1px rgba(0, 0, 0, .1)
    }
    
    .mw-ui-button.mw-ui-destructive:hover,
    .mw-ui-button.mw-ui-destructive:focus {
        box-shadow: 0 1px rgba(0, 0, 0, .1), inset 0 -3px rgba(0, 0, 0, .2);
        border-bottom-color: #a7170f;
        outline: 0
    }
    
    .mw-ui-button.mw-ui-destructive:hover::-moz-focus-inner,
    .mw-ui-button.mw-ui-destructive:focus::-moz-focus-inner {
        border-color: transparent
    }
    
    .mw-ui-button.mw-ui-destructive:active,
    .mw-ui-button.mw-ui-destructive.mw-ui-checked {
        background: #a7170f;
        box-shadow: none
    }
    
    .mw-ui-button.mw-ui-destructive:disabled {
        background: #DDD;
        border-color: #DDD
    }
    
    .mw-ui-button.mw-ui-destructive:disabled:hover,
    .mw-ui-button.mw-ui-destructive:disabled:active,
    .mw-ui-button.mw-ui-destructive:disabled.mw-ui-checked {
        box-shadow: none
    }
    
    a.mw-ui-button {
        text-decoration: none
    }
    
    a.mw-ui-button:hover,
    a.mw-ui-button:focus {
        text-decoration: none
    }
    
    .on{
    background-color: #cccccc;
    
    }

</style>
</head>
<body>

	<img alt="??!" src="./section_select.jpg">
	<label>국제선</label>

 	<div class="container">
	<div class="collapse navbar-collapse" style=" width: 430px;">
  		<ul class="nav nav-tabs" style=" margin-top: 5px;">
  		<input class="mw-ui-button" type="button" onclick="goto1()" id="b1" value="편도">
		<input class="mw-ui-button" type="button" onclick="goto2()" id="b2" value="왕복">
  	
		<!-- <input type="image" src="./oneWayOn.jpg" onclick="busw1()" id="b1">
		<input type="image" src="./twoWayOff.jpg" onclick="busw1()" id="b2"> -->
		<hr size="5" noshade style=" margin-top: -10; margin-bottom: 0px; margin-top: 0px;">
		<%-- <a href="<%=geturl%>?menu=1">편도</a>
		<a href="<%=geturl%>?menu=2">왕복</a> --%>
		
	<%
		String menuGro = request.getParameter("menu2");

		if(menuGro != null) {
			if(menuGro.equals("1")) {
	%>
				<%@ include file="bookingFormOnewayGrobal.jsp"%>
	<%
			} else if(menuGro.equals("2")) {
	%>
				<%@ include file="bookingFormTwowayGrobal.jsp"%>
	<%
			}
		}
	%>
		</ul>
		</div>
		
		
	</div>
        

</body>
</html>