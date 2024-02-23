<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://tiles.apache.org/tags-tiles"
prefix="tiles"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <!-- Topbar Start -->
    <div class="container-fluid topbar-top bg-primary">
      <div class="container">
        <div class="topbar py-2">
          <div class="text-center align-items-center flex-shrink-0 topbar-info">
            <span class="text-secondary align-items-center">가입하는 즉시, 할인쿠폰이 증정됩니다! </span> &nbsp;&nbsp;&nbsp;
            <a href="registerpage" class="text-secondary"><i class="fas fa-sign-in-alt text-dark"></i>&nbsp;&nbsp;지금 회원가입 하기</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="d-flex container-fluid bg-pillgreen flex-row-reverse">
      <div class="container">
        <nav class="navbar navbar-dark navbar-expand-lg py-lg-0 justify-content-between">
          <a href="home" class="navbar-brand">
            <h1 class="text-primary mb-0 display-5">Pi1l<span class="text-white">ing</span><i class="fa-solid fa-pills text-primary ms-2"></i></h1>
          </a>
          <button class="navbar-toggler bg-primary" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars text-dark"></span>
          </button>
          <div class="collapse navbar-collapse me-n3 flex-grow-0" id="navbarCollapse">
            <div class="navbar-nav ms-auto">
              <a href="productpurchase" class="d-flex nav-item nav-link">상품구매</a>
              <a href="service.html" class="nav-item nav-link">방문예약</a>
              <a href="project.html" class="nav-item nav-link">회사정보</a>
              <a href="contact.html" class="nav-item nav-link">고객센터</a>
            </div>
          </div>
          <div class="search-form align-items">
            <form method="post" action="index.html" style="margin-left: auto">
              <div class="form-group">
                <div class="d-flex">
                  <input
                    type="search"
                    class="form-control border-0 rounded-pill"
                    name="search-input"
                    value=""
                    placeholder="찾을 제품을 기입해주세요."
                    required=""
                  />
                  <button type="submit" value="Search Now!" class="buttonHidden">
                    <i class="fa fa-search text-dark"></i>
                  </button>
                </div>
              </div>
            </form>
          </div>
          <div class="d-flex align-items-center">
            <h2>
              <a href="login"><i class="fa-regular fa-user text-white"></i></a>
            </h2>
          </div>
        </nav>
      </div>
    </div>
    <!-- Navbar End -->
  </body>
</html>
