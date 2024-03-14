<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<form action="reviewwrite" method=POST>
	<button type="button" class="btn btn-primary btn-block mb-4" style="margin-left:90%; display:flex;" onclick="location.href='newreview'">리뷰쓰기</button>
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
					<table class="table table-bordered mb-2" id="dataTable">
						<thead>
							<tr>
								<td>주문번호</td>
								<td colspan="2">${order.orderId}</td>
								<td>주문날짜</td>
								<td> ${order.orderdate }
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" size="89%" placeholder="제목을 입력하세요."
							id="questionTitle" name="questionTitle" required="required"></td>
								<td width="100"><img
									src="${product.productImg }" alt="제품 이미지"
									width="100"></td>
								<td colspan="2" width="500">${product.productName }</td>
								<td>${order.orderDate}</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- 테이블 END -->
				<!-- 제품 리뷰 START -->
				<div class="p-4 bg-myreview rounded mb-3">
					<div class="row g-4">
						<div class="col-12">
							<div class="d-flex justify-content-between">
								<h5>리뷰 제목</h5>
								<a>★★★★☆</a>
							</div>
							<small class="text-body d-block mb-3"><i
								class="fas fa-calendar-alt me-1"></i> Dec 9, 2024</small>
							<p class="mb-0">Lorem Ipsum is simply dummy text of the
								printing and typesetting industry.</p>
						</div>
					</div>
				</div>
			</div>
				<!-- 제품 리뷰 END -->
				
		</div>
		<!-- 카드 END -->
		<button type="button" class="btn btn-primary btn-block mb-4" style="margin-left:90%; display:flex;" onclick="location.href='mypage'">돌아가기</button>
		</form>
	</div>
</body>
</html>