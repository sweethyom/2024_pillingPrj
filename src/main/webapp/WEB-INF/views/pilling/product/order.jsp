<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제하기</title>
</head>
<!-- 다음 주소 받기 API CDN주소 -->
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 포트원 결제 -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- 포트원 결제 -->
<style>
td {
	vertical-align: middle;
}

.center {
	margin: 0 auto;
	text-align: center;
	vertical-align: middle;
	text-align: center;
}

.td-leftnone {
	border-left: hidden;
}

.td-rightnone {
	border-right: hidden;
}

.width-order {
	width: 72%;
}
</style>
<body>
	<div class="container-fluid width-order">
		<div class="container py-5">

			<!-- 주문내역 -->
			<div class="card mb-4">
				<div class="card-header py-3">
					<div>
						<h5 class="m-0">주문내역</h5>
					</div>
				</div>
				<div class="card-body mb-3">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable">
							<thead>
								<tr>
									<th>제품</th>
									<th>제품명</th>
									<th>가격</th>
									<th>개수</th>
									<th>총가격</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${carts}" var="c">
									<tr class="item-row">
										<td width="100"><img src="${c.filepath }" alt="제품 이미지"
											width="80px" height="80px"></td>
										<td width="500">${c.productName}</td>
										<td width="200">${c.productPrice}</td>
										<td width="200">${c.cartProdcnt }</td>
										<td><p class="prodprice">${c.productPrice * c.cartProdcnt }원</p></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<!-- 주문내역 END -->

			<!--  구매자 정보 -->
			<div class="mb-4">
				<h5>구매자 정보</h5>
				<table class="table table-bordered" id="dataTable">
					<tr>
						<td width="150" style="background-color: #f5f6f6;">이름</td>
						<td class="td-rightnone"><a id="userLastname">${user.userLastname }</a><a
							id="userFirstname">${user.userFirstname }</a></td>
					</tr>
					<tr>
						<td style="background-color: #f5f6f6;">주소</td>
						<td class="td-rightnone"><a id="userAddr">${user.userAddr }</a>&nbsp;<a
							id="userAddrdetail">${user.userAddrdetail }</a></td>
					</tr>
					<tr>
						<td style="background-color: #f5f6f6;">연락처</td>
						<td class="td-rightnone"><a id="userTel">${user.userTel }</a></td>
					</tr>
				</table>
			</div>
			<!-- 구매자 정보 END -->
			<!-- 배송지 정보 Form START -->
			<form id="shippingForm" action="makepayment" method="post">
				<!-- 배송지 정보 -->
				<div class="mb-4">
					<h5>배송지 정보</h5>
					<table class="table table-bordered" id="dataTable">
						<tr>
							<!-- 성 INPUT -->
							<td width="150" style="background-color: #f5f6f6;">성</td>
							<td><input type="text" id="shippingRecipientln"
								name="shippingRecipientln" class="form-control"
								placeholder="성을 입력해주세요." required /><span id="lnameConfirmMsg"></span></td>
						</tr>
						<tr>
							<!-- 이름 INPUT -->
							<td width="150" style="background-color: #f5f6f6;">이름</td>
							<td><input type="text" id="shippingRecipientfn"
								name="shippingRecipientfn" class="form-control"
								placeholder="이름을 입력해주세요." required /> <span
								id="fnameConfirmMsg"></span></td>
						</tr>
						<tr>
							<td style="background-color: #f5f6f6;">주소</td>
							<td>
								<!-- 주소 찾기 INPUT (다음 API 이용) -->
								<div style="margin-bottom: 20px">
									<div class="d-flex" style="margin-bottom: 5px">
										<input type="button" class="form-control" style="width: 30%"
											onclick="userAddressInput()" value="주소 찾기" />
										&nbsp;&nbsp;&nbsp; <input type="text" class="form-control"
											id="shippingAddr" name="shippingAddr" style="width: 70%"
											placeholder="도로명주소" required />
									</div>
									<span id="guide" style="color: #999; display: none"></span> <input
										type="text" class="form-control" id="shippingAddrdetail"
										name="shippingAddrdetail" placeholder="상세주소" required />
								</div>
								<p id="addressConfirmMsg"></p>
							</td>
						</tr>
						<tr>
							<!-- 연락처 INPUT -->
							<td style="background-color: #f5f6f6;">연락처</td>
							<td><input type="tel" id="shippingTel" class="form-control"
								name="shippingTel" oninput="hypenTel(this)" maxlength="13"
								placeholder="전화번호를 입력해주세요.(- 제외)" required /> <span
								id="telConfirmMsg"></span></td>
						</tr>
					</table>
				</div>
				<!-- 배송지 입력 END -->

				<!-- 구매자 정보와 배송지 정보가 같은지 묻는 라디오버튼 -->
				<div class="mb-4">
					<div class="mb-1">
						<a>* 구매자 정보와 배송지 정보가 같습니까?</a>
					</div>
					&nbsp;&nbsp; <input type="radio" id="addrEqual" name="addrRadio"
						value="Y" onClick="copyShippingaddr()">&nbsp;네&nbsp;&nbsp;&nbsp;
					<input type="radio" id="saddrNotEqual" name="addrRadio" value="N"
						checked="checked">&nbsp;&nbsp;아니오
				</div>
				<!-- 라디오버튼 END -->

				<!-- 배송 요청사항 -->
				<div class="mb-4">
					<h5>배송 요청사항</h5>
					<input type="text" id="shippingRequest" name="shippingRequest"
						size="100%" placeholder="요청사항이 있으면 입력해주세요. (60자 이내)">
				</div>
				<!-- 배송 요청사항 END -->

				<!-- 결제정보 -->
				<div class="mb-5">
					<h5>결제 정보</h5>
					<table class="table table-bordered" id="dataTable">
						<tr>
							<td width="150" style="background-color: #f5f6f6;">총 제품가격</td>
							<td><a id="prodtotalprice"></a></td>
						</tr>
						<tr>
							<td style="background-color: #f5f6f6;">쿠폰 할인</td>
							<td><select id="couponSelect"
								onchange="updateTotalPriceByCoupon()">
									<option value="0/0">쿠폰 선택 안함</option>
									<c:forEach items="${couponList }" var="c">
										<option value="${c.couponId }/${c.couponRate }">${c.couponName }(할인율:${c.couponRate}%/${c.couponPeriod}까지)</option>
									</c:forEach>
							</select></td>
						</tr>
						<tr>
							<td style="background-color: #f5f6f6;">적립금</td>
							<td><a id="userPoint">${user.userPoint }</a>원<input
								type="text" id="pointSelect" name="usePoint" value=0 width="100"
								onblur="updateTotalPriceByPoint()"
								oninput="this.value = this.value.replace(/[^0-9]/g, '').replace(/(\..*)\./g, '$1');"
								maxlength="7"> <a class="btn btn-outline-dark-hyunwoo login-btn-size"
								onclick="pointSelectAll()" style="margin-left: 1rem;">모두 사용하기</a></td>
						</tr>
						<tr>
							<td style="background-color: #f5f6f6;">배송비</td>
							<td><a id="shippingPrice">3000원</a></td>
						</tr>
						<tr>
							<td style="background-color: #f5f6f6;">총 결제금액</td>
							<td><a id="resultTotalprice" name="resultTotalprice"></a>원</td>
						</tr>
						<tr>
							<td style="background-color: #f5f6f6;">결제방법</td>
							<td><input type="radio" name="payment" value="kakaopay"
								checked="checked">&nbsp;&nbsp;카카오페이</td>
						</tr>
					</table>
					<div class="mb-1">
						<a>* 배송비는 적립금으로 결제할 수 없습니다.</a>
					</div>
				</div>
				<input type="hidden" id="userNo" name="userNo" value="${userNo }">
				<input type="hidden" id="productId" name="productId"
					value="${carts[0].productId }"> <input type="hidden"
					id="orderstatusId" name="orderstatusId" value=1> <input
					type="hidden" id="orderTotalprice" name="orderTotalprice">
				<input type="hidden" id="orderCard" name="orderCard"> <input
					type="hidden" id="orderId" name="orderId" value="${newOrderId }">
				<input type="hidden" id="couponId" name="couponId">
			</form>
			<!-- 배송지 정보 Form END -->
			<!-- 결제정보 END -->

			<!-- 결제버튼 -->
			<div class="center">
				<button type="button"
					class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size"
					onclick="shippingFormCheck()">결제하기</button>
			</div>
			<!-- 결제버튼 END -->
		</div>

	</div>
	<!-- 결제 스크립트 -->
	<script type="text/javascript">
	var IMP = window.IMP;	
		// 결제요청
		function requestPay(){
			var resultTotalPrice = document.getElementById('resultTotalprice').textContent;
			var resultTotalPriceArr = resultTotalPrice.split('원');
			resultTotalPrice = parseInt(resultTotalPriceArr[0]);
			
			IMP.init('imp03000385');
			IMP.request_pay({
				pg: "kakaopay.TC0ONETIME",
				pay_method: "card",
				merchant_uid: "${newOrderId }",   // 주문번호
			    name: "${carts[0].productName } 외",
			    amount: resultTotalPrice,
			    buyer_email: "${userNo}",
			    buyer_name: "${userLastname}${userFirstname}",
			    buyer_tel: "${user.userTel}",
			    buyer_addr: "${user.userAddr }",
			    buyer_postcode: "01181"
			}, function (rsp){ //callback
				console.log(rsp);
				if (rsp.success) {
					console.log("payment success");
					document.getElementById('shippingForm').submit();
				    } else {
				      alert(`결제에 실패하였습니다. 에러 내용: ${rsp.error_msg}`);
				    }
			});
		}
		
	</script>
	<script>
		// 총 제품가격 초기값 할당
		window.onload = function(){
			var totalPrice1 = orderTotalCal();
			var totalPrice2 = totalPrice1 + 3000;
			document.getElementById('prodtotalprice').textContent = totalPrice1 + "원";
			document.getElementById('resultTotalprice').textContent = totalPrice2;
		};
		
		// 주문 총 합계를 계산한다.
		function orderTotalCal(){
			var totalPrice = 0;
			
			var rows = document.querySelectorAll('.item-row');
			
			rows.forEach(row => {
				var productPrice = parseInt(row.querySelector('.prodprice').textContent);
				totalPrice += productPrice;
			});
			
			return totalPrice;
		}
		
		// 쿠폰에 따라 총 결제금액 변경하기
		function updateTotalPriceByCoupon(){
			var couponInfo = document.getElementById("couponSelect").value.split('/');
			var couponRate = couponInfo[1];
			var resultTotalprice = orderTotalCal();
			var discountedPrice = (resultTotalprice - (resultTotalprice * couponRate / 100))+3000;
			document.getElementById("resultTotalprice").textContent = discountedPrice + "원";
			document.getElementById("pointSelect").value = 0;
		}
		
		// 포인트를 입력하면 총 결제금액 변경하기
		function updateTotalPriceByPoint(){
			var couponInfo = document.getElementById("couponSelect").value.split('/');
			var couponRate = couponInfo[1];
			var resultTotalprice = orderTotalCal();
			var discountedPrice = resultTotalprice - ((resultTotalprice * couponRate / 100));
			
			var inputPoint = document.getElementById("pointSelect").value;
			var totalPrice = discountedPrice;
			var userPoint = document.getElementById("userPoint").textContent;
			
			inputPoint = parseInt(inputPoint);
			userPoint = parseInt(userPoint);

			if(inputPoint > userPoint){
				inputPoint = userPoint;
			}
			
			if(totalPrice > inputPoint){
				totalPrice -= inputPoint;
			} else{
				inputPoint = totalPrice;
				totalPrice = 0;
			}
			
			totalPrice += 3000;
			document.getElementById("pointSelect").value = inputPoint;
			document.getElementById("resultTotalprice").textContent = totalPrice;
		}
		
		function pointSelectAll(){
			document.getElementById("pointSelect").value = 999999999;
			updateTotalPriceByPoint();
		}
	
		// 전화번호 자동 하이픈 넣어주기
	    const hypenTel = (target) => {
	      target.value = target.value.replace(/[^0-9]/g, '').replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
	    };
		// 다음 주소받기 API 새창으로 구현
		function userAddressInput() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var roadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 참고 항목 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName;
					}
					// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('shippingAddr').value = roadAddr;

					var guideTextBox = document.getElementById('guide');
					// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
					if (data.autoRoadAddress) {
						var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
						guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr
								+ ')';
						guideTextBox.style.display = 'block';
					} else if (data.autoJibunAddress) {
						var expJibunAddr = data.autoJibunAddress;
						guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr
								+ ')';
						guideTextBox.style.display = 'block';
					} else {
						guideTextBox.innerHTML = '';
						guideTextBox.style.display = 'none';
					}
				},
			}).open();
		}

		//배송지 정보 유효성 검사 함수
		function shippingFormCheck() {
			//입력값 변수 담아주기
			var shippingRecipientln = document.getElementById('shippingRecipientln');
			var shippingRecipientfn = document.getElementById('shippingRecipientfn');
			var shippingTel = document.getElementById('shippingTel');
			var shippingAddr = document.getElementById('shippingAddr');
			var shippingAddrdetail = document.getElementById('shippingAddrdetail');

			//에러메시지 변수 담아주기
			let correctColor = '#00ff00'; //맞았을 때 출력되는 색깔.
			let wrongColor = '#ff0000'; //틀렸을 때 출력되는 색깔
			let telConfirmMsg = document.getElementById('telConfirmMsg');
			let lnameConfirmMsg = document.getElementById('lnameConfirmMsg');
			let fnameConfirmMsg = document.getElementById('fnameConfirmMsg');
			let addressConfirmMsg = document
					.getElementById('addressConfirmMsg');
			
			if (shippingRecipientln.value == '') {
				lnameConfirmMsg.style.color = wrongColor;
				lnameConfirmMsg.innerHTML = '성을 입력해주세요.';
				shippingRecipientln.focus();
				return false;
			} else {
				lnameConfirmMsg.innerHTML = '';
			}

			if (shippingRecipientfn.value == '') {
				fnameConfirmMsg.style.color = wrongColor;
				fnameConfirmMsg.innerHTML = '이름을 입력해주세요.';
				shippingRecipientfn.focus();
				return false;
			} else {
				fnameConfirmMsg.innerHTML = '';
			}

			if (shippingAddr.value == '') {
				addressConfirmMsg.style.color = wrongColor;
				addressConfirmMsg.innerHTML = '주소를 검색해서 입력해주세요.';
				shippingAddr.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
				return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
			} else {
				addressConfirmMsg.innerHTML = '';
			}

			if (shippingAddrdetail.value == '') {
				addressConfirmMsg.style.color = wrongColor;
				addressConfirmMsg.innerHTML = '나머자 상세주소를 입력해주세요.';
				shippingAddrdetail.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
				return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
			} else {
				addressConfirmMsg.innerHTML = '';
			}
			
			if (shippingTel.value == '') {
				telConfirmMsg.style.color = wrongColor;
				telConfirmMsg.innerHTML = '전화번호를 입력해주세요.';
				shippingTel.focus();
				return false;
			} else {
				telConfirmMsg.innerHTML = '';
			}
			
			//폼으로 보내기 전에 폼의 값을 채워준다.
			var selectPayment = document.querySelector('input[name="payment"]:checked').value;
			var resultTotalPrice = document.getElementById('resultTotalprice').textContent;
			var resultTotalPriceArr = resultTotalPrice.split('원');
			resultTotalPrice = resultTotalPriceArr[0];
			document.getElementById('orderTotalprice').value = resultTotalPrice;
			document.getElementById('orderCard').value = selectPayment;
			var couponInfo = document.getElementById("couponSelect").value.split('/');
			var couponId = couponInfo[0];
			document.getElementById('couponId').value = couponId;
			
			//입력 값 전송
			//document.getElementById('shippingForm').submit(); //유효성 검사의 포인트
			
			requestPay();
		}
		
		//구매자 정보와 배송지 정보가 같냐고 물어보는 라디오버튼에 '네'를 클릭하면
		//구매자 정보에 있는 배송지 정보를, from의 배송지 정보에 자동으로 카피해준다.
		function copyShippingaddr(){
			var userLastname = document.getElementById('userLastname');
			var userFirstname = document.getElementById('userFirstname');
			var userAddr = document.getElementById('userAddr');
			var userAddrdetail = document.getElementById('userAddrdetail');
			var userTel = document.getElementById('userTel');
			
			document.getElementById('shippingRecipientln').value = userLastname.text;
			document.getElementById('shippingRecipientfn').value = userFirstname.text;
			document.getElementById('shippingAddr').value = userAddr.text;
			document.getElementById('shippingAddrdetail').value = userAddrdetail.text;
			document.getElementById('shippingTel').value = userTel.text;
		}
	</script>
</body>

</html>