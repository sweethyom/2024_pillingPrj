<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <!-- Section: Design Block -->
    <section class="text-center text-lg-start" style="margin-top: 2rem">
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
          padding: 7rem !important;
        }
      </style>

      <!-- Jumbotron -->
      <div class="container py-4" style="width: 50vh">
        <div class="g-0 align-items-center">
          <div class="mb-5 mb-lg-0">
            <div class="card" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px)">
              <div class="card-body login-site-padding shadow-5 text-center">
                <h1 class="fw-bold mb-5">로그인</h1>
                <form action="loginresult" method="post">
                  <!-- ID input -->
                  <div class="form-outline mb-4">
                    <label class="form-label" for="userId">아이디</label>
                    <input type="text" id="userId" name="userId" class="form-control hyunwoo-border" />
                  </div>

                  <!-- Password input -->
                  <div class="form-outline mb-4">
                    <label class="form-label" for="userPswd">비밀번호</label>
                    <input type="password" id="userPswd" name="userPswd" class="form-control hyunwoo-border" />
                  </div>

                  <!-- 아이디, 패스워드 불일치 시 붉은 문구 삽입 -->
                  <c:if test="${not empty message}">
                    <label id="message">${message }</label>
                  </c:if>

                  <br />
                  <!-- Submit button -->
                  <button type="submit" class="btn btn-outline-dark-hyunwoo mt-3 text-size03">로그인</button>
                  &nbsp;&nbsp;&nbsp;&nbsp; <a href="registerpage" class="btn btn-outline-dark-hyunwoo mt-3 text-size03">회원가입</a>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Jumbotron -->
    </section>
    <!-- Section: Design Block -->
    <script>
      let wrongColor = '#ff0000';
      message.style.color = wrongColor;
    </script>
  </body>
</html>
