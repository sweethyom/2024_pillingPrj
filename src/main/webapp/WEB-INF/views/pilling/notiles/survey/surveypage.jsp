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
        padding: 0px;
        margin: 0px;
      }
      .survey-background-video {
        position: absolute;
        width: 100%;
        height: 100vh;
        object-fit: cover;
        opacity: 0.15;
        z-index: -1;
      }
    </style>
  </head>
  <body>
    <!-- 배경화면을 동영상화 START -->
    <section class="carousel-item active">
      <div>
        <video class="survey-background-video" src="resources/pilling/movie/surveybackground.mp4" muted autoplay></video>
      </div>
    </section>
    <!-- 배경화면을 동영상화 END -->
    <div class="d-flex container carousel-content survey-container animated slideInDown">
      <h1 class="text-dark display-6">당신의 첫번째 영양제,</h1>
      <h1 class="text-primary mb-0 display-3">Pi1l<span style="color: #3faf08">ing</span><i class="fa-solid fa-pills text-primary ms-2"></i></h1>
      <div class="d-flex survey-question-container">
        <div class="survey-question-card">
          <div><h3>1. 최근(4주 이내) 피곤함을 느끼거나, 현기증을 느끼신적이 있으십니까?</h3></div>
          <div class="container d-flex" style="justify-content: space-between">
            <div class="col-5">
              <button class="form-control btn py-3" type="button">예</button>
            </div>
            <div class="col-5">
              <button class="form-control btn py-3" type="button">아니오</button>
            </div>
          </div>
        </div>
        <div class="survey-question-card">
          <div><h3>2. 최근(4주 이내) 피부가 푸석하거나, 까칠하신가요?</h3></div>
          <div class="container d-flex" style="justify-content: space-between">
            <div class="col-5">
              <button class="form-control btn py-3" type="button">예</button>
            </div>
            <div class="col-5">
              <button class="form-control btn py-3" type="button">아니오</button>
            </div>
          </div>
        </div>
        <div class="survey-question-card">
          <div><h3>3. 최근(4주 이내) 손,발이 저리신 느낌이나, 뒷목이 당기는 증상을 겪은적이 있으신가요?</h3></div>
          <div class="container d-flex" style="justify-content: space-between">
            <div class="col-5">
              <button class="form-control btn py-3" type="button">예</button>
            </div>
            <div class="col-5">
              <button class="form-control btn py-3" type="button">아니오</button>
            </div>
          </div>
        </div>
      </div>
    </div>

    <!-- 실제 설문조사 작성 START -->

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
  </body>
</html>
