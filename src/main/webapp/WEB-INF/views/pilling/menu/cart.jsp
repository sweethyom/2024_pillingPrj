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
								<tr class="item-row" data-cart-id="${c.cartId }">
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
										<div style="display:flex;"><p class="mb-0 mt-4 prodprice">${c.productPrice}</p><p class="mb-0 mt-4">원</p></div>
									</td>
									<td>
										<div class="input-group quantity mt-4" style="width: 100px;">
											<div class="input-group-btn">
												<button
													class="btn btn-sm btn-minus rounded-circle bg-light border"
													onclick="cntMinus(${c.cartId})">
													<i class="fa fa-minus"></i>
												</button>
											</div>
											<input type="text"
												oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
												maxlength="2"
												class="form-control form-control-sm text-center border-0 prodcnt"
												value="${c.cartProdcnt }">
											<div class="input-group-btn">
												<button
													class="btn btn-sm btn-plus rounded-circle bg-light border"
													onclick="cntPlus(${c.cartId})">
													<i class="fa fa-plus"></i>
												</button>
											</div>
										</div>
									</td>
									<td>
										<p class="mb-0 mt-4 prod-total-price">${c.productPrice * c.cartProdcnt }원
										</p>
									</td>
									<td>
										<button
											class="delete-btn btn btn-md rounded-circle bg-light border mt-4"
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
								<p class="mb-0" id="totalprice" name="totalprice"></p>
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
							<p class="mb-0 pe-4" id="orderTotalprice" name="orderTotalprice"></p>
						</div>
						<button type="button"
							class="px-5 py-3 btn btn-primary border-2 rounded-pill animated slideInDown mb-4 ms-4"
							style="float: right;" onclick="moveOrder()">
							구매하기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div>
		<!-- 수정, 삭제를 위해 cartId를 넘겨주는 히든폼 -->
		<form id="idform" name="idform">
			<input type="hidden" id="cartId" name="cartId"> <input
				type="hidden" id="cartProdcnt" name="cartProdcnt" value=0>
		</form>
		<!-- 구매 페이지로 userNo을 넘겨주는 히든폼 -->
		<form id="orderform" name="orderform" action="order" method="post">
			<input type="hidden" id="userNo" name="userNo" value="${userNo }">
		</form>
	</div>
	<script>
	// AJAX를 통해서 제품을 장바구니에서 삭제한다.
	// 삭제 버튼 클릭 이벤트 처리
  	function removeCartCall(id){
		// 삭제할 행을 row에 담아준다.
  		var row = document.querySelector('.item-row[data-cart-id="' + id + '"]');
  		document.getElementById("cartId").value=id;
  		
  		let form = document.getElementById('idform');
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
  				row.style.display = 'none';
  				document.querySelector('.item-row[data-cart-id="' + id + '"] .prodprice').textContent = 0;
  				console.log('장바구니 삭제 완료');
  				
  				var total1 = prodTotalCal(id);
  				var total2 = orderTotalCal();
  				var total3 = total2 + 3000;
  				var totalPriceElement1 = document.querySelector('.item-row[data-cart-id="' + id + '"] .prod-total-price');
  				var totalPriceElement2 = document.getElementById('totalprice');
  				var totalPriceElement3 = document.getElementById('orderTotalprice');
  				totalPriceElement1.textContent = total1 + "원";
  				totalPriceElement2.textContent = total2 + "원";
  				totalPriceElement3.textContent = total3 + "원";
  			} else {
  				alert('장바구니 삭제에 실패하였습니다.');
  			}
  		})
  		.catch((error) => {
  			console.error('There was an error!', error);
  			alert('장바구니 삭제 중 오류가 발생하였습니다.');
  		});
  	}
	
	// 폼에 숫자를 입력하고나면 수량이 업데이트되도록 한다.
	var cntInput = document.querySelectorAll('.prodcnt');
	cntInput.forEach(function(input) {
		input.addEventListener('input', function(event){
			cntUpdate(event.target); // 이벤트가 발생한 입력 필드를 인수로 전달
		})
	})
	
	// 카트 수량 업데이트 (폼에 입력하여 수정)
  	function cntUpdate(inputField){
		var itemRow = inputField.closest('.item-row'); // 이벤트가 발생한 입력 필드의 부모 요소인 item-row 요소 선택
		var cartIdElement = itemRow.getAttribute('data-cart-id');
  		var prodcntElement = inputField.value;
  		
  		if(prodcntElement == "" || prodcntElement == 0){
  			inputField.value = 1;
  			prodcntElement=1;
  		}
  		document.getElementById("cartId").value=cartIdElement;
			document.getElementById("cartProdcnt").value=prodcntElement;
	  		
	  		let form = document.getElementById('idform');
	  		let formData = new FormData(form);
	  		let url = 'updatecart'
	  		
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
	  				console.log('수량 업데이트 완료');
	  				
	  				//총 가격 계산, total1은 테이블 한 줄 당 가격, total2는 총 주문 가격, total3은 배송비 포함 전체 가격.
	  				var total1 = prodTotalCal(cartIdElement);
	  				var total2 = orderTotalCal();
	  				var total3 = total2 + 3000;
	  				var totalPriceElement1 = document.querySelector('.item-row[data-cart-id="' + cartIdElement + '"] .prod-total-price');
	  				var totalPriceElement2 = document.getElementById('totalprice');
	  				var totalPriceElement3 = document.getElementById('orderTotalprice');
	  				totalPriceElement1.textContent = total1 + "원";
	  				totalPriceElement2.textContent = total2 + "원";
	  				totalPriceElement3.textContent = total3 + "원";
	  			} else {
	  				alert('수량 업데이트에 실패하였습니다.');
	  			}
	  		})
	  		.catch((error) => {
	  			console.error('There was an error!', error);
	  			alert('수량 업데이트 중 오류가 발생하였습니다.');
	  		});
	}
	
	// 카트 수량 업데이트(마이너스 버튼)
	function cntMinus(id){
		var cartProdcntElement = document.querySelector('.item-row[data-cart-id="' + id + '"] .prodcnt');
		if(cartProdcntElement.value == 1){
			console.log("제품 수량은 1보다 작을 수 없다.")
		}else{
			document.getElementById("cartId").value=id;
	  		let form = document.getElementById('idform');
	  		let formData = new FormData(form);
	  		let url = 'minuscart'
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
	  				var prodcntElement = document.querySelector('.item-row[data-cart-id="' + id + '"] .prodcnt');
	  				prodcntElement.value = parseInt(prodcntElement.value)-1;
	  				console.log('수량 - 1 완료');
	  				
	  				var total1 = prodTotalCal(id);
	  				var total2 = orderTotalCal();
	  				var total3 = total2 + 3000;
	  				var totalPriceElement1 = document.querySelector('.item-row[data-cart-id="' + id + '"] .prod-total-price');
	  				var totalPriceElement2 = document.getElementById('totalprice');
	  				var totalPriceElement3 = document.getElementById('orderTotalprice');
	  				totalPriceElement1.textContent = total1 + "원";
	  				totalPriceElement2.textContent = total2 + "원";
	  				totalPriceElement3.textContent = total3 + "원";
	  			} else {
	  				alert('수량 업데이트에 실패하였습니다.');
	  			}
	  		})
	  		.catch((error) => {
	  			console.error('There was an error!', error);
	  			alert('수량 업데이트 중 오류가 발생하였습니다.');
	  		});	
		}
	}
	
	// 카트 수량 업데이트 (플러스 버튼)
	function cntPlus(id){
		var cartProdcntElement = document.querySelector('.item-row[data-cart-id="' + id + '"] .prodcnt');
		if(cartProdcntElement.value == 99){
			console.log("제품 수량은 99보다 클 수 없다.")
		}else{
			document.getElementById("cartId").value=id;
	  		
	  		let form = document.getElementById('idform');
	  		let formData = new FormData(form);
	  		let url = 'pluscart'
	  		
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
	  				var prodcntElement = document.querySelector('.item-row[data-cart-id="' + id + '"] .prodcnt');
	  				prodcntElement.value = parseInt(prodcntElement.value)+1;
	  				console.log('수량 + 1 완료');
	  				
	  				var total1 = prodTotalCal(id);
	  				var total2 = orderTotalCal();
	  				var total3 = total2 + 3000;
	  				var totalPriceElement1 = document.querySelector('.item-row[data-cart-id="' + id + '"] .prod-total-price');
	  				var totalPriceElement2 = document.getElementById('totalprice');
	  				var totalPriceElement3 = document.getElementById('orderTotalprice');
	  				totalPriceElement1.textContent = total1 + "원";
	  				totalPriceElement2.textContent = total2 + "원";
	  				totalPriceElement3.textContent = total3 + "원";
	  			} else {
	  				alert('수량 업데이트에 실패하였습니다.');
	  			}
	  		})
	  		.catch((error) => {
	  			console.error('There was an error!', error);
	  			alert('수량 업데이트 중 오류가 발생하였습니다.');
	  		});	
		}
	}
	
	// 제품별 총 가격을 계산한다.
	function prodTotalCal(id){
		var productPriceElement = document.querySelector('.item-row[data-cart-id="' + id + '"] .prodprice');
		var cartProdcntElement = document.querySelector('.item-row[data-cart-id="' + id + '"] .prodcnt');
		var totalPriceElement = productPriceElement.textContent * cartProdcntElement.value;
		
		return totalPriceElement;
	}
	
	// 주문 총 합계를 계산한다.
	function orderTotalCal(){
		var totalPrice = 0;
		
		var rows = document.querySelectorAll('.item-row');
		
		rows.forEach(row => {
			var productPrice = parseInt(row.querySelector('.prodprice').textContent);
			var productCnt = parseInt(row.querySelector('.prodcnt').value);
			
			totalPrice += productPrice * productCnt;
		});
		return totalPrice;
	}
	
	// Cart Total 초기값 설정
	window.onload = function(){
		var totalPrice1 = orderTotalCal();
		var totalPrice2 = totalPrice1 + 3000;
		document.getElementById('totalprice').textContent = totalPrice1 + "원";
		document.getElementById('orderTotalprice').textContent = totalPrice2 + "원";
	};
	
	function moveOrder(){
  		orderform.submit();
  	}
	</script>
	<!-- Cart Page End -->
</body>
</html>