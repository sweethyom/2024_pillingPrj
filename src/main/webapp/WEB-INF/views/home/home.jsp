<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
      background-color: #75EBA7;
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
          <h1 class="text-white" style="text-align: center;">당신의 단 하나의 영양제,<br>Pilling</h1>
          <p class="text-white text-size01">뭘 원하시는지 모르는 당신께 추천드립니다.</p>
          <div class="category-links">
            <a class="text-white text-size01">당신의</a>
            <a class="text-white text-size01">영양제를</a>
            <a class="text-white text-size01">추천</a>
            <a class="text-white text-size01">해드립니다</a>
          </div>
          <a onclick="checkLoginStatus()" class="btn btn-outline-light mt-3 text-size03" style="margin-top: 3rem !important;">설문조사 시작하기</a>
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
              <img src="resources/pilling/img/main/mainpage1.jpg" class="img-fluid h-100" alt="img" style="width: auto; height: 80%;" />
          </div>
          <div class="col-lg-6 col-md-12 wow fadeInUp" data-wow-delay=".6s">
            <div class="about-item overflow-hidden">
              <h5 class="mb-2 px-3 py-1 text-dark rounded-pill d-inline-block border border-2 border-primary">pilling</h5>
              <h1 class="display-5 mb-2">영양제 추천 사이트 1위</h1>
              <p class="fs-5" style="text-align: justify">
                영양제를 뭘 드셔야할 지 모르시겠다구요?<br />
                나와 가족을 위한 영양제를 모르시겠다구요?<br />
                그렇다면 pilling과 함께하세요!
              </p>
              <a href="productpurchase">
              <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3 mt-5">제품 구매하기</button>
            </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- About End -->

    <!-- Services Start -->
    <div class="container-fluid services py-5">
      <div class="container text-center py-5">
        <div class="text-center mb-5 wow fadeInUp" data-wow-delay=".3s">
          <h1 class="display-5">pilling Best 제품</h1>
        </div>
        <div class="row g-5">
          <div class="col-xxl-3 col-lg-6 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay=".3s">
            <div class="bg-light rounded p-5 services-item">
              <div class="d-flex" style="align-items: center; justify-content: center">
                <div class="mb-4 rounded-circle services-inner-icon">
                  <i class="fa fa-spider fa-3x text-primary"></i>
                </div>
              </div>
              <h4>Spiders</h4>
              <p class="fs-5">Lorem ipsum dolor sit amet consectetur adipisc elit sed.</p>
              <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3">Learn More</button>
            </div>
          </div>
          <div class="col-xxl-3 col-lg-6 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay=".5s">
            <div class="bg-light rounded p-5 services-item">
              <div class="d-flex" style="align-items: center; justify-content: center">
                <div class="mb-4 rounded-circle services-inner-icon">
                  <i class="fa fa-spider fa-3x text-primary"></i>
                </div>
              </div>
              <h4 class="text-center">Mosquitos</h4>
              <p class="text-center fs-5">Lorem ipsum dolor sit amet consectetur adipisc elit sed.</p>
              <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3">Learn More</button>
            </div>
          </div>
          <div class="col-xxl-3 col-lg-6 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay=".7s">
            <div class="bg-light rounded p-5 services-item">
              <div class="d-flex" style="align-items: center; justify-content: center">
                <div class="mb-4 rounded-circle services-inner-icon">
                  <i class="fa fa-spider fa-3x text-primary"></i>
                </div>
              </div>
              <h4 class="text-center">Rodents</h4>
              <p class="text-center fs-5">Lorem ipsum dolor sit amet consectetur adipisc elit sed.</p>
              <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3">Learn More</button>
            </div>
          </div>
          <div class="col-xxl-3 col-lg-6 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay=".9s">
            <div class="bg-light rounded p-5 services-item">
              <div class="d-flex" style="align-items: center; justify-content: center">
                <div class="mb-4 rounded-circle services-inner-icon">
                  <i class="fa fa-spider fa-3x text-primary"></i>
                </div>
              </div>
              <h4 class="text-center">Termites</h4>
              <p class="text-center fs-5">Lorem ipsum dolor sit amet consectetur adipisc elit sed.</p>
              <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3">Learn More</button>
            </div>
          </div>
        </div>
        <a href="productpurchase">
        <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3 mt-4 wow fadeInUp" data-wow-delay=".3s">제품 더 보기</button>
        </a>
      </div>
    </div>
    <!-- Services End -->

    <!-- Testiminial Start -->
    <div class="container-fluid testimonial py-5">
      <div class="container py-5">
        <section class="mid-line">
          <h1 style="text-align: center;">pilling 직원들이 체험한 후기</h1>
          <br><br><br>
          <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay=".5s">
            <div class="testimonial-item">
              <div class="testimonial-content rounded mb-4 p-4">
                <p class="fs-5 m-0"><h5>와! 이 영양제 실화냐? 가슴이 웅장해진다.</h5></p>
              </div>
              <div class="d-flex align-items-center mb-4" style="padding: 0 0 0 25px">
                <div class="position-relative">
                  <img src="resources/pilling/img/productimage/employeeimg01.jpg" class="img-fluid rounded-circle py-2" alt="" />
                  <div class="position-absolute" style="top: 33px; left: -25px">
                    <i class="fa fa-quote-left rounded-pill bg-primary text-dark p-3"></i>
                  </div>
                </div>
                <div class="ms-3">
                  <h4 class="mb-0">박현웅(쌍둥이) 사원</h4>
                  <p class="mb-1">개발자팀</p>
                  <div class="d-flex">
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                  </div>
                </div>
              </div>
            </div>
            <div class="testimonial-item">
              <div class="testimonial-content rounded mb-4 p-4">
                <p class="fs-5 m-0">
                  <h5>따봉</h5>
                </p>
              </div>
              <div class="d-flex align-items-center mb-4" style="padding: 0 0 0 25px">
                <div class="position-relative">
                  <img src="resources/pilling/img/productimage/employeeimg02.jpg" class="img-fluid rounded-circle py-2" alt="" />
                  <div class="position-absolute" style="top: 33px; left: -25px">
                    <i class="fa fa-quote-left rounded-pill bg-primary text-dark p-3"></i>
                  </div>
                </div>
                <div class="ms-3">
                  <h4 class="mb-0">손지은 사원</h4>
                  <p class="mb-1">개발자팀</p>
                  <div class="d-flex">
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                  </div>
                </div>
              </div>
            </div>
            <div class="testimonial-item">
              <div class="testimonial-content rounded mb-4 p-4">
                <p class="fs-5 m-0">
                  <h5>이 영양제 먹고, 새 인생을 살고있어요! 마약같아요!</h5>
                </p>
              </div>
              <div class="d-flex align-items-center mb-4" style="padding: 0 0 0 25px">
                <div class="position-relative">
                  <img src="resources/pilling/img/productimage/employeeimg01.jpg" class="img-fluid rounded-circle py-2" alt="" />
                  <div class="position-absolute" style="top: 33px; left: -25px">
                    <i class="fa fa-quote-left rounded-pill bg-primary text-dark p-3"></i>
                  </div>
                </div>
                <div class="ms-3">
                  <h4 class="mb-0">박현우 사원</h4>
                  <p class="mb-1">개발자팀</p>
                  <div class="d-flex">
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                  </div>
                </div>
              </div>
            </div>
            <div class="testimonial-item">
              <div class="testimonial-content rounded mb-4 p-4">
                <p class="fs-5 m-0">
                  <h5>그저 그런 영양제가 아니라, 퓌1일링 영양제입니다.</h5>
                </p>
              </div>
              <div class="d-flex align-items-center mb-4" style="padding: 0 0 0 25px">
                <div class="position-relative">
                  <img src="resources/pilling/img/productimage/employeeimg03.jpg" class="img-fluid rounded-circle py-2" alt="" />
                  <div class="position-absolute" style="top: 33px; left: -25px">
                    <i class="fa fa-quote-left rounded-pill bg-primary text-dark p-3"></i>
                  </div>
                </div>
                <div class="ms-3">
                  <h4 class="mb-0">이효미 팀장</h4>
                  <p class="mb-1">개발자팀</p>
                  <div class="d-flex">
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                    <small class="fas fa-star text-primary me-1"></small>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
      </div>
    </div>
    <!-- Testiminial End -->

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
