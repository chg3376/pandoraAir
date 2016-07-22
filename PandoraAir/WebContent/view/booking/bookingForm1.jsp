
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Insert title here</title>

<style type= "text/css" >
		#mytab{
			width:100px;
		}
        div {
               width: 100px ;
               height: 100px ;
               background-color : yellow ;
               position: absolute ;
       }
        #mydiv {
               text-align :center ;
               line-height : 100px ;
               top: 100px ;
               left: 500px ;
               width: 300px ;
               height: 300px ;
               background-color : aqua ;
               border: 10px solid red ;
       }
        .test1 {
               text-align :center
              top : 20px;
               margin-left : -70px ;
               background-color : fuchsia ;
       }
        .test2 {
               top: 20px ;
               margin-left : 270px ;
               background-color : gray ;
       }
        .test3 {
               top: 180px ;
               margin-left : -70px ;
               background-color : maroon ;
       }
        .test4 {
               top: 180px ;
               margin-left : 270px ;
               background-color : purple ;
       }
</style>
<!-- <script type="text/javascript">
	function test1(){
		/* if(src=="./../../image/localOn.jpg"){
			document.getElementById("test1").src = "./localOff.jpg";
		}else{
			document.getElementById("test1").src = "./localOn.jpg";
		} */
		var a="./localOn.jpg";
		var b="./localOff.jpg";
		var c=a;
		a=b;
		b=c;
		
		
		document.getElementById("test1").src = a;
		
	}
</script> -->
</head>
<body>
 		<!-- <div id= "mydiv" >
               <input class="test1" align="middle" type="image" id="test1" src="./localOn.jpg" onclick="test1()" > 
               <div class= "test2" >원더 걸스 </div>
               <div class= "test3" >티아라 </div>
               <div class= "test4" >exid </div>
        </div> -->
        
        
        <div class="container">
  			<ul class="nav nav-tabs ">
    			<li class="mytab"><a href="#">Menu 1</a></li>
    			<li><a href="#">Menu 2</a></li>
   		    	<li><a href="#">Menu 3</a></li>
 			 </ul>
</div>
        
        
        
        

</body>
</html>