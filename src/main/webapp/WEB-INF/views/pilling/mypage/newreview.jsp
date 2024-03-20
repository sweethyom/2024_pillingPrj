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
</style>

<body>
	<div class="width-myreview py-4 div-center">
	<br>
	<form action="reviewwrite" method="POST"  enctype="multipart/form-data">
		<!-- 리뷰내역 카드 START -->
		<div class="card mb-6">
			<div class="card-header py-3">
				<div class="div-left">
					<h6 class="m-0 font-weight-bold">리뷰작성</h6>
				</div>
			</div>
			<!-- 제품 정보와 리뷰 START -->
			<div class="card-body">
				
				<!-- 테이블 START -->
				<div class="table-responsive">
					<table class="table table-bordered mb-2" id="reviewTable">
							<c:forEach var="detail" items="${orderDetailList }">
						<thead>
							<tr>
							<td width="100"><img
									src="${detail.filepath}" alt="제품 이미지"
									width="100"></td>
								<td width="250">제품명</td>
								<td width="250">${detail.productName}</td>
								<td>주문번호</td>
								<td rowspan=2>${order.orderId}</td>
								<td>주문날짜</td>
								<td> ${order.orderDate}
							</tr>
						</thead>
						<tbody>
								
						<tr>
						<td colspan="9">
							<table>	
								<td>
								<input type="hidden" name="productId" value="${detail.productId}">
								<div style="margin-bottom: 1rem;">
								<span>제품 점수</span>
								<br>
								<input type="radio" placeholder="별점을 입력하세요." value="1" name="rating">1점
								<input type="radio" placeholder="별점을 입력하세요." value="2" name="rating">2점
								<input type="radio" placeholder="별점을 입력하세요." value="3" name="rating">3점
								<input type="radio" placeholder="별점을 입력하세요." value="4" name="rating">4점
								<input type="radio" placeholder="별점을 입력하세요." value="5" name="rating">5점
							</div>
								<input type="text" size="89%" placeholder="제목 입력하세요." class="form-control" id="reviewTitle" name="reviewTitle" required style="margin-bottom: 1rem;">
								<textarea
								rows="10"
								cols="160"
								class="form-control"
								placeholder="리뷰를 입력해주세요."
								id="reviewContent" name="reviewContent"
								required="required"
								style="margin-bottom: 1rem;"></textarea>
								<input type="file" class="form-control mb-2" id="reviewImgFile" name="reviewImgFile" accept="image/gif, image/jpeg, image/png">
								</td>
							</table>
						</td>
						</tr>
					</tbody>
					<input type="hidden" name="orderDetailId" value="${detail.orderdetailId}">
					</c:forEach>
					</table>
				</div>
				<!-- 테이블 END -->

			</div>
				<!-- 제품 리뷰 END -->
    <!-- 기타 필드 -->
    

				
		</div>
		<!-- 카드 END -->
		<div style="text-align: center;">
		<button type="button" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size" onclick="location.href='mypage'">돌아가기</button>
		<button type="submit" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size" style="margin-left: 1rem;">저장</button>
	</div>
		</form>
	</div>
	<script>

      </script>
</body>
</html>