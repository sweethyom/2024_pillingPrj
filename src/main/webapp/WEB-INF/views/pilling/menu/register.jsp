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
          <h1 class="display-2 text-white mb-4 animated slideInDown">당신의 단 하나의 영양제</h1>
          <h1 class="text-primary mb-0">Pi1l<span class="text-white">ing</span></h1>
        </div>
      </div>

      <!-- Jumbotron -->
      <div class="container py-4">
        <div class="row g-0 align-items-center">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <img src="resources/pilling/img/login/loginimage.jpg" class="w-100 rounded-4 shadow-4" alt="" />
          </div>
          <div class="col-lg-6 mb-5 mb-lg-0">
            <div class="card cascading-right" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px)">
              <div class="card-body login-site-padding shadow-5 text-center">
                <h2 class="fw-bold mb-5">회원가입</h2>
                <form id="registerForm" action="memberregister" method="post">
                  <!-- Email input -->
                  <div class="form-outline mb-4">
                    <label class="form-label" for="userId">아이디</label>
                    <input
                      type="text"
                      id="userId"
                      class="form-control"
                      name="userId"
                      pattern="^([a-z0-9_]){6,50}$"
                      placeholder="아이디를 입력해주세요."
                      required
                    />
                  </div>

                  <!-- Password input -->
                  <div class="form-outline mb-4">
                    <label class="form-label" for="password">비밀번호</label>
                    <input
                      type="password"
                      id="password"
                      class="form-control"
                      name="userPassword"
                      pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{8,50}$"
                      placeholder="영문,숫자,특수문자 포함 8자 이상 입력해주세요."
                      required
                    />
                  </div>
                  <div class="form-outline mb-4">
                    <label class="form-label" for="passwordConfirm">비밀번호 확인</label>
                    <input
                      type="password"
                      id="passwordConfirm"
                      class="form-control"
                      pattern="^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*()_-+=[]{}~?:;`|/]).{8,50}$"
                      placeholder="위와 동일한 비밀번호를 입력해주세요."
                      required
                    />
                    <span id="passwordConfirmMsg"></span>
                  </div>
                  <div class="d-flex form-outline mb-4">
                    <label class="form-label" for="lastName"
                      >성
                      <input type="text" id="lastName" name="lastName" class="form-control" required />
                    </label>
                    <label class="form-label" for="firstName"
                      >이름
                      <input type="text" id="firstName" name="firstName" class="form-control" required />
                    </label>
                  </div>
                  <div>
                    <label class="form-label" for="birthDate"
                      >생년월일 &nbsp;&nbsp;
                      <input type="date" id="birthDate" min="1900-01-01" value="2024-02-22" />
                    </label>
                  </div>
                  <!-- Submit button -->
                  <button type="button" class="btn btn-primary btn-block mb-4" onclick="passConfirm()">가입하기</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Jumbotron -->
    </section>
    <!-- Section: Design Block -->

    <!-- JavaScript Function START -->
    <script type="text/javascript">
      /* 자바 스크립트 함수 선언(비밀번호 확인) */

      function passConfirm() {
        /* 비밀번호, 비밀번호 확인 입력창에 입력된 값을 비교해서 같다면 비밀번호 일치, 그렇지 않으면 불일치 라는 텍스트 출력.*/
        /* document : 현재 문서를 의미함. 작성되고 있는 문서를 뜻함. */
        /* getElementByID('아이디') : 아이디에 적힌 값을 가진 id의 value를 get을 해서 password 변수 넣기 */
        let password = document.getElementById('password'); //비밀번호
        let passwordConfirm = document.getElementById('passwordConfirm'); //비밀번호 확인 값
        let passwordConfirmMsg = document.getElementById('passwordConfirmMsg'); //확인 메세지
        let correctColor = '#00ff00'; //맞았을 때 출력되는 색깔.
        let wrongColor = '#ff0000'; //틀렸을 때 출력되는 색깔
        if (password.value != passwordConfirm.value) {
          //password 변수의 값과 passwordConfirm 변수의 값과 동일하다.
          passwordConfirmMsg.style.color = wrongColor;
          passwordConfirmMsg.innerHTML = '비밀번호가 불일치합니다.';
          alert('비밀번호가 일치하지 않습니다!');
        } else {
          passwordConfirmMsg.style.color = correctColor; /* span 태그의 ID(confirmMsg) 사용  */
          passwordConfirmMsg.innerHTML = '비밀번호가 일치합니다.'; /* innerHTML : HTML 내부에 추가적인 내용을 넣을 때 사용하는 것. */
          registerForm.submit();
        }
      }
    </script>
    <!-- JavaScript Function END -->
  </body>
</html>
