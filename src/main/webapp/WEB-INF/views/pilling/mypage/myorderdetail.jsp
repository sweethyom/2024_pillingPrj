<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
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
    </style>

    <!-- Page Header Start -->
    <div class="container-fluid py-3">
      <div class="container py-3">
        <h1 class="display-2 text-dark mb-4">주문내역</h1>
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
              <h3 class="m-0">주문내역</h3>
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
                  <tr>
                    <td width="100"><img src="resources/pilling/img/mypage/product.png" alt="제품 이미지" width="100" /></td>
                    <td width="400">System Architect 외 2건</td>
                    <td width="200">1111111111원</td>
                    <td width="200">배송준비</td>
                    <td>2011/04/25</td>
                  </tr>
                  <!-- 구매 상세내역 들어갈 것 -->
                  <tr class="hidehidehide" style="display: none">
                    <td width="100">번호</td>
                    <td width="400">제품명</td>
                    <td width="200">가격</td>
                    <td width="200">구매수량</td>
                    <td width="200">소계</td>
                  </tr>
                  <tr>
                    <td width="100"><img src="resources/pilling/img/mypage/product.png" alt="제품 이미지" width="100" /></td>
                    <td width="400">vitaminC 외 1건</td>
                    <td width="200">2222222원</td>
                    <td width="200">배송완료</td>
                    <td>2024/02/25</td>
                  </tr>
                  <tr>
                    <td width="100"><img src="resources/pilling/img/mypage/product.png" alt="제품 이미지" width="100" /></td>
                    <td width="400">Omega-3 외 2건</td>
                    <td width="200">11111원</td>
                    <td width="200">배송완료</td>
                    <td>2024/01/25</td>
                  </tr>
                  <tr>
                    <td width="100"><img src="resources/pilling/img/mypage/product.png" alt="제품 이미지" width="100" /></td>
                    <td width="400">VitaminA 외 2건</td>
                    <td width="200">11111원</td>
                    <td width="200">배송완료</td>
                    <td>2023/11/23</td>
                  </tr>
                  <tr>
                    <td width="100"><img src="resources/pilling/img/mypage/product.png" alt="제품 이미지" width="100" /></td>
                    <td width="400">Calcium 외 2건</td>
                    <td width="200">111111원</td>
                    <td width="200">배송완료</td>
                    <td>2023/10/13</td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="container mt-3">
          <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link" href="#">Previous</a></li>
            <!-- 첫페이지에선 없음/시작인덱스 -10 -->
            <li class="page-item"><a class="page-link" href="#"> 1</a></li>
            <li class="page-item"><a class="page-link" href="#"> 2</a></li>
            <li class="page-item"><a class="page-link" href="#"> 3</a></li>
            <li class="page-item"><a class="page-link" href="#"> 4</a></li>
            <li class="page-item"><a class="page-link" href="#"> 5</a></li>
            <li class="page-item"><a class="page-link" href="#">Next</a></li>
            <!-- 마지막인덱스 +10 /마지막 인덱스에서는 없음 -->
          </ul>
        </div>
      </div>
    </div>
    <script>
      function show() {
        var obj = document.getElementsByClassName('hidehidehide')[0];
        if (obj.style.display == 'none') {
          obj.style.display = '';
        } else {
          obj.style.display = 'none';
        }
      }
    </script>
  </body>
</html>
