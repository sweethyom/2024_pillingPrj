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
        .cascading-left {
          margin-left: -50px;
        }

        @media (max-width: 991.98px) {
          .cascading-left {
            margin-left: 0;
          }
        }

        .login-site-padding {
          padding: 10rem !important;
        }

        .register-form-margin {
          margin-bottom: 1rem !important;
        }
      </style>

      <div class="container-fluid page-header py-5">
        <div class="container text-center py-5">
          <h1 class="display-2 text-white register-form-margin animated slideInDown">당신을 위한, 단 하나의 영양제</h1>
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
            <div class="card cascading-left" style="background: hsla(0, 0%, 100%, 0.55); backdrop-filter: blur(30px)">
              <div class="card-body login-site-padding shadow-5 text-center">
                <h2 class="fw-bold mb-5">회원가입</h2>

                <!-- 회원가입 form 시작 -->
                <form name="registerForm" id="registerForm" action="registerForm" method="post">
                  <!-- 아이디 input -->
                  <div class="form-outline register-form-margin">
                    <label class="form-label" for="userId">아이디</label>
                    <input type="text" id="userId" class="form-control" name="userId" placeholder="아이디를 입력해주세요." required />
                    <span id="idConfirmMsg"></span>
                  </div>

                  <!-- 비밀번호 input -->
                  <div class="form-outline register-form-margin">
                    <label class="form-label" for="userPswd">비밀번호</label>
                    <input
                      type="password"
                      id="userPswd"
                      class="form-control"
                      name="userPswd"
                      placeholder="영문,숫자,특수문자 포함 8자 이상 입력해주세요."
                      required
                    />
                    <span id="passwordConfirmMsg1"></span>
                  </div>
                  <!-- 비밀번호 재 확인 input -->
                  <div class="form-outline register-form-margin">
                    <label class="form-label" for="passwordConfirm">비밀번호 확인</label>
                    <input type="password" id="passwordConfirm" class="form-control" placeholder="위와 동일한 비밀번호를 입력해주세요." required />
                    <span id="passwordConfirmMsg2"></span>
                    <!-- 이 부분은 패스워드가 맞거나 틀릴 시 message 출력해줍니다. (함수에서 innertext 활용) -->
                  </div>
                  <!-- 전화번호 input -->
                  <div class="form-outline register-form-margin">
                    <label class="form-label" for="userTel">전화번호</label>
                    <input
                      type="tel"
                      id="userTel"
                      class="form-control"
                      name="userTel"
                      oninput="hypenTel(this)"
                      maxlength="13"
                      placeholder="전화번호를 입력해주세요.(- 제외)"
                      required
                    />
                    <span id="telConfirmMsg"></span>
                  </div>
                  <!-- 이메일 input -->
                  <div class="form-outline register-form-margin">
                    <label class="form-label" for="userEmail">이메일</label>
                    <input type="email" id="userEmail" class="form-control" name="userEmail" placeholder="이메일을 입력해주세요." required />
                  </div>
                  <span id="emailConfirmMsg"></span>
                  <!-- 이름 INPUT -->
                  <div class="d-flex form-outline register-form-margin justify-content-between">
                    <label class="form-label name-item" for="userLastname"
                      >성
                      <input type="text" id="userLastname" name="userLastname" class="form-control" placeholder="성을 입력해주세요." required />
                    </label>
                    <label class="form-label name-item" for="userFirstname"
                      >이름
                      <input type="text" id="userFirstname" name="userFirstname" class="form-control" placeholder="이름을 입력해주세요." required />
                    </label>
                  </div>
                  <span id="nameConfirmMsg"></span>
                  <!-- 생년월일 INPUT -->
                  <div>
                    <label class="form-label name-item" for="userBirthdate"
                      >생년월일 &nbsp;&nbsp;
                      <input type="date" id="userBirthdate" name="userBirthdate" min="1900-01-01" required />
                    </label>
                    <span id="birthdateConfirmMsg"></span>
                  </div>
                  <br />
                  <!-- 성별 INPUT (Radio 박스 활용) -->
                  <div>
                    <p class="ptag-margin">성별</p>
                    <label class="form-label" for="userGenderM"
                      >남자
                      <!-- 하나의 라디오버튼에만 required를 걸면 같은 name을 쓰는 라디오버튼 전체가 답을 달아야한다. -->
                      <input type="radio" id="userGenderM" name="userGender" value="M" required />
                    </label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <label class="form-label" for="userGenderF"
                      >여자
                      <input type="radio" id="userGenderF" name="userGender" value="F" />
                    </label>
                    <span id="genderConfirmMsg"></span>
                  </div>
                  <!-- 주소 찾기 INPUT (다음 API 이용) -->
                  <div style="margin-bottom: 20px">
                    <p class="ptag-margin">주소</p>
                    <div class="d-flex" style="margin-bottom: 5px">
                      <input type="button" class="form-control" style="width: 30%" onclick="userAddressInput()" value="주소 찾기" />
                      &nbsp;&nbsp;&nbsp;
                      <input type="text" class="form-control" id="userAddr" name="userAddr" style="width: 70%" placeholder="도로명주소" required />
                    </div>
                    <span id="guide" style="color: #999; display: none"></span>
                    <input type="text" class="form-control" id="userAddrdetail" name="" placeholder="상세주소" required />
                  </div>
                  <p id="addressConfirmMsg"></p>
                  <!-- 회원가입 완료 버튼 -->
                  <button type="button" class="btn btn-primary btn-block register-form-margin" onclick="registerFormCheck()">가입하기</button>
                </form>
                <!-- 회원가입 form 끝 -->
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- Jumbotron -->
    </section>
    <!-- Section: Design Block -->

    <!-- JavaScript Function START -->
    <!-- 다음 주소 받기 API CDN주소 -->
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

    <script type="text/javascript">
      // 전화번호 자동 하이픈 넣어주기
      const hypenTel = (target) => {
        target.value = target.value.replace(/[^0-9]/g, '').replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
      };
      //회원가입 유효성 검사 함수
      function registerFormCheck() {
        //입력값 변수 담아주기
        var userId = document.getElementById('userId');
        var userPswd = document.getElementById('userPswd');
        var passwordConfirm = document.getElementById('passwordConfirm');
        var userLastname = document.getElementById('userLastname');
        var userFirstname = document.getElementById('userFirstname');
        var userGenderF = document.getElementById('userGenderF');
        var userGenderM = document.getElementById('userGenderM');
        var userTel = document.getElementById('userTel');
        var userEmail = document.getElementById('userEmail');
        var userBirthdate = document.getElementById('userBirthdate');
        var userAddr = document.getElementById('userAddr');
        var userAddrDetail = document.getElementById('userAddrdetail');

        //에러메시지 변수 담아주기
        let correctColor = '#00ff00'; //맞았을 때 출력되는 색깔.
        let wrongColor = '#ff0000'; //틀렸을 때 출력되는 색깔
        let idConfirmMsg = document.getElementById('idConfirmMsg');
        let passwordConfirmMsg1 = document.getElementById('passwordConfirmMsg1');
        let passwordConfirmMsg2 = document.getElementById('passwordConfirmMsg2');
        let emailConfirmMsg = document.getElementById('emailConfirmMsg');
        let telConfirmMsg = document.getElementById('telConfirmMsg');
        let nameConfirmMsg = document.getElementById('nameConfirmMsg');
        let birthdateConfirmMsg = document.getElementById('birthdateConfirmMsg');
        let genderConfirmMsg = document.getElementById('genderConfirmMsg');
        let addressConfirmMsg = document.getElementById('addressConfirmMsg');

        if (userId.value == '') {
          //해당 입력값이 없을 경우 같은말: if(!uid.value)
          idConfirmMsg.style.color = wrongColor;
          idConfirmMsg.innerHTML = '아이디를 입력하세요.';
          userId.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
          return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
        } else {
          idConfirmMsg.innerHTML = '';
        }

        if (userPswd.value == '') {
          passwordConfirmMsg1.style.color = wrongColor;
          passwordConfirmMsg1.innerHTML = '비밀번호를 입력하세요.';
          userPswd.focus();
          return false;
        } else {
          passwordConfirmMsg1.innerHTML = '';
        }

        //비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
        var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

        if (!pwdCheck.test(userPswd.value)) {
          passwordConfirmMsg1.style.color = wrongColor;
          passwordConfirmMsg1.innerHTML = '비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.';
          userPswd.focus();
          return false;
        } else {
          passwordConfirmMsg1.innerHTML = '';
        }

        if (passwordConfirm.value !== userPswd.value) {
          passwordConfirmMsg2.style.color = wrongColor;
          passwordConfirmMsg2.innerHTML = '비밀번호가 일치하지 않습니다.';
          passwordConfirm.focus();
          return false;
        } else {
          passwordConfirmMsg2.innerHTML = '';
        }

        if (userTel.value == '') {
          telConfirmMsg.style.color = wrongColor;
          telConfirmMsg.innerHTML = '전화번호를 입력해주세요.';
          userTel.focus();
          return false;
        } else {
          telConfirmMsg.innerHTML = '';
        }

        if (userEmail.value == '') {
          emailConfirmMsg.style.color = wrongColor;
          emailConfirmMsg.innerHTML = '이메일을 입력해주세요.';
          userEmail.focus();
          return false;
        } else {
          emailConfirmMsg.innerHTML = '';
        }

        if (userLastname.value == '') {
          nameConfirmMsg.style.color = wrongColor;
          nameConfirmMsg.innerHTML = '성을 입력해주세요.';
          userLastname.focus();
          return false;
        } else {
          nameConfirmMsg.innerHTML = '';
        }

        if (userFirstname.value == '') {
          nameConfirmMsg.style.color = wrongColor;
          nameConfirmMsg.innerHTML = '이름을 입력해주세요.';
          userFirstname.focus();
          return false;
        } else {
          nameConfirmMsg.innerHTML = '';
        }

        if (userBirthdate.value == '') {
          birthdateConfirmMsg.style.color = wrongColor;
          birthdateConfirmMsg.innerHTML = '생년월일을 입력해주세요.';
          userBirthdate.focus();
          return false;
        } else {
          birthdateConfirmMsg.innerHTML = '';
        }

        if (!userGenderM.checked && !userGenderF.checked) {
          //둘다 미체크시
          genderConfirmMsg.style.color = wrongColor;
          genderConfirmMsg.innerHTML = '성별을 선택해주세요.';
          userGenderM.focus();
          return false;
        } else {
          genderConfirmMsg.innerHTML = '';
        }

        if (userAddr.value == '') {
          addressConfirmMsg.style.color = wrongColor;
          addressConfirmMsg.innerHTML = '주소를 검색해서 입력해주세요.';
          userAddr.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
          return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
        } else {
          addressConfirmMsg.innerHTML = '';
        }

        if (userAddrDetail.value == '') {
          addressConfirmMsg.style.color = wrongColor;
          addressConfirmMsg.innerHTML = '나머자 상세주소를 입력해주세요.';
          userAddrDetail.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
          return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
        } else {
          addressConfirmMsg.innerHTML = '';
        }

        //입력 값 전송
        document.registerForm.submit(); //유효성 검사의 포인트
      }

      /* 유효성 검사 JS END */

      //아이디 중복체크 팝업창(현재 공백문서)
      function id_check() {
        //window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
        window.open('', '', 'width=600, height=200, left=200, top=100');
      }

      //이메일 옵션 선택후 주소 자동 완성
      function change_email() {
        var email_add = document.getElementById('email_add');
        var email_sel = document.getElementById('email_sel');

        //지금 골라진 옵션의 순서와 값 구하기
        var idx = email_sel.options.selectedIndex;
        var val = email_sel.options[idx].value;

        email_add.value = val;
      }

      //우편번호 검색 팝업창(현재 공백문서)
      function search_address() {
        window.open('', 'b', 'width=600, height=300, left=200, top=100');
      }

      // 다음 주소받기 API 새창으로 구현
      function userAddressInput() {
        new daum.Postcode({
          oncomplete: function (data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
              extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if (data.buildingName !== '' && data.apartment === 'Y') {
              extraRoadAddr += extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName;
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if (extraRoadAddr !== '') {
              extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('userAddr').value = roadAddr;

            var guideTextBox = document.getElementById('guide');
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if (data.autoRoadAddress) {
              var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
              guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
              guideTextBox.style.display = 'block';
            } else if (data.autoJibunAddress) {
              var expJibunAddr = data.autoJibunAddress;
              guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
              guideTextBox.style.display = 'block';
            } else {
              guideTextBox.innerHTML = '';
              guideTextBox.style.display = 'none';
            }
          },
        }).open();
      }
    </script>
    <!-- JavaScript Function END -->
  </body>
</html>
