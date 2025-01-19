<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pilling</title>
    <script type="text/javascript">
      // contextPath 변수 초기화
      var contextPath = '${pageContext.request.contextPath}';
    </script>

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
        background-color: #f8f9fa;
        margin-bottom: 5rem !important;
      }

      h3 {
        line-height: 1.3 !important;
      }
      .btn-check {
        display: none; /* Hide the default radio button */
      }

      .btn-outline-success,
      .btn-outline-danger,
      .btn-outline-secondary {
        padding: 10px 20px; /* Increase padding to make buttons larger */
        width: 300px; /* Set a specific width for the buttons */
        text-align: center; /* Ensure the text is centered */
        font-size: 1.4rem !important;
        font-weight: 700;
      }
      .left-align {
        text-align: left;
        align-items: baseline;
      }

      .btn-outline-success {
        color: #0ae4b0;
        border-color: #0ae4b0;
      }
      .btn-outline-success:hover {
        color: #fff;
        background-color: #0ae4b0;
        border-color: #0ae4b0;
      }
      .btn-check:focus + .btn-outline-success,
      .btn-outline-success:focus {
        box-shadow: 0 0 0 0.25rem #0ae4b0;
      }
      .btn-check:checked + .btn-outline-success,
      .btn-check:active + .btn-outline-success,
      .btn-outline-success:active,
      .btn-outline-success.active,
      .btn-outline-success.dropdown-toggle.show {
        color: #fff;
        background-color: #0ae4b0;
        border-color: #0ae4b0;
      }
      .btn-check:checked + .btn-outline-success:focus,
      .btn-check:active + .btn-outline-success:focus,
      .btn-outline-success:active:focus,
      .btn-outline-success.active:focus,
      .btn-outline-success.dropdown-toggle.show:focus {
        box-shadow: 0 0 0 0.25rem #0ae4b0;
      }
      .btn-outline-success:disabled,
      .btn-outline-success.disabled {
        color: #0ae4b0;
        background-color: rgba(0, 0, 0, 0);
      }
    </style>
  </head>
  <body>
    <!-- 설문조사 START -->
    <div class="d-flex container carousel-content survey-container">
      <!-- 설문조사 취소하고 홈으로 돌아가는 버튼 START -->
      <a href="home" style="margin-bottom: 2rem">
        <h1 class="text-mintcolor display-5">Pilling<i class="fa-solid fa-pills text-mintcolor ms-2"></i></h1>
      </a>
      <!-- 설문조사 취소하고 홈으로 돌아가는 버튼 END -->
      <h2 class="text-dark display-6" style="margin-bottom: 2rem">${userLastname }${userFirstname }님에게 맞는 영양제를 추천드리겠습니다.</h2>
      <div class="d-flex survey-question-container">
        <!-- 설문조사 3개씩 보여주기 첫번째 세트 START -->
        <div class="question-set" id="set1">
          <div class="survey-question-card">
            <h3 class="survey-question-text">1. 최근(4주 이내) 피곤함을 느끼거나, 현기증을 느끼신적이 있으십니까?</h3>
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question1" value="1" id="success-outlined1" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined1">예</label>
              <input type="radio" class="btn-check" name="question1" id="danger-outlined1" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined1">아니오</label>
            </div>
          </div>
          <div class="survey-question-card">
            <h3 class="survey-question-text">2. 최근(4주 이내) 피부가 까칠한 느낌이나, 푸석한 느낌을 받으셨습니까?</h3>
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question2" value="2" id="success-outlined2" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined2">예</label>
              <input type="radio" class="btn-check" name="question2" id="danger-outlined2" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined2">아니오</label>
            </div>
          </div>
          <div class="survey-question-card">
            <h3 class="survey-question-text">3. 최근(4주 이내) 팔과 다리가 저릿하거나, 뒷목이 당기는 느낌을 받으셨습니까?</h3>
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question3" value="3" id="success-outlined3" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined3">예</label>
              <input type="radio" class="btn-check" name="question3" id="danger-outlined3" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined3">아니오</label>
            </div>
          </div>

          <!-- 다음버튼 -->
          <div class="d-flex nextprve-btn-container">
            <button class="btn btn-outline-success next-btn" onclick="showNextSet('set1')" disabled>다음</button>
          </div>
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
          <div class="d-flex nextprve-btn-container">
            <button class="btn btn-outline-secondary prev-btn" onclick="showPrevSet('set2')">이전</button>
            <button class="btn btn-outline-success next-btn" onclick="showNextSet('set2')" disabled>다음</button>
          </div>
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
          <div class="d-flex nextprve-btn-container">
            <button class="btn btn-outline-secondary prev-btn" onclick="showPrevSet('set3')">이전</button>
            <button class="btn btn-outline-success next-btn" onclick="showNextSet('set3')" disabled>다음</button>
          </div>
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
          <div class="d-flex nextprve-btn-container">
            <button class="btn btn-outline-secondary prev-btn" onclick="showPrevSet('set4')">이전</button>
            <button class="btn btn-outline-success next-btn" onclick="showNextSet('set4')" disabled>다음</button>
          </div>
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
            <h3 class="survey-text-red">*설문답변자가 남성일시 답변*</h3>
            <h3>15. 최근들어, 성기능이 떨어진다거나, 근력 및 지구력이 감소했다고 느낀적이 있으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question15" value="15" id="success-outlined15" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined15">예</label>
              <input type="radio" class="btn-check" name="question15" id="danger-outlined15" value="0" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined15">아니오</label>
            </div>
          </div>
          <div class="d-flex nextprve-btn-container">
            <button class="btn btn-outline-secondary prev-btn" onclick="showPrevSet('set5')">이전</button>
            <button class="btn btn-outline-success next-btn" onclick="showNextSet('set5')" disabled>다음</button>
          </div>
        </div>
        <!-- 다섯번째 세트 END -->
        <!-- 설문조사 3개씩 보여주기 여섯번째 세트 START -->
        <div class="question-set" id="set6">
          <div class="survey-question-card">
            <h3 class="survey-text-red">*설문답변자가 여성일시 답변*</h3>
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
          <div class="d-flex nextprve-btn-container">
            <button class="btn btn-outline-secondary prev-btn" onclick="showPrevSet('set6')">이전</button>
            <button class="btn btn-outline-success next-btn" onclick="showNextSet('set6')" disabled>다음</button>
          </div>
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
              <input type="radio" class="btn-check" name="question20" value="21" id="success-outlined20" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined20">남자</label>
              <input type="radio" class="btn-check" name="question20" id="danger-outlined20" value="20" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined20">여자</label>
            </div>
          </div>
          <div class="d-flex nextprve-btn-container">
            <button class="btn btn-outline-secondary prev-btn" onclick="showPrevSet('set7')">이전</button>
            <button class="btn btn-outline-success submit-btn" onclick="submitSurvey()" disabled>제출</button>
          </div>
        </div>
        <!-- 일곱번째 세트 END -->
        <!-- 제품 추천 START -->
        <div id="productsContainer" class="row g-4 justify-content-center"></div>
        <!-- 제품 추천 END -->
      </div>
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

        //아래는 마지막 세트의 질문이 체크가 되었으면 서브밋버튼 활성화를 시켜주는 로직과 다른 세트에서 다 체크되면 다음버튼 활성화를 시켜주는 로직
        if (setId === 'set7') {
          const submitButton = document.querySelector('.submit-btn');
          if (allAnswered) {
            submitButton.removeAttribute('disabled');
          } else {
            submitButton.setAttribute('disabled', 'true');
          }
        } else {
          const nextButton = set.querySelector('.next-btn');
          if (allAnswered) {
            nextButton.removeAttribute('disabled');
          } else {
            nextButton.setAttribute('disabled', 'true');
          }
        }
      }

      // 설문조사 제출 (Ajax 활용)
      function submitSurvey() {
        // 아래는 submit된 radio type의 value들을 담을 배열 타입 생성
        const surveyResponses = [];

        // 위의 배열 변수에 값을 담기위한 로직
        document.querySelectorAll('input[type="radio"]:checked').forEach((input) => {
          if (input.value !== '0') {
            surveyResponses.push({ keywordId: parseInt(input.value) });
          }
        });

        //fetch API를 이용해서 Ajax 사용 (서버에 설문 응답 데이터 제출)
        fetch('survey/submit', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify(surveyResponses),
        })
          // response받은 정보를 JSON형태로 받는것
          .then((response) => response.json())
          // data는 추천제품 리스트의 값을 받아온것
          .then((data) => {
            // 설문조사 섹션 숨기기
            const lastSet = document.getElementById('set7');
            lastSet.style.display = 'none';
            // 추천제품을 화면에 표시하는 함수
            viewResponseProductList(data);
          })
          .catch((error) => {
            console.error('Error:', error);
          });
      }

      // 추천제품을 화면에 표시하는 함수
      function viewResponseProductList(products) {
        var productListHtml = '';
        products.forEach(function (product) {
          var keywordsHtml = product.keywordName
            ? product.keywordName
                .map(function (keyword) {
                  return '<a class="keywordName">' + keyword + '</a>';
                })
                .join(', ')
            : '';

          console.log(product);

          productListHtml +=
            '<br>' +
            '<br>' +
            '<div class="col-md-6 col-lg-6 col-xl-4">' +
            '<a href="' +
            contextPath +
            '/productdetailpage?productId=' +
            product.productId +
            '" style="text-decoration: none; color: inherit;">' +
            '<div class="rounded position-relative" style="cursor: pointer">' +
            '<div>' +
            '<img src="' +
            product.filepath1 +
            '" class="img-fluid w-100 rounded-top" alt="' +
            product.productName +
            '" />' +
            '</div>' +
            '<div class="p-4 border border-secondary border-top-0 rounded-bottom">' +
            '<h4>' +
            product.productName +
            '</h4>' +
            '<p>' +
            product.productDescription1 +
            '</p>' +
            '<div>' +
            keywordsHtml +
            '</div>' +
            '<div class="d-flex justify-content-between flex-lg-wrap">' +
            '<p class="text-dark fs-5 fw-bold mb-0">' +
            product.productPrice.toLocaleString() +
            '원' +
            '</p>' +
            '</div>' +
            '</div>' +
            '</div>' +
            '</a>' +
            '</div>';
        });
        document.getElementById('productsContainer').innerHTML = productListHtml;
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
