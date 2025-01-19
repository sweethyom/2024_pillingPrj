<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Section: Design Block -->
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

.width-myinfo {
	margin-left: auto;
	margin-right: auto;
	width: 60%;
}

.order-detail-list {
	display: none;
}
</style>

    <!-- Page Header Start -->
    <div class="container-fluid py-3">
		<div class="container py-3">
		  <h1 class="display-2 text-dark mb-4">구매내역</h1>
		</div>
	  </div>
	  <!-- Page Header End -->

	<div class="container"></div>
	<div class="row">
		<!-- 주문 내역 -->
		<div class="container-fluid">
			<!-- DataTales Example -->
			<div class="width-myinfo card mb-4">
				<div class="card-header py-3">
					<div class="div-left">
						<h3 class="m-0">구매내역</h3><span>(리뷰작성을 원하시면 구매하신 제품명을 눌러주세요)</span>
					</div>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable">
							<c:forEach var="order" items="${orderList }">
							<thead>
								<tr>
									<th width="100">제품</th>
									<th width="400">제품명</th>
									<th width="200">총 가격</th>
									<th width="200">배송상태</th>
									<th width="200">주문날짜</th>
									
								</tr>
							</thead>
							<tbody>
								<tr class="main" data-order-id="${order.orderId }">
									<td width="100"><img
										src="${order.filepath }" alt="제품 이미지"
										width="100"></td>
									<td width="400"><button type="button"class="btn productname" id="click${order.orderId}" data-order-id="${order.orderId}" onmouseover="detailmouseover()" onmouseout="detailmouseout()" style="text-transform: none;">${order.productName }
										<c:if test="${order.count>1 }"> 외 ${order.count-1 }건</c:if></button></td>
									<td width="200">${order.orderTotalprice }원</td>
									<td>${order.status }</td>
									<td width="200">${order.orderDate }</td>
									
								</tr>
								
								<!-- 구매 상세내역 들어갈 것 -->
								<tr class="order-detail-list" id="detail${order.orderId}" style="display: none;">
								<td colspan="6">
						 			<table class="table table-bordered">
									<tr>
										<td >번호</td>
										<td >제품명</td>
										<td >가격</td>
										<td >구매수량</td>
										<td >소계</td>
										<td >리뷰</td> 
										
									</tr>
						 			<c:forEach var="orderDetail" items="${orderDetailList}">
						 			<c:if test="${orderDetail.orderId eq order.orderId}">
									<tr>
										<td>${orderDetail.orderId }</td>
										<td>${orderDetail.productName }</td>
										<td>${orderDetail.orderdetailPrice }원</td>
										<td>${orderDetail.orderdetailCount }개</td>
										<td>${orderDetail.detailTotalPrice }원</td>
										<c:choose>
										<c:when test="${orderDetail.reviewYn eq 'Y'}">
											<td><button type="button" id="reviewhiddenbtn" class="btn">리뷰작성완료</button></td>
										</c:when>
										<c:when test="${orderDetail.reviewYn eq 'N'}">
											<td><button type="button" id="reviewbtn" class="btn" onclick="javascript:location.href='newreview?orderId=${order.orderId}&productId=${orderDetail.productId}';" onmouseover="btnmouseover()" onmouseout="btnmouseout()">리뷰작성</button></td>
										</c:when>
									</c:choose>
									</tr>
						 			</c:if>
									</c:forEach> 
									</table>
								</td>
								</tr>
								
							</tbody>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
/*		function show() {
			for (var i=0, i++)
			var obj = document.getElementsByClassName("hidehidehide")[i];
			if (obj.style.display == 'none') {
				obj.style.display = '';
			} else {
				obj.style.display = 'none';
			}
		} */
		
		 
		document.addEventListener("DOMContentLoaded", function() {
		    // show 함수를 호출하는 이벤트 핸들러 추가
		    var productNames = document.getElementsByClassName('productname');
		    for(var j = 0; j < productNames.length; j++) {
		        productNames[j].addEventListener('click', function(event){
		        		show(this)
		      		});
		        productNames[j].addEventListener('click', function(event){
		        	detailmouseover(this)
	      		});	
		        productNames[j].addEventListener('click', function(event){
		        	detailmouseout(this)
	      		});		    
			}
		});
		        
		function show(element) {
			var orderId = element.getAttribute('data-order-id');			
			var ordertoggle = document.getElementById("detail"+orderId);	
			if (ordertoggle.style.display === 'none'){
				ordertoggle.style.display = 'contents'
			}else{
				ordertoggle.style.display = 'none';
			}
		} 
		
		function btnmouseover(){
			document.getElementById("reviewbtn").style.color="black";
		}
		
		function btnmouseout(){
			document.getElementById("reviewbtn").style.color="#585858";
		}
		
	    function detailmouseover(element) {
	        var orderId = element.getAttribute('id').substring(6); 
	        var mouseover = document.getElementById("click" + orderId);
	        mouseover.style.color = "black";
	    }
	            
	    function detailmouseout(element) {
	        var orderId = element.getAttribute('id').substring(6); 
	        var mouseout = document.getElementById("click" + orderId);
	        mouseout.style.color = "#585858";
	    }
	</script>
</body>
</html>