<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<style>
.width-cart {
	width: 72%;
}
</style>
<body>
	<!-- Cart Page Start -->
	<div class="container-fluid width-cart">
		<div class="container py-5">
			<div class="table-responsive">
				<table class="table">
					<thead>
						<tr>
							<th scope="col">제품</th>
							<th scope="col">제품명</th>
							<th scope="col">가격</th>
							<th scope="col">개수</th>
							<th scope="col">총 가격</th>
							<th scope="col"></th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty carts}">
							<c:forEach items="${carts}" var="c">
								<tr>
									<td scope="row">
										<div class="d-flex align-items-center">
											<img src="${c.filepath }" alt="제품 이미지" width="80px"
												height="80px">
										</div>
									</td>
									<td>
										<p class="mb-0 mt-4">${c.productName}</p>
									</td>
									<td>
										<p class="mb-0 mt-4">${c.productPrice}</p>
									</td>
									<td>
										<div class="input-group quantity mt-4" style="width: 100px;">
											<div class="input-group-btn">
												<button
													class="btn btn-sm btn-minus rounded-circle bg-light border">
													<i class="fa fa-minus"></i>
												</button>
											</div>
											<input type="text"
												class="form-control form-control-sm text-center border-0"
												value="${c.cartProdcnt }">
											<div class="input-group-btn">
												<button
													class="btn btn-sm btn-plus rounded-circle bg-light border">
													<i class="fa fa-plus"></i>
												</button>
											</div>
										</div>
									</td>
									<td>
										<p class="mb-0 mt-4"></p>
									</td>
									<td>
										<button class="btn btn-md rounded-circle bg-light border mt-4"
											onclick="removeCartCall(${c.cartId})">
											<i class="fa fa-times text-danger"></i>
										</button>
									</td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty carts}">
							<tr>
								<td colspan="5" style="text-align: center;">장바구니에 추가된 제품이
									없습니다.</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
			<div class="mt-5">
				<input type="text"
					class="border-0 border-bottom rounded me-5 py-3 mb-4"
					placeholder="Coupon Code">
				<button type="button"
					class="px-5 py-3 btn btn-primary border-2 rounded-pill animated slideInDown">쿠폰적용</button>
			</div>
			<div class="row g-4 justify-content-end">
				<div class="col-8"></div>
				<div class="col-sm-8 col-md-7 col-lg-6 col-xl-4">
					<div class="bg-light rounded">
						<div class="p-4">
							<h1 class="display-6 mb-4">
								Cart <span class="fw-normal">Total</span>
							</h1>
							<div class="d-flex justify-content-between mb-4">
								<h5 class="mb-0 me-4">제품가격</h5>
								<p class="mb-0">100억원</p>
							</div>
							<div class="d-flex justify-content-between">
								<h5 class="mb-0 me-4">배송료</h5>
								<div class="">
									<p class="mb-0">3000원</p>
								</div>
							</div>
						</div>
						<div
							class="py-4 mb-4 border-top border-bottom d-flex justify-content-between">
							<h5 class="mb-0 ps-4 me-4">총 합계</h5>
							<p class="mb-0 pe-4">111111원</p>
						</div>
						<button type="button"
							class="px-5 py-3 btn btn-primary border-2 rounded-pill animated slideInDown mb-4 ms-4"
							style="float: right;" onclick="location.href='order'">
							구매하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<!-- 삭제를 위해 cartId를 넘겨주는 히든폼 -->
		<form id="deleteform" name="deleteform">
			<input type="hidden" id="cartId" name="cartId">
		</form>
	</div>
	<script>
	// AJAX를 통해서 제품을 장바구니에서 삭제한다.
  	function removeCartCall(id){
  		document.getElementById("cartId").value=id;
  		
  		let form = document.getElementById('deleteform');
  		let formData = new FormData(form);
  		let url = 'removecart'
  		
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
  				console.log('장바구니 삭제 완료');
  			} else {
  				alert('장바구니 삭제에 실패하였습니다.');
  			}
  		})
  		.catch((error) => {
  			console.error('There was an error!', error);
  			alert('장바구니 삭제 중 오류가 발생하였습니다.');
  		});
  	}
	</script>
	<!-- Cart Page End -->
</body>
</html>