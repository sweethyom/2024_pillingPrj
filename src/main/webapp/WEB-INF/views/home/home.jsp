<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <style>
      .main-page-image {
        background-size: cover;
      }
      .bg-image {
        background: url('resources/pilling/img/surveybannerimage.png') no-repeat center center;
        background-size: cover;
        height: 100vh;
      }
      .overlay {
        background-color: rgba(255, 255, 255, 0.8);
        height: 100vh;
      }
      .text-section {
        height: 100vh;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        padding-right: 5%;
        text-align: right;
        background-color: #75eba7;
        font-family: 'Pretendard-Regular', sans-serif !important ;
      }
      .category-links a {
        color: black;
        text-decoration: none;
        padding: 0 10px;
      }
      .category-links a:not(:last-child)::after {
        content: '•';
        padding-left: 10px;
      }
    </style>
  </head>
  <body>
    <!-- 설문조사 안내 section Start -->
    <div class="row no-gutters bg-image">
      <div class="col-12 col-md-4 overlay">
        <div class="text-section">
          <h1 class="text-dark font-custom" style="text-align: center">당신의 단 하나의 영양제,<br />Pilling</h1>
          <p class="text-dark text-size02">뭘 원하시는지 모르는 당신께 추천드립니다.</p>
          <div class="category-links">
            <a class="text-dark text-size02">당신의</a>
            <a class="text-dark text-size02">영양제를</a>
            <a class="text-dark text-size02">추천</a>
            <a class="text-dark text-size02">해드립니다</a>
          </div>
          <a onclick="checkLoginStatus()" class="btn btn-outline-dark mt-3 text-size03" style="margin-top: 3rem !important">설문조사 시작하기</a>
        </div>
      </div>
      <div class="col-12 col-md-8">
        <!-- Content on the left side (image) -->
      </div>
    </div>
    <!-- 설문조사 안내 section End -->

    <!-- About Start -->
    <div class="container-fluid py-5">
      <div class="container py-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
          <div class="col-lg-6 col-md-12 wow fadeInUp" data-wow-delay=".3s">
            <img
              src="resources/pilling/img/main/mainpage1.jpg"
              class="img-fluid h-100"
              alt="img"
              style="width: auto; height: 80%; border-radius: 1rem"
            />
          </div>
          <div class="col-lg-6 col-md-12 wow fadeInUp" data-wow-delay=".6s">
            <div class="about-item overflow-hidden">
              <h1 class="display-5 mb-3">영양제 추천 사이트 1위</h1>
              <p class="fs-5" style="text-align: justify">
                영양제를 뭘 드셔야할 지 모르시겠다구요?<br />
                나와 가족을 위한 영양제를 모르시겠다구요?<br />
                그렇다면 Pilling과 함께하세요!
              </p>
              <a href="productpurchase" class="btn btn-outline-dark mt-3 text-size03" style="margin-top: 2rem !important">제품 구매하기</a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- About End -->

    <!-- 회사 제품 소개 Start -->
    <section class="feature-bg py-5 text-center text-white font-family-pretendard">
      <h1 class="mb-3 text-dark font-custom" style="text-align: center">저희 브랜드는</h1>
      <p class="text-dark text-size03 mb-5">영양제는 먹어보고 싶지만, 무엇을 먹어야 할 지 모르는 분들을 위해 태어났습니다.</p>
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-4 mb-3">
            <div class="card feature-card">
              <img src="resources/pilling/img/home100x100size01.jpg" class="card-img-top mx-auto pt-3" alt="No Sugar" />
              <div class="card-body">
                <h5 class="card-title text-size03 font-family-pretendard" style="margin-bottom: 1rem">동물실험 반대 및 비건</h5>
              </div>
            </div>
          </div>
          <div class="col-md-4 mb-3">
            <div class="card feature-card">
              <img src="resources/pilling/img/home100x100size02.jpg" class="card-img-top mx-auto pt-3" alt="No Gluten" />
              <div class="card-body" style="margin-top: 21px">
                <h5 class="card-title text-size03 font-family-pretendard" style="margin-bottom: 1rem">GMP & USP 인증</h5>
              </div>
            </div>
          </div>
          <div class="col-md-4 mb-3">
            <div class="card feature-card">
              <img src="resources/pilling/img/home100x100size03.jpg" class="card-img-top mx-auto pt-3" alt="No Butter" />
              <div class="card-body" style="margin-top: 19px">
                <h5 class="card-title text-size03 font-family-pretendard" style="margin-bottom: 1rem">Inner & Outer Health 지향</h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- 회사 제품 소개 End -->

    <script type="text/javascript">
      function checkLoginStatus() {
        const isLoggedIn = ${isLoggedIn}; // 서버에서 값을 받는다 (Boolean 타입)
        if (!isLoggedIn) {
          alert("로그인을 하셔야 설문조사가 가능합니다.");
          window.location.href = "login";
        } else {
          window.location.href = "surveypage";
        }
      }
    </script>
  </body>
</html>
