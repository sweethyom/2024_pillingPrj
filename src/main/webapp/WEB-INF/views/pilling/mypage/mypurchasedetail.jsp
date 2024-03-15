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

	<div class="container-fluid myinfopage-header py-5">
		<div class="container py-5">
			<h1 class="display-2 text-black mb-4 animated slideInDown">my
				page</h1>
			<nav aria-label="breadcrumb"></nav>
		</div>
	</div>

	<div class="container"></div>
	<div class="row">
		<!-- 주문 내역 -->
		<div class="container-fluid">
			<!-- DataTales Example -->
			<div class="width-myinfo card mb-4">
				<div class="card-header py-3">
					<div class="div-left">
						<h3 class="m-0">구매내역</h3>
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
									<th width="200">결제상태</th>
									<th width="200">주문날짜</th>
									<th width="200">구매여부</th>
								</tr>
							</thead>
							<tbody>
								<tr class="main">
									<td width="100"><img
										src="resources/pilling/img/mypage/product.png" alt="제품 이미지"
										width="100"></td>
									<td width="400" class="productname" onclick="show()">${order.productName } 외 ${order.count }건</td>
									<td width="200">${order.orderTotalprice }</td>
									<td width="200">${order.orderstatusName }</td>
									<td>${order.orderDate }</td>
									<td><button type="button" id="reviewbtn" class="btn mb-4" onclick="location.href='newreview'" onmouseover="mouseover()" onmouseout="mouseout()">리뷰작성</button></td>
								</tr>
								
								<!-- 구매 상세내역 들어갈 것 -->
								<c:forEach var="orderDetail" items="${orderDetailList }">
								<tbody>
								<tr class="order-detail-list" style="display: none;">
									<th width="100">번호</th>
									<th width="400">제품명</th>
									<th width="200">가격</th>
									<th width="200">구매수량</th>
									<th width="200">소계</th>
									<td></td>
									<td>${orderDetail.orderId }</td>
									<td>${orderDetail.productName }</td>
									<td>${orderDetail.orderdetailPrice }</td>
									<td>${orderDetail.orderdetailCount }</td>
									</tr>
								</tbody>
								</c:forEach>
							</tbody>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
			
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
		    var orderlistcount = document.getElementsByClassName('order-detail-list');
		    for(var i = 1; i < orderlistcount.length; i++) {
	
		        var orderdetail = orderlistcount[i-1];
		        if (window.getComputedStyle(orderdetail, null).getPropertyValue('display') === 'none') {
		            orderdetail.style.display = 'block';
		        } else {
		            orderdetail.style.display = 'none';
		        }
		    }
		    
		    // show 함수를 호출하는 이벤트 핸들러 추가
		    var productNames = document.getElementsByClassName('productname');
		    for(var j = 0; j < productNames.length; j++) {
		        productNames[j].addEventListener('click', show);
		    }
		});
		
		function show() {
		    // 클릭된 요소의 부모 요소에서 order-detail-list 클래스를 가진 요소를 찾습니다.
		    var orderDetail = event.target.parentElement.querySelector('.order-detail-list');
		    
		    // orderDetail 요소가 존재하고 표시 상태를 확인합니다.
		    if (orderDetail) {
		        var displayStyle = window.getComputedStyle(orderDetail, null).getPropertyValue('display');
		        // 표시 상태에 따라 토글 기능을 수행합니다.
		        if (displayStyle === 'none') {
		            orderDetail.style.display = 'block';
		        } else {
		            orderDetail.style.display = 'none';
		        }
		    }
		}

		
		
		
		function mouseover(){
			document.getElementById("reviewbtn").style.color="black";
		}
		
		function mouseout(){
			document.getElementById("reviewbtn").style.color="#585858";
		}
	</script>
</body>
</html>