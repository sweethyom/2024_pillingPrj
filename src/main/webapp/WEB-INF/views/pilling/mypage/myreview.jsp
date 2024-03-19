<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나의 리뷰</title>
</head>
<style>
td {
	vertical-align: middle;
}

.width-myreview {
	width: 60%;
}

.div-center {
	margin: auto;
}

.border-none {
	border: hidden;
}

.bg-myreview {
	background-color: rgba(0, 0, 0, 0.03);
}

.bg-yellow {
	background-color: #fdf227;
}

.p-card {
	padding-top: 0px;
	padding-left: 4px;
	padding-right: 0px;
	padiing-bottom: 0px;
}

.rating__input {
	display: none; /* 라디오버튼 hide */
}

.rating__label .star-icon {
	width: 24px;
	height: 24px;
	display: block;
	background-repeat: no-repeat;
}
</style>

<body>
	<div class="width-myreview py-4 div-center">
		<br>
		<!-- 리뷰내역 카드 START -->
		<div class="card mb-6">
			<div class="card-header py-3">
				<div class="div-left">
					<h6 class="m-0 font-weight-bold">리뷰내역</h6>
				</div>
			</div>
			<!-- 제품 정보와 리뷰 START -->
			<div class="card-body">
				<!-- 테이블 START -->
				<div class="table-responsive">
					<table class="table table-bordered mb-2" id="dataTable">
					<c:forEach var="reviewList" items="${reviewList }">
						<thead>
							<tr>
								<th width="100">제품명</th>
								<th colspan="2">${reviewList.productName }</th>
								<th width="100">작성날짜</th>
								<th colspan="2">${reviewList.reviewDate }</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td colspan="2" width="600"><img
									src="${reviewList.reviewImg}" onerror="this.remove();" alt="제품 이미지"
									width="100">
								[${reviewList.reviewTitle}]<br>${reviewList.reviewContent }</td>
								<td>평점</td>
								<td colspan="2" width="500">${reviewList.rating }</td>
							</tr>
						</tbody>
						</c:forEach>
					</table>
				</div>
				<!-- 테이블 END -->

			</div>
			<!-- 제품 정보와 리뷰 END -->
		</div>
		<!-- 카드 END -->

		<!-- 페이징 레이아웃 START -->
		<div class="container mt-3">
			<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link" href="#">Previous</a></li>
				<!-- 첫페이지에선 없음/시작인덱스 -10 -->
				<li class="page-item"><a class="page-link" href="#"> 1</a>
				<li class="page-item"><a class="page-link" href="#"> 2</a>
				<li class="page-item"><a class="page-link" href="#"> 3</a>
				<li class="page-item"><a class="page-link" href="#"> 4</a>
				<li class="page-item"><a class="page-link" href="#"> 5</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
				<!-- 마지막인덱스 +10 /마지막 인덱스에서는 없음 -->
			</ul>
		</div>
		<!-- 페이징 레이아웃 END -->
		<button type="button" class="btn btn-primary btn-block mb-4"
			style="margin-left: 90%; display: flex;"
			onclick="location.href='mypage'">돌아가기</button>

	</div>
</body>
</html>