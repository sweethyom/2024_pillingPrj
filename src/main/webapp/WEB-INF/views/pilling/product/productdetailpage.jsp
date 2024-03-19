<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

    <!-- 2024년 3월 18일 오후 9시 10분 수정 (수정내용 : 세션 받아오기 위한 userId 변수선언) -->
    <script>
      var userId = '${userId}';
    </script>
    <style>
      .review-image {
        width: 100px;
        height: 100px;
        object-fit: cover;
        cursor: pointer;
      }
      .large-image {
        width: 500px;
        height: 500px;
        object-fit: cover;
        margin-top: 1rem;
        display: none; /* Hidden by default */
      }
      .review-rating {
        color: #ffc107; /* Bootstrap yellow star color */
      }

      p {
        font-size: 1.1rem;
        font-weight: 600;
      }
    </style>
  </head>
  <body>
    <!-- Product section-->
    <section class="bottom-padding boundary-border">
      <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
          <div class="product-detail-image">
            <img class="product-image-radius card-img-top mb-5 mb-md-0" src="${detail.filepath1 }" alt="..." />
          </div>
          <div class="product-detail-header">
            <div class="d-flex small mb-1 keywordHeader">
              <c:forEach var="keyword" items="${detail.keywordName}">
                <a class="keywordName">${keyword}</a>
              </c:forEach>
            </div>
            <br />
            <h1 class="sub-product-name">${detail.productName }</h1>
            <ul class="product-discription">
              <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription1 }</li>
              <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription2 }</li>
              <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription3 }</li>
              <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription4 }</li>
              <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription5 }</li>
            </ul>
            <div class="fs-5 mb-5">
              <span><fmt:formatNumber value="${detail.productPrice }" pattern="###,###,###" /> 원</span>
            </div>
            <div class="d-flex">
              <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />
              <button class="detail-buy-button btn btn-outline-dark flex-shrink-0" type="button" onclick="moveOrder(${detail.productId})">
                <i class="fa-regular fa-credit-card me-1"></i> 구매하기
              </button>
              <button class="btn btn-outline-dark flex-shrink-0" type="button" onclick="addCartCall(${detail.productId})">
                <i class="bi-cart-fill me-1"></i> 장바구니 담기
              </button>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- 상세 콘텐츠 START -->
    <section class="bottom-padding boundary-border">
      <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
          <div class="product-detail-header">
            <div>
              <h3>복용법 및 추천 섭취 시간</h3>
              <table class="taking-method" style="margin-bottom: 2rem">
                <tr class="taking-method">
                  <td width="20%" align="center"><img src="https://cdn.pillyze.io/icons/intake_time/breakfast.png" alt="아침 그림" /></td>
                  <td>${detail.takingMethod }</td>
                  <td width="20%">${detail.doseTime }</td>
                </tr>
              </table>
              <h3>제품 상세 정보</h3>
              <ul class="product-discription">
                <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription1 }</li>
                <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription2 }</li>
                <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription3 }</li>
                <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription4 }</li>
                <li class="product-discription-list"><i class="fa-solid fa-check">&nbsp;&nbsp;</i>${detail.productDescription5 }</li>
              </ul>
            </div>
          </div>
          <div class="product-detail-image">
            <img class="product-image-radius card-img-top mb-5 mb-md-0" src="${detail.filepath2 }" alt="..." />
          </div>
        </div>
      </div>
    </section>
    <!-- 상세 콘텐츠 END -->
    <!-- 제품 후기 페이지 START -->
    <section class="bottom-padding">
      <div class="container py-5" style="padding-top: 1rem !important">
        <h1 style="margin-bottom: 1rem">제품 후기</h1>
        <!-- Reviews List -->
        <div class="row row-cols-1 g-4">
          <c:forEach var="review" items="${review}" varStatus="status">
            <div class="col">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex align-items-start">
                    <img src="${review.reviewImage}" class="review-image rounded me-3" onclick="toggleImage(this, 'largeImg${status.index}')" />
                    <div>
                      <div class="review-rating">
                        <c:forEach begin="1" end="${review.rating}" var="star"> ★ </c:forEach>
                        <c:forEach begin="1" end="${5 - review.rating}" var="emptyStar"> ☆ </c:forEach>
                      </div>
                      <div class="text-muted">${review.userId} - ${review.reviewDate}</div>
                      <p class="mt-2 mb-1">${review.reviewTitle}</p>
                      <p class="text-muted">${review.reviewContent}</p>
                    </div>
                  </div>
                  <div id="largeImg${status.index}" style="display: none">
                    <img src="${review.reviewImage}" class="large-image rounded d-block mt-3 mx-auto" />
                  </div>
                </div>
              </div>
            </div>
          </c:forEach>

          <!-- 메시지 표시: 등록된 후기가 없습니다 -->
          <c:if test="${review == null or review.isEmpty()}">
            <div class="col">
              <p class="text-center">등록된 후기가 없습니다.</p>
            </div>
          </c:if>
        </div>
      </div>

      <!-- Pagination START -->
      <div class="container productpurchase-pagination">
        <ul class="pagination justify-content-center">
          <c:if test="${pageNum > 1}">
            <li class="page-item">
              <a class="page-link" href="?productId=${detail.productId }&pageNum=${pageNum - 1}" style="color: black">이전</a>
            </li>
          </c:if>
          <c:forEach begin="1" end="${totalPages}" var="i">
            <li class="page-item ${pageNum == i ? 'active' : ''}">
              <a class="page-link" href="?productId=${detail.productId }&pageNum=${i}" style="color: black">${i}</a>
            </li>
          </c:forEach>
          <c:if test="${pageNum < totalPages}">
            <li class="page-item">
              <a class="page-link" href="?productId=${detail.productId }&pageNum=${pageNum + 1}" style="color: black">다음</a>
            </li>
          </c:if>
        </ul>
      </div>
      <!-- Pagination END  -->
    </section>

    <!-- 제품 후기 END  -->

    <!-- 장바구니에 제품 번호를 넘겨줄 히든폼 -->
    <div>
      <form id="cartform" method="post">
        <input type="hidden" id="productId" name="productId" />
        <input type="hidden" id="userNo" name="userNo" value="${userNo }" />
        <input type="hidden" id="userId" name="userId" value="${userId }" />
        <input type="hidden" id="cartProdcnt" name="cartProdcnt" />
      </form>
    </div>

    <!-- 장바구니에 제품 번호를 넘겨줄 함수 -->
    <script>
      // 리뷰게시판 사진 확대 축소 코드
      document.addEventListener('DOMContentLoaded', function () {
        window.toggleImage = function (img, largeImageId) {
          var largeImg = document.getElementById(largeImageId);
          largeImg.style.display = largeImg.style.display === 'none' ? 'block' : 'none';
        };
      });
      // AJAX를 통해서 제품을 장바구니에 넣는다.
      // 2024년 3월 18일 오후 9시 19분 수정 (수정내용 : 로그인 안했을 시 장바구니에 못담도록 수정)
      function addCartCall(id) {
        // 유저가 로그인을 하지 않아서 userId 세션이 없다면(if)
        if (!userId) {
          Swal.fire({
            title: '장바구니 추가 불가',
            text: '로그인 후 장바구니에 상품을 담을 수 있습니다. 로그인으로 이동하시겠습니까?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '예',
            cancelButtonText: '아니오',
          }).then((result) => {
            if (result.isConfirmed) {
              window.location.href = 'login'; // 로그인 페이지의 URL로 교체해야 합니다.
            }
          });
        } else {
          // 로그인한 경우, 장바구니에 상품을 추가하는 기존 코드 실행
          document.getElementById('productId').value = id;
          document.getElementById('cartProdcnt').value = document.getElementById('inputQuantity').value;

          let form = document.getElementById('cartform');
          let formData = new FormData(form);
          let url = 'addcart';

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
                cartAlert();
              } else {
                alert('장바구니 추가에 실패하였습니다.');
              }
            })
            .catch((error) => {
              console.error('There was an error!', error);
              alert('장바구니 추가 중 오류가 발생하였습니다.');
            });
        }
      }

      // 장바구니 담고  SweetAlert 띄우기 (수정내용 : 주석 달음)
      function cartAlert() {
        Swal.fire({
          title: '장바구니에 제품 추가',
          text: '제품에 장바구니에 담겼습니다. 장바구니로 이동하시겠습니까?',
          icon: 'success',
          showCancelButton: true,
          confirmButtonText: '예',
          cancelButtonText: '아니오',
        }).then((result) => {
          if (result.isConfirmed) {
            moveCart();
          } else {
            console.log('장바구니로 안 감');
          }
        });
      }

      // 유저 넘버를 담고 장바구니로 이동시킨다.
      function moveCart() {
        cartform.action = 'cart';
        cartform.submit();
      }

      // 2024년 3월 18일 오후 9시 10분 수정 (수정 내용 : 로그인 안할 시 400 error 뜨는 현상 때문에, 로그인 안했을 시 세션 확인 후 로그인 페이지로 돌려보내기 위해 수정)
      // 로그인을 했으면, 바로구매 가능하게(else), 로그인을 하지 않았으면 SweetAlert 띄워서 확인하기
      function moveOrder(id) {
        // 유저가 로그인을 하지 않아서 userId 세션이 없다면(if)
        if (!userId) {
          Swal.fire({
            title: '구매 불가!',
            text: '로그인을 하지 않으면, 구매가 불가합니다. 로그인으로 이동하시겠습니까?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: '예',
            cancelButtonText: '아니오',
          }).then((result) => {
            if (result.isConfirmed) {
              window.location.href = 'login';
            }
          });
        } else {
          document.getElementById('productId').value = id;
          document.getElementById('cartProdcnt').value = document.getElementById('inputQuantity').value;
          cartform.action = 'orderdirect';
          cartform.submit();
        }
      }
    </script>
  </body>
</html>
