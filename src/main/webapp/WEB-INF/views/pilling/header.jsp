<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://tiles.apache.org/tags-tiles"
prefix="tiles"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <style>
      .hyunwoo-border:focus {
        border-color: #0ae4b0;
        border-width: 0.2rem;
        box-shadow: none;
      }
    </style>
  </head>
  <body>
    <!-- Topbar Start -->
    <c:if test="${empty userId}">
      <div class="container-fluid topbar-top bg-maincolor">
        <div class="container">
          <div class="topbar py-2">
            <div class="text-center align-items-center flex-shrink-0 topbar-info">
              <span class="text-maincolor text-size01 align-items-center">가입하는 즉시, 할인쿠폰이 증정됩니다! </span> &nbsp;&nbsp;&nbsp;
              <a href="registerpage" class="text-maincolor text-size01"
                ><i class="fa-regular fa-address-card text-size01"></i>&nbsp;&nbsp;지금 회원가입 하기</a
              >
            </div>
          </div>
        </div>
      </div>
    </c:if>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="d-flex container-fluid flex-row-reverse navbar-bottom-border">
      <div class="container">
        <nav class="navbar navbar-dark navbar-expand-lg py-lg-0 justify-content-between">
          <a href="home" class="navbar-brand">
            <h1 class="text-mintcolor mb-0 display-5">
              Pill<span class="text-mintcolor">ing</span><i class="fa-solid fa-pills text-mintcolor ms-2"></i>
            </h1>
          </a>
          <button class="navbar-toggler bg-primary" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="fa fa-bars text-dark"></span>
          </button>
          <div class="collapse navbar-collapse me-n3 flex-grow-0" id="navbarCollapse">
            <div class="navbar-nav ms-auto">
              <a href="productpurchase" class="d-flex nav-item nav-link nav-text-color text-size02">제품구매</a>
              <a href="introduction" class="nav-item nav-link nav-text-color text-size02">회사정보</a>
              <a href="customerservice" class="nav-item nav-link nav-text-color text-size02">고객센터</a>
              <c:if test="${author eq 'ADMIN' }">
                <a href="admin" class="nav-item nav-link nav-text-color text-size02">관리자 페이지</a>
              </c:if>
            </div>
          </div>
          <div class="search-form align-items">
            <form action="productpurchase" id="searchForm" style="margin-left: auto" method="post">
              <div class="form-group">
                <div class="d-flex">
                  <input
                    type="search"
                    class="form-control rounded-pill hyunwoo-border"
                    name="searchInput"
                    value=""
                    placeholder="찾을 제품을 기입해주세요."
                    required
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
              <c:if test="${empty userId}">
                <a href="login" class="text-size01 nav-text-color">로그인</a>
              </c:if>
              <c:if test="${not empty userId}">
                <div class="d-flex align-items-center" style="justify-content: center">
                  <div class="profile-name">
                    <strong class="text-size01 text-mintcolor">${userLastname }${userFirstname }님 환영합니다.</strong>
                  </div>
                </div>
                <div class="icons">
                  <a href="mypage" class="text-size01 nav-text-color"><i class="fas fa-user-friends"></i>마이페이지</a>
                  <a href="logout" class="text-size01 nav-text-color"><i class="fa-solid fa-right-from-bracket"></i>로그아웃</a>
                </div>
              </c:if>
            </h2>
          </div>
        </nav>
      </div>
    </div>
    <!-- Navbar End -->
  </body>
</html>
