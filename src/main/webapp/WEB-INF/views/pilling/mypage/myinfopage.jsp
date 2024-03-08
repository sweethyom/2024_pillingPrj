<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="text-center text-lg-start">
		<style>
.width-myinfo {
	margin-left: auto;
	margin-right: auto;
	width: 60%;
}

.edit-btn {
	border-radius: 6px;
	border: 0px;
}

button {
	color: black;
}

#pwbtn {
	display: block;
}

.editinput {
	width: 200;
}

</style>
		<!-- Page Header Start -->
		<div class="container-fluid myinfopage-header py-5">
			<div class="container py-5">
				<h1 class="display-2 text-dark mb-4 animated slideInDown">나의 정보</h1>
				<nav aria-label="breadcrumb"></nav>
			</div>
		</div>
		<!-- Page Header End -->
		<!-- 나의 정보 -->
		<div class="container-fluid">
			<!-- DataTales Example -->
			<div class="width-myinfo card mb-2">
				<div class="card-header py-3">
					<div class="div-left">
						<h6 class="m-0">나의 정보</h6>
					</div>
				</div>
				<div class="card-body">
					<form name="myInfoEdit" id="myInfoEdit" action="myinfoedit" method="post">
						<div class=" table-responsive" id="box">
							<table class="table table-bordered" id="dataTable">
								<thead>
									<tr>
										<th width="200">아이디</th>
										<td width="500">${userId }</td>
									<tr>
										<th align=middle>비밀번호</th>
										<td>
										현재 비밀번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <input class="editinput" type="password" name="pswdbox" id="currentpw" placeholder="현재 비밀번호를 입력하세요" width="60%" required/>
										<br>
										새 비밀번호 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: <input type="password" class="editinput" name="pswdbox" placeholder="영문,숫자,특수문자 포함 8자 이상 입력해주세요." width="60%"required/>
										<br>
										<br>
										영문/숫자/특수문자 2가지 이상 조합 (8자이상)
										<br>
										3개 이상 연속되거나 동일한 문자/숫자 제외
										<br>
										아이디(이메일) 제외
										<br>
										<br>
										새 비밀번호 재입력 : <input type="password" class="editinput" name="pswdbox" id="passwordConfirm" placeholder="위와 동일한 비밀번호를 입력해주세요." width="60%" required/>
										<button name="pswdbox" type="submit" id="pswd" style="display:block;" onclick="editbutton1()">비밀번호 변경</button>
										<span id="passwordConfirmMsg2"></span>&nbsp;&nbsp;&nbsp;
												<span id="passwordConfirmMsg1"></span>
									</td>
									<tr>
										<th>이 름</th>
										<td>${userLastname }${userFirstname }</td>
									<tr>
										<th>생년월일</th>
										<td>${userBirthdate }</td>
									<tr>
										<th>성 별</th>
										<td>${userGender }</td>
									<tr>
										<th>연락처</th>
										<td>${userTel }<button style="float: right;"
												class="edit-btn" id="telbtn" type="button"
												onclick="telinput()">연락처수정</button></td>
									<tr>
										<th>이메일</th>
										<td>${userEmail}<button style="float: right;"
												class="edit-btn" id="emailbtn" type="button"
												onclick="emailinput()">이메일수정</button></td>
									<tr>
										<th>주소</th>
										<td>${userAddr}${userAddrdetail }<button
												style="float: right;" class="edit-btn" id="addrbtn"
												type="button" onclick="addreditinput()">주소수정</button></td>
									<tr>
										<th>총 구매액</th>
										<td>${userTotalamount }원</td>
									<tr>
										<th>마케팅동의여부</th>
										<td>${userMarketingYn }<button style="float: right;"
												class="edit-btn" id="mkbtn" type="button"
												onclick="mkinput()">마케팅동의수정</button></td>
									<tr>
										<th>탈퇴하시겠습니까?</th>
										<td><button class="edit-btn" type="submit">탈퇴하기</button>
								</thead>
							</table>

							<div align="center">
								<!-- Submit button -->
								<a href="outmyinfo" class="btn-margin btn btn-primary btn-block">돌아가기</a>
								<a href="savemyinfo"
									class="btn-margin btn btn-primary btn-block">저장하기</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	 <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script type="text/javascript">
	  function telinput() {
	      var obj=document.getElementsByClassName("teleditval");
	      if(obj.length>1){
	         return false;
	      }
	      
	    var inputval =
	    $('<button style="float: right;" class="edit-btn" id="telbutton" type="button">연락처 수정취소</button><br><input type="text" id="telinput" value="" name="telinput"/><br><button style="float: right;" class="edit-btn" id="telEditbutton" type="button">수정</button>').addClass("teleditval");
	    $('#telbtn').before(inputval);	 
	    
	    $('#telinput').val('${user.userTel}'); // 여기 수정;
	    
		var telbtn = document.getElementById('telbtn');
		if (window.getComputedStyle(telbtn, null).getPropertyValue('display') === 'block') {
			telbtn.style.display = 'none';
			}
		}
	  
	  function emailinput() {
	      var obj=document.getElementsByClassName("emaileditval");
	      if(obj.length>1){
	         return false;
	      }
	      
	    var inputval =
	      $('<button style="float: right;" class="edit-btn" id="emailbutton" type="button">이메일 수정취소</button><br><input type="email" id="telinput" value="" name="emailinput"/><br><button style="float: right;" class="edit-btn" id="emailEditbutton" type="button">수정</button>').addClass("emaileditval");
	    $('#emailbtn').before(inputval);	 
	    
	    $('#emailinput').val('${user.userEmail}'); // 여기 수정;
	    
		var emailbtn = document.getElementById('emailbtn');
		if (window.getComputedStyle(emailbtn, null).getPropertyValue('display') === 'block') {
			emailbtn.style.display = 'none';
			}
		}

	  function addreditinput() {
	      var obj=document.getElementsByClassName("addreditval");
	      if(obj.length>1){
	         return false;
	      }
	      
	    var inputval =
	      $('<button style="float: right;" class="edit-btn" id="addrbutton" type="button">주소 수정취소</button><br><br><input type="button" class="form-control mb-1" style="width: 20%" onclick="userAddressInput()" value="주소 찾기" />&nbsp;<input type="text" class="form-control" id="userAddr" name="userAddr" style="width: 70%" placeholder="도로명주소" required /><span id="guide" style="color: #999; display: none"></span><input type="text" class="form-control" id="userAddrdetail" name="userAddrdetail" placeholder="상세주소" required /><p id="addressConfirmMsg"></p><br><button style="float: right;" class="edit-btn" id="addrEditbutton" type="button">수정</button>');
	    $('#addrbtn').after(inputval);	 
	    
		var addrbtn = document.getElementById('addrbtn');
		if (window.getComputedStyle(addrbtn, null).getPropertyValue('display') === 'block') {
			addrbtn.style.display = 'none';
			}
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
      
      function mkinput(){
	      var obj=document.getElementsByClassName("mkeditval");
	      if(obj.length>1){
	         return false;
	      }
	      
	    var inputval =
	    $('<button style="float: right;" class="edit-btn" id="mkbutton" type="button">수정취소</button><br>마케팅수신에 동의하시겠습니까?<br><input type="radio" id="mkinputY" name="mkinput">네</input><br><input type="radio" id="mkinputN" name="mkinput">아니오</input><br><button style="float: right;" class="edit-btn" id="mkEditbutton" type="button">수정</button>').addClass("mkeditval");
	    $('#mkbtn').before(inputval);	 
	    
	    $('#mkinput').val('${user.userMarketingYn}'); // 여기 수정;
	    
		var mkbtn = document.getElementById('mkbtn');
		if (window.getComputedStyle(mkbtn, null).getPropertyValue('display') === 'block') {
			mkbtn.style.display = 'none';
			}
		}
      
	  function signout() {
		  var result = confirm("회원 탈퇴를 하시겠습니까?");
		  if(result) {
			  alert("탈퇴 처리되었습니다.");
		  }
	  }
	  
	    const hypenTel = (target) => {
	           target.value = target.value.replace(/[^0-9]/g, '').replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
	         };
	         //회원가입 유효성 검사 함수
	         function registerFormCheck() {
	           //입력값 변수 담아주기

	           var userPswd = document.getElementById('pswd');
	           var passwordConfirm = document.getElementById('passwordConfirm');
	           var userTel = document.getElementById('telinput');
	           var userEmail = document.getElementById('emailinput');
	           var userAddr = document.getElementById('addrinput');

	           //에러메시지 변수 담아주기
	           let correctColor = '#00ff00'; //맞았을 때 출력되는 색깔.
	           let wrongColor = '#ff0000'; //틀렸을 때 출력되는 색깔
	           let passwordConfirmMsg1 = document.getElementById('passwordConfirmMsg1');
	           let passwordConfirmMsg2 = document.getElementById('passwordConfirmMsg2');
	           let emailConfirmMsg = document.getElementById('emailConfirmMsg');
	           let telConfirmMsg = document.getElementById('telConfirmMsg');
	           let addressConfirmMsg = document.getElementById('addressConfirmMsg');

	           if (pswd.value == '') {
	             passwordConfirmMsg1.style.color = wrongColor;
	             passwordConfirmMsg1.innerHTML = '비밀번호를 입력하세요.';
	             userPswd.focus();
	             return false;
	           } else {
	             passwordConfirmMsg1.innerHTML = '';
	           }

	           //비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
	           var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;

	           if (!pwdCheck.test(pswd.value)) {
	             passwordConfirmMsg1.style.color = wrongColor;
	             passwordConfirmMsg1.innerHTML = '비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.';
	             userPswd.focus();
	             return false;
	           } else {
	             passwordConfirmMsg1.innerHTML = '';
	           }

	           if (passwordConfirm.value !== pswd.value) {
	             passwordConfirmMsg2.style.color = wrongColor;
	             passwordConfirmMsg2.innerHTML = '비밀번호가 일치하지 않습니다.';
	             passwordConfirm.focus();
	             return false;
	           } else {
	             passwordConfirmMsg2.innerHTML = '';
	           }

	           if (telinput.value == '') {
	             telConfirmMsg.style.color = wrongColor;
	             telConfirmMsg.innerHTML = '전화번호를 입력해주세요.';
	             telinput.focus();
	             return false;
	           } else {
	             telConfirmMsg.innerHTML = '';
	           }

	           if (emailinput.value == '') {
	             emailConfirmMsg.style.color = wrongColor;
	             emailConfirmMsg.innerHTML = '이메일을 입력해주세요.';
	             emailinput.focus();
	             return false;
	           } else {
	             emailConfirmMsg.innerHTML = '';
	           }

	           if (addrinput.value == '') {
	             addressConfirmMsg.style.color = wrongColor;
	             addressConfirmMsg.innerHTML = '주소를 검색해서 입력해주세요.';
	             addrinput.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
	             return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
	           } else {
	             addressConfirmMsg.innerHTML = '';
	           }

	           //입력 값 전송
	           document.myInfoEdit.submit(); //유효성 검사의 포인트
	         }

	         /* 유효성 검사 JS END */

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
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
</body>
</html>