<%@ include file="./../../common/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

.image .button {

 position:absolute;

 top:40px; /* in conjunction with left property, decides the text position */

 left:80px;

 width:700px; /* optional, though better have one */

}

 #name1{
 position:absolute;
 
    left: 210px;
    bottom: 250px;
    top: 255px;
    height: 26px;
    width: 156px;
 
 }
 #name2{
 position:absolute;
 
    left: 770px;
    top: 220px;
    width: 156px;
 
 }
 #flight1{
 position:absolute;
 
    left: 210px;
    top: 320px;
    width: 156px;
 
 }
 #deptime1{
 position:absolute;
 
    left: 260px;
    top: 420px;
    width: 76px;
 
 }
 #to1{
 position:absolute;
 
    left: 475px;
    top: 290px;
    width: 156px;
 
 }
 #to2{
 position:absolute;
 
    left: 770px;
    top: 290px;
    width: 156px;
 
 }
 
 #gate1{
 position:absolute;
 
    left: 505px;
    top: 420px;
    width: 106px;
 
 }
 
 #from1{
 position:absolute;
 
    left: 770px;
    top: 255px;
    width: 156px;
 
 }
 #date1{
 position:absolute;
 
    left: 770px;
    top: 323px;
    width: 156px;
    
 
 }
 #seat1{
 position:absolute;
 
    left: 760px;
    top: 417px;
    width: 56px;
    height: 36px;
 
 }
 
 #flight2{
 position:absolute;
 
    left: 880px;
    top: 417px;
    width: 56px;
    height: 36px;
 
 }
 #seat1{
 position:absolute;
 
    left: 760px;
    top: 417px;
    width: 56px;
    height: 36px;
  } 
  #submit1{
  position:absolute;
    left: 840px;
    top: 520px;
  
  }


</style>
</head>
<body>

	<div class="col-sm-10 bgset" id="bgset">
				 <div class="container">
  					<img src="./bookingForm.jpg">
  					
  				 </div> 
	</div>
	
	<form action="" method="post">
	<input type="hidden" name="#">
	
	<label id="name1">name1${requestScope.bean.name}</label>
	<label id="flight1">flight1</label>
	<label id="deptime1">deptime1</label>
	<label id="to1">to1</label>
	<label id="gate1">gate1</label>
	<label id="name1">name1</label>
	<label id="name2">name2</label>
	<label id="from1">from1</label>
	<label id="to2">to2</label>
	<label id="date1">date1</label>
	<label id="seat1">seat1</label>
	<label id="flight2">flight2</label>
	<!-- <input type="label" id="name1" value="name1">
	<input type="label" id="flight1" value="flight1">
	<input type="label" id="deptime1" value="depTime1">
	<input type="label" id="to1" value="to1">
	<input type="label" id="gate1" value="gate1">
	<input type="label" id="name2" value="name2">
	<input type="label" id="from1" value="from1">
	<input type="label" id="to2" value="to2">
	<input type="label" id="date1" value="date1">
	<input type="label" id="seat1" value="seat1">
	<input type="label" id="flight2" value="flight2">-->
	
	<input type="submit" id="submit1" value="Ȯ�� �Ϸ�">
	
	</form>

</body>
</html>