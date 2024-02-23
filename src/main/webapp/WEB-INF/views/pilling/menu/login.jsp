<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
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
      </style>

      <div class="container-fluid page-header py-5">
        <div class="container text-center py-5">
          <h1 class="display-2 text-white mb-4 animated slideInDown">당신을 위한, 단 하나의 영양제</h1>
          <h1 class="text-primary mb-0">Pi1l<span class="text-white">ing</span></h1>
        </div>
      </div>

      <!-- Jumbotron -->
      <div class="container py-4">
        <div class="row g-0 align-items-center">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="card cascading-right" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px)">
              <div class="card-body login-site-padding shadow-5 text-center">
                <h2 class="fw-bold mb-5">로그인</h2>
                <form>
                  <!-- ID input -->
                  <div class="form-outline mb-4">
                    <label class="form-label" for="userId">아이디</label>
                    <input type="text" id="userId" name="userId" class="form-control" />
                  </div>

                  <!-- Password input -->
                  <div class="form-outline mb-4">
                    <label class="form-label" for="userPswd">비밀번호</label>
                    <input type="password" id="userPswd" name="userPswd" class="form-control" />
                  </div>
                  <br />
                  <br />
                  <!-- Submit button -->
                  <button type="submit" class="btn btn-primary btn-block mb-4">로그인</button>
                  &nbsp;&nbsp;&nbsp;&nbsp; <a href="registerpage" class="btn btn-primary btn-block mb-4">회원가입</a>
                </form>
              </div>
            </div>
          </div>

          <div class="col-lg-6 mb-5 mb-lg-0">
            <img src="resources/pilling/img/login/loginimage.jpg" class="w-100 rounded-4 shadow-4" alt="" />
          </div>
        </div>
      </div>
      <!-- Jumbotron -->
    </section>
    <!-- Section: Design Block -->
  </body>
</html>
