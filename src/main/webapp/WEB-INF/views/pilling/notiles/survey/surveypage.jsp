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
        <div class="question-set" id="set1">
          <div class="survey-question-card">
            <h3 style="text">1. 최근(4주 이내) 피곤함을 느끼거나, 현기증을 느끼신적이 있으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question1" value="yes" id="success-outlined1" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined1">예</label>
              <input type="radio" class="btn-check" name="question1" id="danger-outlined1" value="no" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined1">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>2. 최근(4주 이내) 피부가 까칠한 느낌이나, 어두운 느낌을 받으셨습니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question2" value="yes" id="success-outlined2" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined2">예</label>
              <input type="radio" class="btn-check" name="question2" id="danger-outlined2" value="no" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined2">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>3. 최근(4주 이내) 팔과 다리가 저릿하거나, 뒷목이 당기는 느낌을 받으셨습니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question3" value="yes" id="success-outlined3" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined3">예</label>
              <input type="radio" class="btn-check" name="question3" id="danger-outlined3" value="no" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined3">아니오</label>
            </div>
          </div>
        </div>

        <div class="question-set" id="set2" style="display: none">
          <div class="survey-question-card">
            <h3>4. 최근(4주 이내) 감기에 걸렸거나, 기타 감염 질환에 걸린적이 있으십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question4" value="yes" id="success-outlined4" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined4">예</label>
              <input type="radio" class="btn-check" name="question4" id="danger-outlined4" value="no" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined4">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>5. 최근(4주 이내) 쉽게 잠에 들지 못하거나, 자주 잠에서 깨십니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question5" value="yes" id="success-outlined5" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined5">예</label>
              <input type="radio" class="btn-check" name="question5" id="danger-outlined5" value="no" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined5">아니오</label>
            </div>
          </div>

          <div class="survey-question-card">
            <h3>6. 최근(4주 이내) 스트레스를 받는 일이나, 긴장감이 극도에 달한 적이 있습니까?</h3>
            <br />
            <div data-toggle="buttons" style="gap: 80px; display: flex; justify-content: center">
              <input type="radio" class="btn-check" name="question6" value="yes" id="success-outlined6" autocomplete="off" />
              <label class="btn btn-outline-success" for="success-outlined6">예</label>
              <input type="radio" class="btn-check" name="question6" id="danger-outlined6" value="no" autocomplete="off" />
              <label class="btn btn-outline-danger" for="danger-outlined6">아니오</label>
            </div>
          </div>
        </div>

        <button id="nextBtn" onclick="goToNextSet()" class="px-5 py-3 border-2 rounded-pill">다음</button>
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
      let currentSet = 1;
      let totalSets = 2;

      function goToNextSet() {
        // 현재 질문 세트를 비활성화하고 다음 세트로 이동
        let currentSetElement = document.getElementById(`set${currentSet}`);
        currentSetElement.classList.remove('active'); // 현재 세트 비활성화
        currentSetElement.style.display = 'none'; // 현재 세트 숨기기

        currentSet += 1; // 다음 세트로 넘어가기

        let nextSetElement = document.getElementById(`set${currentSet}`);
        if (nextSetElement) {
          nextSetElement.classList.add('active'); // 다음 세트 활성화
          nextSetElement.style.display = 'block'; // 다음 세트 표시
          checkAnswers(currentSet); // 다음 세트에 대한 검사 수행
        }

        // 모든 세트가 완료되었는지 확인하여 '다음' 버튼의 상태 업데이트
        if (currentSet >= totalSets) {
          document.getElementById('nextBtn').style.display = 'none'; // 마지막 세트인 경우 '다음' 버튼 숨기기
        } else {
          document.getElementById('nextBtn').disabled = true; // 아직 답변하지 않은 질문이 있다면 버튼 비활성화
        }
      }

      function enableNextButtonOnComplete() {
        document.querySelectorAll('.btn-check').forEach(function (button) {
          button.addEventListener('change', function () {
            checkAnswers(currentSet);
          });
        });
      }

      function checkAnswers(setNumber) {
        let questions = document.querySelectorAll(`#set${setNumber} .survey-question-card`);
        let allAnswered = true;

        questions.forEach(function (question) {
          let radios = question.querySelectorAll('input[type="radio"]');
          let answered = Array.from(radios).some((radio) => radio.checked);
          if (!answered) {
            allAnswered = false;
          }
        });

        document.getElementById(`set${currentSet}`).classList.add('active');
        enableNextButtonOnComplete();
        document.getElementById('nextBtn').disabled = !allAnswered;
      }
      console.log(document.getElementById(`set${currentSet}`));
    </script>
    <!-- JavaScript END -->
  </body>
</html>
