<%@page import="dao.SellerProfileDao"%>
<%@page import="vo.Board"%>
<%@page import="vo.Location"%>
<%@page import="vo.SellerService"%>
<%@page import="vo.BoardCategory"%>
<%@page import="java.util.List"%>
<%@page import="dao.BoardDao"%>
<%@page import="vo.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initail-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"></script>
<title>게시글 수정화면</title>
</head>
<body>
<jsp:include page="../include/navbar.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
<div class="container">
	<div class="row">
		<div class="col-12">
			<h1>게시글 수정</h1>

	<%
	
		// 요청파라미터 조회
		int no = Integer.valueOf(request.getParameter("no"));
		int currentPage = Integer.valueOf(request.getParameter("page"));
		
		// BoardDao  생성
		BoardDao boardDao = new BoardDao();
		
		// BoardDao객체의 getBoardByNo(int no)를 실행해서 게시글 상세정보 조회
        Board board = boardDao.getBoardByNo(no);
		
		// 지역, 서비스 산텍(selectbox 사용관련)
		SellerProfileDao sellerProfileDao = new SellerProfileDao();
		List<BoardCategory> boardCateList = boardDao.getAllBoardCategories(); 
		List<SellerService> serviceList = sellerProfileDao.getAllServices();
		List<Location> locationList = boardDao.getSidoLocations();
		
		
	%>
			<form class="border p-3" method="post" action="modify.jsp">
			    <input type="hidden" name="no" value="<%=no %>">
                <input type="hidden" name="page" value="<%=currentPage %>">
				<div class="form-group mb-3">
					<label class="form-label">게시판 구분</label>
					<select class="form-select form-select-sm" name="catNo">
						<option selected>주제 선택</option>
	<%
			for(BoardCategory cate : boardCateList ){
	%>
						<option value="<%= cate.getNo()%>"><%=cate.getName() %></option>
	<%
			}
	%>
					</select>
				</div>
				<div class="form-group mb-3">
					<label for="category1" class="form-label">서비스</label>
					<div class="d-flex justify-content-start">
						<select class="form-select me-5" name="serviceNo" style="width: 150px;" id="category1">
							<option value="category1_1">선택하세요</option>
	<%
			for (SellerService service : serviceList) {
	%>
							<option value="<%=service.getNo()%>"><%=service.getName() %></option>
	<%
			}
	%>
						</select>
					<!--  
						<select class="form-select " style="width: 150px;" id="category2" >
							<option value="category2_1">선택하세요</option>
							<option value="category2_1">원룸</option>
							<option value="category2_1">아파트</option>
							<option value="category2_2">오피스텔</option> 
						</select>
					-->
					</div>
				</div>
				<div class="form-group mb-3">
					<label for="category1" class="form-label">지역</label>
					<div class="d-flex justify-content-start">
						<select class="form-select me-5" name="locationNo" style="width: 150px;" id="category1">
							<option value="category1_1">선택하세요</option>
<%
		for(Location list : locationList) {
	%>
			<option value="<%= list.getNo()%>"><%=list.getSidoName() %></option>
		

	<%	
		}
	%>					</select>
					<!-- 	<select class="form-select me-5" style="width: 150px;" id="category2" >
							<option value="category2_1">선택하세요</option>
							<option value="category2_1">종로구</option>
							<option value="category2_1">성동구</option>
							<option value="category2_2">도봉구</option> 
						</select>
				 -->	
					</div>
				</div>
				<div class="form-group mb-3">
					<label class="form-label">제목</label> 
					<input type="text" class="form-control" name="title">
				</div>
				<div class="from-group mb-3">
					<label class="form-label">내용</label> 
					<textarea class="form-control" name="content" placeholder="내용을 입력하세요." id="floatingTextarea" ></textarea>
				</div>
				<div class="form-group mb-3 ">
					<label class="form-label">첨부파일</label> 
					<input type="file" class="form-control" name="upfile">
				</div>
				<div class="text-end">
					<button type="submit" class="btn btn-primary">수정</button>
					<a href="list.jsp" class="btn btn-dark">목록</a>
				</div>
			</form>			
		</div>
	</div>
</div>

</body>
</html>