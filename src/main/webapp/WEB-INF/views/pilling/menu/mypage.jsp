<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script src="https://kit.fontawesome.com/69f92e09cc.js" crossorigin="anonymous"></script>
	<!-- Section: Design Block -->
    <section class="text-center text-lg-start">
      <style>
        .cascading-right {
          margin-right: -50px;
        }

        @media (max-width: 991.98px) {
          .cascading-right {
            margin-right: 0;
          }
        }

        .login-site-padding {
          padding: 10rem !important;
        }
        
        .row{
        	margin: 0 auto;
        	width: 60%;
        }
        .div-left{
        	float: left;
        }
        .div-right{
        	float: right;
        }
        .div-center{
        	margin: auto;
        	text-align:center;
        }
        .div-center-l{
        	margin: 0;
        }
        .mb-6 {
		  margin-bottom: 5rem !important;
		}
		td {
			vertical-align: middle;
		}
		.td-center{
			vertical-align: middle;
			text-align: center;
		}
      </style>

      <div class="container-fluid page-header py-5">
        <div class="container text-center py-5">
          <h1 class="display-2 text-white mb-4 animated slideInDown">my page</h1>
        </div>
      </div>
      
      <div class="container">
      	
      </div>
      
      	  <!-- Content Row -->
      <div class="row">

          <!-- 등급 카드 -->
          <div class="col-xl-4 col-md-6 mb-4" style="height: 200px;">
              <div class="card border-left-primary shadow h-100 py-2">
                  <div class="card-body">
                      <div class="row no-gutters align-items-center">
                      	  <div class="div-left">
                      	  	  <div>
	                              <div class="text-xs font-weight-bold text-success mb-1 div-center">RANK</div>
	                              <div class="h1 mb-0 font-weight-bold text-gray-800 div-center div-center-l mb-3">VIP</div>
	                              <div class="text-xs font-weight-bold text-uppercase mb-1 div-center">
	                              	  <hr>
	                              	  ${userFirstname }님의 등급
	                              </div>
                          	  </div>
                      	  </div>
                      </div>
                  </div>
              </div>
          </div>

          <!-- 쿠폰 카드 -->
          <div class="col-xl-4 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                  <div class="card-body">
                      <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                              <div class="text-xs font-weight-bold text-success text-uppercase mb-1 div-center">COUPON</div>
                              <div class="h1 mb-0 font-weight-bold text-gray-800 div-center">0장</div>
                              <div class="text-xs font-weight-bold text-uppercase mb-1 div-center">
	                              <hr>
	                              보유 쿠폰 
	                          </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>

          <!-- 적립금 카드 -->
          <div class="col-xl-4 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                  <div class="card-body">
                      <div class="row no-gutters align-items-center">
                          <div class="col mr-2">
                              <div class="text-xs font-weight-bold text-success text-uppercase mb-1 div-center">POINT
                              </div>
                              <div class="row no-gutters align-items-center">
                                  <div>
                                      <div class="h1 mb-0 mr-3 font-weight-bold text-gray-800 div-center">0원</div>
                                  </div>
                              </div>
                          </div>
                          <div class="text-xs font-weight-bold text-uppercase mb-1 div-center">
	                          <hr>
	                          보유 적립금	  
	                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
      
      <br><br><br>
      
      <div class="row">
        <div class="col-xl-12 col-md-6 mb-4 div-center">
            <div class="card border-left-success py-2">
                <div class="card-body div-center">
                	<table>
                		<tr height="60">
                			<td width="450" class="td-cente">
                            	<i class="fa-regular fa-address-card h4"></i>
                            		&nbsp;
                            		<label class="h5"><a href="myinfo" id="myinfo" class="nav-item nav-link" style="color:black;">나의정보</a></label>
                            </td>
                			<td width="450" class="td-center">
                            	<i class="fa-solid fa-circle-question h4"></i>
                            		&nbsp;
                            		<label class="h5">문의내역</label>
                        	</td>
                		</tr>
                		<tr height="50">
                			<td class="td-center">
                            	<i class="fa-regular fa-newspaper h5"></i>
                            		&nbsp;
                            		<label class="h5">리뷰내역</label>
                            	</td>
                			<td class="td-center">
                            	<i class="fa-regular fa-calendar-check h5"></i>
                            		&nbsp;
                            		<label class="h5">예약내역</label>
                            	</td>
                		</tr>
                	</table>
                </div>
            </div>
        </div>
      </div>

      <br><br>
      <div class="row">
    	  <h2>나의 활동</h2>
    	  <!-- 주문 내역 -->
                <div class="container-fluid">
                    <!-- DataTales Example -->
                    <div class="card mb-4">
                        <div class="card-header py-3">
                        	<div class="div-left">
                        		<h6 class="m-0">주문내역</h6>
                        	</div>
                            <div class="div-right">
	                            <h6 class="text-muted m-0">>>상세보기</h6>
	                        </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>이름</th>
                                            <th>총 가격</th>
                                            <th>배송상태</th>
                                            <th>주문날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td width="100"><img src="resources/pilling/img/mypage/product.png" alt="제품 이미지" width="100"></td>
                                            <td width="400">System Architect</td>
                                            <td width="200">1111111111원</td>
                                            <td width="200">배송준비</td>
                                            <td>2011/04/25</td>
                                        </tr>
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
	                            <h6 class="text-muted m-0">>>상세보기</h6>
	                        </div>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th></th>
                                            <th>이름</th>
                                            <th>총 가격</th>
                                            <th>배송상태</th>
                                            <th>주문날짜</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td width="100"><img src="resources/pilling/img/mypage/product.png" alt="제품 이미지" width="100"></td>
                                            <td width="400">prduct name</td>
                                            <td width="200">19,800원</td>
                                            <td width="200">배송완료</td>
                                            <td>2011/04/25</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
      </div>
      
      <div class="row div-center">
      	<img src="resources/pilling/img/mypage/banner.png"  alt="적립금 안내 배너">
      </div>
</body>
</html>