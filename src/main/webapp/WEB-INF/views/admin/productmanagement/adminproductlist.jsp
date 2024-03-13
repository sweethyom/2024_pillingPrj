<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <!-- Content wrapper -->
    <div class="content-wrapper">
      <div class="container-xxl flex-grow-1 container-p-y">
        <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">상품 관리 /</span> 상품 목록</h4>

        <!-- Basic Bootstrap Table -->
        <div class="card">
          <h5 class="card-header">상품 목록</h5>
          <div class="table-responsive text-nowrap">
            <table class="table">
              <thead>
                <tr>
                  <th>상품명</th>
                  <th>가 격</th>
                  <th>재고 개수</th>
                  <th>재고 위험도</th>
                  <th>추가 입고량 기입</th>
                  <th>수정&삭제</th>
                </tr>
              </thead>
              <tbody class="table-border-bottom-0">
                <c:forEach var="product" items="${productlist }">
                  <tr>
                    <td><strong>${product.productName }</strong></td>
                    <td>${product.productPrice }원</td>
                    <td>${product.stock }개</td>
                    <c:choose>
                      <c:when test="${product.stock > 500}">
                        <td><span class="badge bg-label-primary me-1">충분</span></td>
                      </c:when>
                      <c:when test="${product.stock <= 500 and product.stock > 300}">
                        <td><span class="badge bg-label-success me-1">보통</span></td>
                      </c:when>
                      <c:when test="${product.stock <= 300 and product.stock > 100}">
                        <td><span class="badge bg-label-info me-1">적음</span></td>
                      </c:when>
                      <c:otherwise>
                        <td><span class="badge bg-label-warning me-1">비상</span></td>
                      </c:otherwise>
                    </c:choose>
                    <td>
                      <form id="stockUpdate${product.productId}" class="stock-update-form" method="post">
                        <div style="display: flex; align-items: center">
                          <input type="hidden" name="productId" value="${product.productId}" />
                          <input
                            type="number"
                            id="addStock"
                            name="addStock"
                            class="form-control"
                            placeholder="추가 입고된 양을 입력해주세요."
                            style="width: 70%; margin-right: 0.5rem"
                            required
                          />
                          <input type="submit" class="form-control" value="추가" style="width: 20%" />
                        </div>
                      </form>
                    </td>
                    <td>
                      <div class="dropdown">
                        <button type="button" class="btn p-0 dropdown-toggle hide-arrow" data-bs-toggle="dropdown">
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu">
                          <a
                            class="dropdown-item update-product"
                            href="javascript:void(0);"
                            data-product-id="${product.productId}"
                            onclick="productUpadte(this.getAttribute('data-product-id'))"
                            ><i class="bx bx-edit-alt me-1"></i> 수정</a
                          >
                          <!-- data-product-id로 a태그에 productId값을 얻어 올 수 있다. 신기 방기 -->
                          <a
                            class="dropdown-item delete-product"
                            href="javascript:void(0);"
                            data-product-id="${product.productId}"
                            onclick="confirmDelete(this.getAttribute('data-product-id'))"
                            ><i class="bx bx-trash me-1"></i> 삭제</a
                          >
                        </div>
                      </div>
                    </td>
                  </tr>
                </c:forEach>
              </tbody>
            </table>
          </div>
        </div>
        <!--/ Basic Bootstrap Table -->

        <hr class="my-5" />

        <div class="container productpurchase-pagination">
          <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link" href="#">이전</a></li>
            <!-- 첫페이지에선 없음/시작인덱스 -10 -->
            <li class="page-item"><a class="page-link" href="#"> 1</a></li>
            <li class="page-item"><a class="page-link" href="#"> 2</a></li>
            <li class="page-item"><a class="page-link" href="#"> 3</a></li>
            <li class="page-item"><a class="page-link" href="#"> 4</a></li>
            <li class="page-item"><a class="page-link" href="#"> 5</a></li>
            <li class="page-item"><a class="page-link" href="#">다음</a></li>
            <!-- 마지막인덱스 +10 /마지막 인덱스에서는 없음 -->
          </ul>
          <div class="productAddBtn">
            <a href="productaddpage">
              <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3">제품추가</button>
            </a>
          </div>
        </div>
      </div>
    </div>
    <!-- Content wrapper -->
    <script type="text/javascript">
      /* 입고량 추가 스크립트 START */
      document.querySelectorAll('.stock-update-form').forEach((form) => {
        form.addEventListener('submit', function (event) {
          event.preventDefault(); // 폼의 기본 제출을 막습니다.
          ajaxStockUpdate(this); // 현재 form을 ajaxStockUpdate 함수에 전달
        });
      });

      function ajaxStockUpdate(formElement) {
        let formData = new FormData(formElement);
        let url = 'stockUpdate'; // 서버에서 재고 업데이트를 처리하는 URL

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
            if (text === 'Yes') {
              alert('재고 업데이트가 완료되었습니다.');
              location.reload(); // 페이지 새로고침
            } else {
              alert('재고 업데이트에 실패하였습니다.');
            }
          })
          .catch((error) => {
            console.error('There was an error!', error);
            alert('재고 업데이트 중 오류가 발생하였습니다.');
          });
      }
      /* 입고량 추가 스크립트 END */

      /* 제품 삭제 스크립트 START */
      function confirmDelete(productId) {
        if (confirm('정말 이 제품을 삭제하시겠습니까?')) {
          ajaxProductDelete(productId);
        }
      }

      function ajaxProductDelete(productId) {
        const data = JSON.stringify({ productId: productId });

        fetch('productdelete', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: data,
        })
          .then((response) => response.text())
          .then((text) => {
            if (text === 'Yes') {
              alert('제품이 성공적으로 삭제되었습니다.');
              location.reload();
            } else {
              alert('제품 삭제에 실패하였습니다.');
            }
          })
          .catch((error) => {
            console.log('에러 확인해주세요 : ', error);
            alert('제품 삭제 중 오류가 발생하였습니다.');
          });
      }
    </script>
  </body>
</html>
