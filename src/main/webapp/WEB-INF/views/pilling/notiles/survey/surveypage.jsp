<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Fi1ling</title>
    <meta content="" name="keywords" />
    <meta content="" name="description" />

    <!-- Google Web Font Stylesheet -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@600;700;800&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Jua&family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet" />

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Libraries Stylesheet -->
    <link href="resources/pilling/lib/animate/animate.min.css" rel="stylesheet" />
    <link href="resources/pilling/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="resources/pilling/css/bootstrap.min.css" rel="stylesheet" />

    <!-- Template Stylesheet -->
    <link href="resources/pilling/css/style.css" rel="stylesheet" />
    <link href="resources/pilling/css/hyunwoostyle.css" rel="stylesheet" />

    <style>
      body {
        background-color: #fdf001;
      }

      .btn-check {
        display: none; /* Hide the default radio button */
      }

      .btn-outline-success,
      .btn-outline-danger {
        padding: 10px 20px; /* Increase padding to make buttons larger */
        font-size: 20px; /* Increase font size for better readability */
        width: 300px; /* Set a specific width for the buttons */
        text-align: center; /* Ensure the text is centered */
      }
      .left-align {
        text-align: left;
        align-items: baseline;
      }
    </style>
  </head>
  <body>
    <!-- 설문조사 START -->
    <div class="d-flex container carousel-content survey-container animated slideInDown">
      <h1 class="text-dark display-6">당신의 첫번째 영양제,</h1>
      <h1 class="text-primary mb-0 display-3">Pi1l<span style="color: #3faf08">ing</span><i class="fa-solid fa-pills text-primary ms-2"></i></h1>
      <div class="d-flex survey-question-container">
        <!-- 설문조사 3개씩 보여주기 첫번째 세트 START -->
        <div class="question-set" id="set1">
          <div class="survey-question-card">
            <h3>1. 최근(4주 이내) 피곤함을 느끼거나, 현기증을 느끼신적이 있으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question1" value="1" id="success-outlined1" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined1">예</label>
              <input type="radio" class="btn-check" name="question1" id="danger-outlined1" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined1">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>2. 최근(4주 이내) 피부가 까칠한 느낌이나, 푸석한 느낌을 받으셨습니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question2" value="2" id="success-outlined2" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined2">예</label>
              <input type="radio" class="btn-check" name="question2" id="danger-outlined2" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined2">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>3. 최근(4주 이내) 팔과 다리가 저릿하거나, 뒷목이 당기는 느낌을 받으셨습니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question3" value="3" id="success-outlined3" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined3">예</label>
              <input type="radio" class="btn-check" name="question3" id="danger-outlined3" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined3">아니오</label>
            </div>
          </div>
          <button class="btn btn-success next-btn" onclick="showNextSet('set1')" disabled>다음</button>
        </div>
        <!-- 첫번째 세트 END -->

        <!-- 설문조사 3개씩 보여주기 두번째 세트 START -->
        <div class="question-set" id="set2">
          <div class="survey-question-card">
            <h3>4. 최근(4주 이내) 감기에 걸렸거나, 기타 감염 질환에 걸린적이 있으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question4" value="4" id="success-outlined4" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined4">예</label>
              <input type="radio" class="btn-check" name="question4" id="danger-outlined4" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined4">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>5. 최근(4주 이내) 쉽게 잠에 들지 못하거나, 자주 잠에서 깨십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question5" value="5" id="success-outlined5" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined5">예</label>
              <input type="radio" class="btn-check" name="question5" id="danger-outlined5" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined5">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>6. 최근(4주 이내) 스트레스를 받는 일이나, 긴장감이 극도에 달한 적이 있습니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question6" value="6" id="success-outlined6" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined6">예</label>
              <input type="radio" class="btn-check" name="question6" id="danger-outlined6" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined6">아니오</label>
            </div>
          </div>
          <button class="btn btn-success next-btn" onclick="showNextSet('set2')" disabled>다음</button>
          <button class="btn btn-secondary prev-btn" onclick="showPrevSet('set2')">이전</button>
        </div>
        <!-- 두번째 세트 END -->
        <!-- 설문조사 3개씩 보여주기 세번째 세트 START -->
        <div class="question-set" id="set3">
          <div class="survey-question-card">
            <h3>7. 최근(4주 이내) 눈이 뻑뻑하거나, 눈에 대한 피로감이 크다고 느끼셨습니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question7" value="7" id="success-outlined7" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined7">예</label>
              <input type="radio" class="btn-check" name="question7" id="danger-outlined7" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined7">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>8. 당뇨병 진단을 받으신적 있거나, 건강검진 상에 혈당이 약간 높다고 나오신적이 있으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question8" value="8" id="success-outlined8" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined8">예</label>
              <input type="radio" class="btn-check" name="question8" id="danger-outlined8" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined8">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>9. 3달 이내, '내가 나이가 조금 들었나?' 라고 느낄 정도로 몸에 대한 변화가 있으셨습니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question9" value="9" id="success-outlined9" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined9">예</label>
              <input type="radio" class="btn-check" name="question9" id="danger-outlined9" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined9">아니오</label>
            </div>
          </div>
          <button class="btn btn-success next-btn" onclick="showNextSet('set3')" disabled>다음</button>
          <button class="btn btn-secondary prev-btn" onclick="showPrevSet('set3')">이전</button>
        </div>
        <!-- 세번째 세트 END -->
        <!-- 설문조사 3개씩 보여주기 네번째 세트 START -->
        <div class="question-set" id="set4">
          <div class="survey-question-card">
            <h3>10. 최근(4주 이내) 물건 같은 것을 자주 잃어버린다거나, 할 일을 깜빡하고 놓칠때가 있으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question10" value="10" id="success-outlined10" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined10">예</label>
              <input type="radio" class="btn-check" name="question10" id="danger-outlined10" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined10">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>11. 최근(4주 이내) 배변이상증상(설사, 변비, 복통)등을 겪거나, 복부에 가스가 찬다는 느낌을 자주 받으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question11" value="11" id="success-outlined11" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined11">예</label>
              <input type="radio" class="btn-check" name="question11" id="danger-outlined11" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined11">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>12. 최근(4주 이내) 뼈가 약해졌다는 증상(주로 관절통)이나 느낌(주로 시리다라는 느낌)을 받으신적이 있으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question12" value="12" id="success-outlined12" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined12">예</label>
              <input type="radio" class="btn-check" name="question12" id="danger-outlined12" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined12">아니오</label>
            </div>
          </div>
          <button class="btn btn-success next-btn" onclick="showNextSet('set4')" disabled>다음</button>
          <button class="btn btn-secondary prev-btn" onclick="showPrevSet('set4')">이전</button>
        </div>
        <!-- 네번째 세트 END -->

        <!-- 설문조사 3개씩 보여주기 다섯번째 세트 START -->
        <div class="question-set" id="set5">
          <div class="survey-question-card">
            <h3>
              13. 최근(4주 이내) 피로감을 평소보다 더 느끼거나, 피부색이 어두워졌다고 생각한 적이 있습니까? 또는 음주를(월 3회 이상) 과하게 하시나요?
            </h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question13" value="13" id="success-outlined13" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined13">예</label>
              <input type="radio" class="btn-check" name="question13" id="danger-outlined13" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined13">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>14. 최근(4주 이내) 모발이 얇아진 느낌 또는 손톱&발톱이 자주 깨지거나 갈라지시나요?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question14" value="14" id="success-outlined14" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined14">예</label>
              <input type="radio" class="btn-check" name="question14" id="danger-outlined14" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined14">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>*설문답변자가 남성일시 답변*</h3>
            <h3>15. 최근들어, 성기능이 떨어진다거나, 근력 및 지구력이 감소했다고 느낀적이 있으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question15" value="15" id="success-outlined15" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined15">예</label>
              <input type="radio" class="btn-check" name="question15" id="danger-outlined15" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined15">아니오</label>
            </div>
          </div>
          <button class="btn btn-success next-btn" onclick="showNextSet('set5')" disabled>다음</button>
          <button class="btn btn-secondary prev-btn" onclick="showPrevSet('set5')">이전</button>
        </div>
        <!-- 다섯번째 세트 END -->
        <!-- 설문조사 3개씩 보여주기 여섯번째 세트 START -->
        <div class="question-set" id="set6">
          <div class="survey-question-card">
            <h3>*설문답변자가 여성일시 답변*</h3>
            <h3>16. 최근들어, 여성갱년기 증상(안면홍조, 갑작스런 발열 및 오한, 월경주기 불안정, 기타 등)을 느끼셨습니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question16" value="16" id="success-outlined16" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined16">예</label>
              <input type="radio" class="btn-check" name="question16" id="danger-outlined16" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined16">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>17. 최근(4주 이내) 운동을 할 때, 쉽게 지치거나 힘들어하십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question17" value="17" id="success-outlined17" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined17">예</label>
              <input type="radio" class="btn-check" name="question17" id="danger-outlined17" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined17">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>18. 현재 다이어트 중이지만, 좀 처럼 체지방이 느리게 감소되거나, 감소가 되지 않으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question18" value="18" id="success-outlined18" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined18">예</label>
              <input type="radio" class="btn-check" name="question18" id="danger-outlined18" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined18">아니오</label>
            </div>
          </div>
          <button class="btn btn-success next-btn" onclick="showNextSet('set6')" disabled>다음</button>
          <button class="btn btn-secondary prev-btn" onclick="showPrevSet('set6')">이전</button>
        </div>
        <!-- 여섯번째 세트 END -->
        <!-- 설문조사 3개씩 보여주기 일곱번째 세트 START -->
        <div class="question-set" id="set7">
          <div class="survey-question-card">
            <h3>19. 현재 임신중이십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question19" value="19" id="success-outlined19" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined19">예</label>
              <input type="radio" class="btn-check" name="question19" id="danger-outlined19" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined19">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>20. 마지막 질문입니다. 당신의 성별은?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question20" value="20" id="success-outlined20" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined20">여자</label>
              <input type="radio" class="btn-check" name="question20" id="danger-outlined20" value="21" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined20">남자</label>
            </div>
          </div>
          <button class="btn btn-success submit-btn" onclick="submitSurvey()" disabled>제출</button>
          <button class="btn btn-secondary prev-btn" onclick="showPrevSet('set7')">이전</button>
        </div>
        <!-- 일곱번째 세트 END -->
      </div>
      <!-- 설문조사 취소하고 홈으로 돌아가는 버튼 START -->
      <div>
        <a href="home">
          <button class="btn btn-danger">메인으로 돌아가기</button>
        </a>
      </div>
      <!-- 설문조사 취소하고 홈으로 돌아가는 버튼 END -->
    </div>

    <!-- 설문조사 END -->

    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/pilling/lib/wow/wow.min.js"></script>
    <script src="resources/pilling/lib/easing/easing.min.js"></script>
    <script src="resources/pilling/lib/waypoints/waypoints.min.js"></script>
    <script src="resources/pilling/lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="https://kit.fontawesome.com/14e995bc13.js" crossorigin="anonymous"></script>

    <!-- Template Javascript -->
    <script src="resources/pilling/js/main.js"></script>
    <script src="resources/pilling/js/hyunwoojavascript.js"></script>

    <!-- JavaScript START -->
    <script type="text/javascript">
      // 다음 버튼 누르면 다음 질문지 보여주는 함수
      function showNextSet(currentSetId) {
        var currentSet = document.getElementById(currentSetId);
        var nextSet = currentSet.nextElementSibling;
        if (nextSet && nextSet.classList.contains('question-set')) {
          // 현재 세트 숨기기
          currentSet.style.display = 'none';
          // 다음 세트 보이기
          nextSet.style.display = 'block';
        }
      }

      // 이전 버튼 누르면 이전 질문지 보여주는 함수
      function showPrevSet(currentSetId) {
        var currentSet = document.getElementById(currentSetId);
        var prevSet = currentSet.previousElementSibling;
        if (prevSet && prevSet.classList.contains('question-set')) {
          // 현재 세트 숨기기
          currentSet.style.display = 'none';
          // 이전 세트 보이기
          prevSet.style.display = 'block';
        }
      }

      // 설문지에 답을 했는지 체크하는 함수
      function checkAnswersAndUpdateButton(setId) {
        const set = document.getElementById(setId);
        const questions = set.querySelectorAll('.survey-question-card');
        let allAnswered = true;

        questions.forEach((question) => {
          const inputs = question.querySelectorAll('input[type="radio"]');
          const answered = Array.from(inputs).some((input) => input.checked);
          if (!answered) {
            allAnswered = false;
          }
        });

        const nextButton = set.querySelector('.next-btn');
        if (allAnswered) {
          nextButton.removeAttribute('disabled');
        } else {
          nextButton.setAttribute('disabled', 'true');
        }
      }

      // submit이 잘 되었는지 일단 alert 확인 + 로직 짜야함
      function submitSurvey() {
        alert('설문이 제출되었습니다!');
      }

      // survey 페이지 자체에 event 추가하는 함수
      document.addEventListener('DOMContentLoaded', function () {
        const radioButtons = document.querySelectorAll('input[type="radio"]');
        radioButtons.forEach((button) => {
          button.addEventListener('change', function () {
            const setId = this.closest('.question-set').id;
            checkAnswersAndUpdateButton(setId);
          });
        });
      });
    </script>
    <!-- JavaScript END -->
  </body>
</html>
