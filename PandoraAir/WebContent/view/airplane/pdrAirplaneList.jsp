
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="mypkg.model.Airplane"%>
<%@ include file="./../../common/top.jsp"%>
<%
	int myoffset = 2;
	int mywidth = twelve - 2 * myoffset;
	int formleft = 3;
	int formright = twelve - formleft;
	int mysearch = 2;
	//int label = 3 ; //양식의 왼쪽에 보여지는 라벨의 너비 
	//int content = twelve - label ; //우측의 내용 입력(input, select, textarea)의 너비
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BootStrap Sample</title>
<style type="text/css">
.xxx {
	margin-left: 0px;
}
.re{font-size: 11px;}
</style>
<script type="text/javascript">
	function writeForm(){
			location.href='<%=MyCtrlCommand%>boInsertForm';
	}
	function search(){
		if( $('#mode').val() == '-' ){
			alert('검색 목록을 선택해주세요') ;
			//$('#mode').focus();
		}else{
			//alert('하하') ;
		}
		//alert( $('#mode').val() );
	}
	function searchAll(){
		//$('#mode').val('-');
		//$('#keyword').val('');
		location.href='<%=MyCtrlCommand%>boList';
	}
</script>
</head>
<body>
	<div class="container col-sm-offset-<%=myoffset%> col-sm-<%=mywidth%>">
		<div class="panel panel-default panel-primary">
			<div class="panel-heading">
				<form class="form-inline" role="form">
					<h2>비행기 목록</h2>
				</form>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr><th colspan="10" align="center">
						<form class="form-inline" role="form" name="myform" action="<%=MyCtrlCommand%>boList" method="post">
							<div class="form-group">
								<select class="form-control" name="mode" id="mode">
									<option value="all" selected="selected">-- 선택하세요---------
									<option value="writer">작성자
									<option value="subject">제목									
									<option value="content">글 내용									
								</select>
							</div>
							<div class="form-group">
								<input type="text" class="form-control btn-xs" name="keyword"
									id="keyword" placeholder="검색 키워드">
							</div>
							<button class="btn btn-default btn-warning" type="submit" onclick="search();">검색</button>
							<button class="btn btn-default btn-warning" type="button" onclick="searchAll();">전체 검색</button>
							<button class="btn btn-default btn-info" type="button"
								onclick="writeForm();">비행기 정보 등록</button>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<p class="form-control-static">${requestScope.pagingStatus}</p>
						</form>
					</th>
					</tr>
					<tr>
						<th>편명</th>
						<th>구분</th>
						<th>정원</th>
						<th>운임요금</th>
						<th>적립포인트</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tr>
				</tr>
				<c:forEach var="bean" items="${requestScope.lists}">
					<tr>
						<td>${bean.airplane}</td>
						<td>${bean.category}</td>
						<td>${bean.seat_qty}</td>
						<td>${bean.fare}</td>
						<td>${bean.saving_point}</td>
						<td>
								<a href="<%=MyCtrlCommand%>boUpdateForm&no=${bean.airplane}&${requestScope.parameters}">
									수정
								</a>
						</td>
						<td>
								<a href="<%=MyCtrlCommand%>boDelete&no=${bean.airplane}&${requestScope.parameters}">
									삭제
								</a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
		
		<div align="center">
			<footer>${requestScope.pagingHtml}</footer>			
		</div>
		
	</div>
	<br><br><br><br>
	<script type="text/javascript">
	   /* 방금 전 선택한 콤보 박스를 그대로 보여 주기 */ 
		$('#mode option').each(function (index){
			if( $(this).val() == '${requestScope.mode}' ){
				$(this).attr('selected', 'selected') ;
			}
		});	
		/* 이전에 넣었던 값 그대로 보존 */
		$('#keyword').val( '${requestScope.keyword}' ) ;
	</script>
</body>
</html>