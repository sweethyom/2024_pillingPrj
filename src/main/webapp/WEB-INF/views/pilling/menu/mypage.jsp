<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
</head>
<body>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://kit.fontawesome.com/69f92e09cc.js"
		crossorigin="anonymous"></script>
	<!-- Section: Design Block -->
	<section class="text-center text-lg-start">
		<style>
.cascading-right {
	margin-right: -50px;
}

@media ( max-width : 991.98px) {
	.cascading-right {
		margin-right: 0;
	}
}

.login-site-padding {
	padding: 10rem !important;
}

.row-mypage {
	margin: 0 auto;
	width: 60%;
}

.div-left {
	float: left;
}

.div-right {
	float: right;
}

.div-center {
	margin: auto;
	text-align: center;
}

.div-center-l {
	margin: 0;
}

.mb-6 {
	margin-bottom: 5rem !important;
}

td {
	vertical-align: middle;
}

.td-center {
	vertical-align: middle;
	text-align: center;
}

.shadow-mypage {
	box-shadow: 2px 5px 5px rgb(0, 0, 0, 0.1);
}
</style>

		<div class="container-fluid page-header py-5">
			<div class="container text-center py-5">
				<h1 class="display-2 text-white mb-4 animated slideInDown">my
					page</h1>
			</div>
		</div>

		<div class="container"></div>

		<!-- Content Row -->
		<div class="row-mypage">
			<div class="row">
				<!-- 등급 카드 -->
				<div class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-primary shadow-mypage h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="div-left">
									<div>
										<div
											class="text-xs font-weight-bold text-success mb-1 div-center">RANK</div>
										<div
											class="h1 mb-0 font-weight-bold text-gray-800 div-center div-center-l mb-3">${userRank }</div>
										<div
											class="text-xs font-weight-bold text-uppercase mb-1 div-center">
											<hr>
											<a href="#" style="color:#555555;" onclick="addCoupon('${userNo}', '${userRank }')">${userRank } 등급 쿠폰 받기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 쿠폰 카드 -->
				<div class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-success shadow-mypage h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-success text-uppercase mb-1 div-center">COUPON</div>
									<div class="h1 mb-0 font-weight-bold text-gray-800 div-center" id="coupon-count">${couponCount }장</div>
									<div
										class="text-xs font-weight-bold text-uppercase mb-1 div-center">
										<hr>
										<a href="#" style="color:#555555;" onclick="viewCoupons('${userNo}')">보유 쿠폰 확인</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- 적립금 카드 -->
				<div class="col-xl-4 col-md-6 mb-4">
					<div class="card border-left-info shadow-mypage h-100 py-2">
						<div class="card-body">
							<div class="row no-gutters align-items-center">
								<div class="col mr-2">
									<div
										class="text-xs font-weight-bold text-success text-uppercase mb-1 div-center">POINT
									</div>
									<div class="row no-gutters align-items-center">
										<div>
											<div
												class="h1 mb-0 mr-3 font-weight-bold text-gray-800 div-center">${user.userPoint }원</div>
										</div>
									</div>
								</div>
								<div
									class="text-xs font-weight-bold text-uppercase mb-1 div-center">
									<hr>
									보유 적립금
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<br> <br> <br>

			<div class="row">
				<div class="col-xl-12 col-md-6 mb-4 div-center">
					<div class="card border-left-success py-2">
						<div class="card-body div-center">
							<table>
								<tr height="60">
									<td width="450" class="td-cente"><i
										class="fa-regular fa-address-card h4"></i>&nbsp;<label
										type="button" class="h5"><a href="myinfo" id="myinfo"
											style="color: black;">나의정보</a></label></td>
									<td width="450" class="td-center"><i
										class="fa-regular fa-newspaper h5"></i> &nbsp; <label
										type="button" class="h5" onclick="location.href='myreview'">리뷰내역</label></td>
								</tr>
								<tr height="50">
									<td class="td-center"><i class="fa-solid fa-cart-shopping"></i>
										&nbsp; <label type="button" class="h5" onclick="moveCart()">장바구니</label></td>
									<td class="td-center"><i
										class="fa-regular fa-circle-question h5"></i> &nbsp; <label
										type="button" class="h5" onclick="location.href='myinquiry'">문의내역</label></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>

			<br> <br>
			<div class="row">
				<h2>나의 활동</h2>
				<!-- 주문 내역 -->
				<div class="container-fluid">
					<!-- 배송상태가 출고중, 배송중인 제품들을 최대 3개까지 보여준다. -->
					<div class="card mb-4">
						<div class="card-header py-3">
							<div class="div-left">
								<h6 class="m-0">주문내역</h6>
							</div>
							<div class="div-right">
								<h6 class="text-muted m-0">
									<a type="button" onclick="location.href='myorderdetail'">>>더보기</a>
								</h6>
							</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable">
									<thead>
										<tr>
											<th>제품</th>
											<th>제품명</th>
											<th>총 가격</th>
											<th>배송상태</th>
											<th>주문날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty orders}">
											<c:forEach items="${orders}" var="o">
												<tr>
													<td width="100"><img src="${o.filepath }" alt="제품 이미지"
														width="100"></td>
													<td width="400">${o.productName }<c:if
															test="${o.count>1 }">외 ${o.count-1}건</c:if></td>
													<td width="150">${o.orderTotalprice }원</td>
													<td width="150">${o.status }</td>
													<td>${o.orderDate }</td>
												</tr>
											</c:forEach>
										</c:if>
										<c:if test="${empty orders}">
											<tr>
												<td colspan="5" style="text-align: center;">주문한 제품이
													없습니다.</td>
											</tr>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>

					<!-- 구매 내역 -->
					<div class="card mb-6">
						<div class="card-header py-3">
							<div class="div-left">
								<h6 class="m-0 font-weight-bold">구매내역</h6>
							</div>
							<div class="div-right">
								<h6 class="text-muted m-0">
									<a type="button" onclick="location.href='mypurchasedetail'">>>더보기</a>
								</h6>
							</div>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable">
									<thead>
										<tr>
											<th>제품</th>
											<th>제품명</th>
											<th>총 가격</th>
											<th>배송상태</th>
											<th>주문날짜</th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty purchases}">
											<c:forEach items="${purchases}" var="p">
												<tr>
													<td width="100"><img src="${p.filepath }" alt="제품 이미지"
														width="100"></td>
													<td width="400">${p.productName }<c:if
															test="${p.count>1 }">외 ${p.count-1}건</c:if></td>
													<td width="150">${p.orderTotalprice }원</td>
													<td width="150">${p.status }</td>
													<td>${p.orderDate}</td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row div-center">
				<img src="resources/pilling/img/mypage/banner.png" alt="적립금 안내 배너">
			</div>
		</div>
		<!-- 히든폼 -->
		<!-- 1. 각 상세페이지에 유저넘버를 넘겨줄 용도 -->
		<!-- 2. 쿠폰 발급 용도 -->
		<div>
			<form id="dataform" method="post">
				<input type="hidden" id="userNo" name="userNo" value="${userNo }">
				<input type="hidden" id="couponName" name="couponName"> <input
					type="hidden" id="couponRate" name="couponRate">
			</form>

		</div>
		<script>
			// 유저 넘버를 담고 장바구니로 이동시킨다.
			function moveCart() {
				dataform.action = "cart";
				dataform.submit();
			}
		</script>

		<!-- 쿠폰 관련 스크립트들 -->
		<script>
			function addCoupon(userNo, userRank) {
				var rate = 0;
				if(userRank == "브론즈"){
					rate = 1;
				}else if(userRank == "실버"){
					rate = 2;
				}else if(userRank == "골드"){
					rate = 3;
				}else{
					rate = 5;
				}
				
				document.getElementById("couponName").value=userRank + "쿠폰";
		  		document.getElementById("couponRate").value=rate;
		  		
		  		let form = document.getElementById('dataform');
		  		let formData = new FormData(form);
		  		let url = 'addcoupon'
		  		
		  		fetch(url, {
		  			method: 'POST',
		  			body: formData,
		  		})
		  		.then((response) => {
		  			if (response.ok) {
		  				return response.text();
		  			} else {
		  				throw new Error('Network response was not ok.');
		  			}
		  		})
		  		.then((text) => {
		  			if(text === 'Yes'){
		  				couponElement = document.getElementById("coupon-count");
		  				var newCount = parseInt(couponElement.textContent.replace(/\D/g, ''),10);
		  				newCount++;
		  				couponElement.textContent = newCount + "장";
		  				swal("쿠폰이 발급되었습니다.", "쿠폰은 한 달에 한 번 발급 가능하며,\n해당 달 마지막날까지 사용할 수 있습니다.", "success");
		  			} else {
		  				swal("이미 쿠폰을 발급받으셨습니다.\n쿠폰은 한 달에 한 번만 발급 가능합니다.");
		  			}
		  		})
		  		.catch((error) => {
		  			console.error('There was an error!', error);
		  			alert('장바구니 추가 중 오류가 발생하였습니다.');
		  		});
			}
			function viewCoupons(userNo){
				window.open("/PillingProject/src/main/webapp/WEB-INF/views/pilling/mypage/viewcoupons.jsp", '_blank', 'width=800, height=600');
			}
		</script>
</body>
</html>