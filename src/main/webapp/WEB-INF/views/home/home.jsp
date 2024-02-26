<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <style>
      .main-page-image {
        background-size: cover;
      }
    </style>
  </head>
  <body>
    <!-- Carousel Start -->
    <div class="container-fluid carousel px-0 mb-5 pb-5">
      <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner" role="listbox">
          <div class="carousel-item active">
            <img src="resources/pilling/img/productimage/productrbanner.jpg" class="main-page-image img-fluid w-100" alt="First slide" />
            <div class="carousel-caption" style="margin-bottom: 15rem">
              <div class="container carousel-content">
                <h4 class="text-white display-6 mb-4 animated slideInDown">당신의 첫번째 영양제, Pi1ling</h4>
                <h1 class="text-white display-1 mb-4 animated slideInDown">지금 영양제 추천을 도와드리겠습니다.</h1>
                <a href="" class="me-2"
                  ><button type="button" class="px-5 py-3 btn btn-primary border-2 rounded-pill animated slideInDown">설문조사 시작</button></a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Carousel End -->

    <!-- About Start -->
    <div class="container-fluid py-5">
      <div class="container py-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
          <div class="col-lg-6 col-md-12 wow fadeInUp" data-wow-delay=".3s">
            <div class="about-img">
              <div class="rotate-left bg-pillgreen"></div>
              <div class="rotate-right bg-pillgreen"></div>
              <img src="resources/pilling/img/main/mainpage1.jpg" class="img-fluid h-100" alt="img" />
              <div class="bg-white experiences">
                <h1 class="display-3">10</h1>
                <h6 class="fw-bold">
                  년 동안 <br />
                  <h3>1위</h3>
                </h6>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-12 wow fadeInUp" data-wow-delay=".6s">
            <div class="about-item overflow-hidden">
              <h5 class="mb-2 px-3 py-1 text-dark rounded-pill d-inline-block border border-2 border-primary">Pi1ling</h5>
              <h1 class="display-5 mb-2">영양제 추천 사이트 1위</h1>
              <p class="fs-5" style="text-align: justify">
                영양제를 뭘 드셔야할 지 모르시겠다구요?<br />
                나와 가족을 위한 영양제를 모르시겠다구요?<br />
                그렇다면 pi1ling과 함께하세요!
              </p>
              <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3 mt-5">제품 구매하기</button>
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
          <h1 class="display-5">Pi1ling Best 제품</h1>
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
        <button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3 mt-4 wow fadeInUp" data-wow-delay=".3s">제품 더 보기</button>
      </div>
    </div>
    <!-- Services End -->

    <!-- Team Start -->
    <div class="container-fluid py-5">
      <div class="container py-5">
        <div class="text-center mb-5 wow fadeInUp" data-wow-delay=".3s">
          <h5 class="mb-2 px-3 py-1 text-dark rounded-pill d-inline-block border border-2 border-primary">Fi1ling Team</h5>
          <h1 class="display-5 w-50 mx-auto">Fi1ling과 함께하는 동료</h1>
        </div>
        <div class="row g-5">
          <div class="col-xxl-3 col-lg-6 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay=".3s">
            <div class="rounded team-item">
              <img src="resources/pilling/img/team-1..jpg" class="img-fluid w-100 rounded-top border border-bottom-0" alt="" />
              <div class="team-content bg-primary text-dark text-center py-3">
                <span class="fs-4 fw-bold">Full Name</span>
                <p class="text-muted mb-0">Designation</p>
              </div>
              <div class="team-icon d-flex flex-column">
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-twitter"></i></a>
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-instagram"></i></a>
                <a href="#" class="btn btn-primary border-0"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div>
          <div class="col-xxl-3 col-lg-6 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay=".5s">
            <div class="rounded team-item">
              <img src="resources/pilling/img/team-2.jpg" class="img-fluid w-100 rounded-top border border-bottom-0" alt="" />
              <div class="team-content bg-primary text-dark text-center py-3">
                <span class="fs-4 fw-bold">Full Name</span>
                <p class="text-muted mb-0">Designation</p>
              </div>
              <div class="team-icon d-flex flex-column">
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-twitter"></i></a>
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-instagram"></i></a>
                <a href="#" class="btn btn-primary border-0"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div>
          <div class="col-xxl-3 col-lg-6 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay=".7s">
            <div class="rounded team-item">
              <img src="resources/pilling/img/team-3.jpg" class="img-fluid w-100 rounded-top border border-bottom-0" alt="" />
              <div class="team-content bg-primary text-dark text-center py-3">
                <span class="fs-4 fw-bold">Full Name</span>
                <p class="text-muted mb-0">Designation</p>
              </div>
              <div class="team-icon d-flex flex-column">
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-twitter"></i></a>
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-instagram"></i></a>
                <a href="#" class="btn btn-primary border-0"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div>
          <div class="col-xxl-3 col-lg-6 col-md-6 col-sm-12 wow fadeInUp" data-wow-delay=".9s">
            <div class="rounded team-item">
              <img src="resources/pilling/img/team-4.jpg" class="img-fluid w-100 rounded-top border border-bottom-0" alt="" />
              <div class="team-content bg-primary text-dark text-center py-3">
                <span class="fs-4 fw-bold">Full Name</span>
                <p class="text-muted mb-0">Designation</p>
              </div>
              <div class="team-icon d-flex flex-column">
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-twitter"></i></a>
                <a href="#" class="btn btn-primary border-0 mb-2"><i class="fab fa-instagram"></i></a>
                <a href="#" class="btn btn-primary border-0"><i class="fab fa-linkedin-in"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Team End -->

    <!-- Testiminial Start -->
    <div class="container-fluid testimonial py-5">
      <div class="container py-5">
        <section class="mid-line">
          <h1 style="text-align: center;">Pi1ling 직원들이 체험한 후기</h1>
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
  </body>
</html>
