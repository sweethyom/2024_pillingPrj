<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body onload="restoreScrollPostion()">
    <div class="container-fluid py-3">
      <div class="container py-3">
        <h1 class="display-2 text-dark mb-4">고객센터</h1>
      </div>
    </div>
    <!-- specific category -->
    <div align="center">
      <button type="button" id="btnNotices" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size">공지사항</button>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <button type="button" id="btnQuestions" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size">문의사항</button>
    </div>
    <br />
    <!--  공지사항 START(2024년 3월 18일 오후 7시 48분 수정) -->
    <div id="noticesSection" class="container-xxl py-5">
      <div class="container text-center">
        <h4 class="display-6 text-dark mb-4">공 지 사 항</h4>
        <div style="text-align: end; margin-bottom: 2rem">
          <c:if test="${author eq 'ADMIN'}">
            <button type="button" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size" onclick="location.href='noticeform'">공지작성</button>
          </c:if>
        </div>
        <div class="row g-5">
          <table class="table table-bordered table-hover">
            <thead>
              <tr>
                <td width="100">순 번</td>
                <td width="800">제 목</td>
                <td width="300">작성자</td>
                <td width="300">작성일</td>
              </tr>
            </thead>
            <tbody id="boardContent">
              <c:if test="${not empty notices}">
                <c:forEach items="${notices}" var="n">
                  <tr onclick="noticeDetail(${n.noticeId})" style="cursor: pointer">
                    <td>${n.noticeId}</td>
                    <td>${n.noticeTitle}</td>
                    <td>Pilling</td>
                    <td>${n.noticeDate}</td>
                  </tr>
                </c:forEach>
              </c:if>
              <c:if test="${empty notices}">
                <tr>
                  <td colspan="4">등록된 글이 없습니다.</td>
                </tr>
              </c:if>
            </tbody>
          </table>
        </div>
      </div>
      <!-- 페이지네이션 START -->
      <div class="container productpurchase-pagination">
        <ul class="pagination justify-content-center">
          <!-- c:if 로 이전 페이지가 없으면 이전 버튼이 비활성화되게 한다. -->
          <c:if test="${p.firstPageNoOnPageList <= 1}">
            <li class="page-item disabled"><a class="page-link" style="color: black">이전</a></li>
          </c:if>
          <c:if test="${p.firstPageNoOnPageList > 1}">
            <li class="page-item">
              <a class="page-link" style="color: black" href="javascript:void(0);" onclick="noticeCallPage(${p.firstPageNoOnPageList}-1);">이전</a>
            </li>
          </c:if>

          <!-- 페이지네이션 -->
          <c:forEach var="index" begin="${p.firstPageNoOnPageList }" end="${p.lastPageNoOnPageList }" step="1">
            <li class="page-item">
              <a class="page-link" style="color: black" href="javascript:void(0);" onclick="noticeCallPage(${index});">${index }</a>
            </li>
          </c:forEach>

          <!-- c:if 로 다음 페이지가 없으면 다음 버튼이 비활성화되게 한다. -->
          <c:if test="${p.firstPageNoOnPageList + 5 > p.totalPageCount}">
            <li class="page-item disabled"><a class="page-link" style="color: black">다음</a></li>
          </c:if>
          <c:if test="${p.firstPageNoOnPageList + 5 <= p.totalPageCount}">
            <li class="page-item">
              <a class="page-link" style="color: black" href="javascript:void(0);" onclick="noticeCallPage(${p.lastPageNoOnPageList}+1);">다음</a>
            </li>
          </c:if>
        </ul>
      </div>
      <!-- 페이지네이션 END -->
    </div>
    <!--  공지사항 END(2024년 3월 18일 오후 7시 48분 수정) -->

    <!-- 문의사항 START (2024년 3월 18일 오후 7시 35분 수정) -->
    <div id="questionsSection" class="container-xxl py-5" style="display: none">
      <div class="container text-center">
        <h4 class="display-6 text-dark mb-4">문 의 사 항</h4>
        <div style="text-align: end; margin-bottom: 2rem">
          <c:if test="${author eq 'USER'}">
            <button type="button" class="btn btn-outline-dark-hyunwoo mt-3 login-btn-size" onclick="location.href='questionform'">문의하기</button>
          </c:if>
        </div>
        <div class="row g-5">
          <table class="table table-bordered table-hover">
            <thead>
              <tr>
                <td width="100">순 번</td>
                <td width="800">제 목</td>
                <td width="300">작성자</td>
                <td width="300">작성일</td>
              </tr>
            </thead>
            <tbody id="boardContent">
              <c:if test="${not empty questions}">
                <c:forEach items="${questions}" var="q">
                  <tr onclick="questionDetail(${q.questionId})" style="cursor: pointer">
                    <td>${q.questionId}</td>
                    <td>${q.questionTitle}</td>
                    <td>${q.userId}</td>
                    <td>${q.questionDate}</td>
                  </tr>
                </c:forEach>
              </c:if>
              <c:if test="${empty questions}">
                <tr>
                  <td colspan="4">등록된 글이 없습니다.</td>
                </tr>
              </c:if>
            </tbody>
          </table>
        </div>
      </div>
      <!-- 페이지네이션 START -->
      <div class="container productpurchase-pagination">
        <ul class="pagination justify-content-center">
          <!-- c:if 로 이전 페이지가 없으면 이전 버튼이 비활성화되게 한다. -->
          <c:if test="${qp.firstPageNoOnPageList <= 1}">
            <li class="page-item disabled"><a class="page-link" style="color: black">이전</a></li>
          </c:if>
          <c:if test="${qp.firstPageNoOnPageList > 1}">
            <li class="page-item">
              <a class="page-link" href="javascript:void(0);" style="color: black" onclick="questionCallPage(${qp.firstPageNoOnPageList}-1)"
                >이전</a
              >
            </li>
          </c:if>
          <!-- 페이지네이션 -->
          <c:forEach var="index" begin="${qp.firstPageNoOnPageList }" end="${qp.lastPageNoOnPageList }" step="1">
            <li class="page-item">
              <a class="page-link" style="color: black" href="javascript:void(0);" onclick="questionCallPage(${index});">${index }</a>
            </li>
          </c:forEach>
          <c:if test="${qp.firstPageNoOnPageList + 5 > qp.totalPageCount}">
            <li class="page-item disabled"><a class="page-link" style="color: black">다음</a></li>
          </c:if>
          <c:if test="${qp.firstPageNoOnPageList + 5 <= qp.totalPageCount}">
            <li class="page-item">
              <a class="page-link" style="color: black" href="javascript:void(0);" onclick="questionCallPage(${p.lastPageNoOnPageList}+1);">다음</a>
            </li>
          </c:if>
        </ul>
        <!-- 페이지네이션 END -->
      </div>
    </div>
    <!-- 문의사항 END (2024년 3월 18일 오후 7시 35분 수정) -->

    <div>
      <form id="noticefrm" action="noticedetail" method="post">
        <input type="hidden" id="noticeId" name="noticeId" />
      </form>
      <form id="questionfrm" action="questiondetail" method="post">
        <input type="hidden" id="questionId" name="questionId" />
      </form>
      <form id="pageFrm" action="customerservice" method="post">
        <input type="hidden" id="currentPageNo" name="currentPageNo" value="1" />
        <input type="hidden" id="currentPageNoQuestion" name="currentPageNoQuestion" value="1" />
      </form>
    </div>

    <script type="text/javascript">
      // AJAX를 사용하지 않고, 원래 있던 코드로 display + 세션스토리 사용해서 간단히 게시판 따로 보여주기 구현
      document.addEventListener('DOMContentLoaded', function () {
        var activeSection = sessionStorage.getItem('activeSection');

        // 기본값 설정
        if (!activeSection) {
          activeSection = 'notices';
          sessionStorage.setItem('activeSection', 'notices');
        }

        showSection(activeSection);

        document.getElementById('btnNotices').addEventListener('click', function () {
          showSection('notices');
        });

        document.getElementById('btnQuestions').addEventListener('click', function () {
          showSection('questions');
        });
      });

      function noticeDetail(id) {
        document.getElementById('noticeId').value = id;
        noticefrm.submit();
      }
      function questionDetail(id) {
        document.getElementById('questionId').value = id;
        questionfrm.submit();
      }
      function noticeCallPage(page) {
        saveScrollPosition();
        document.getElementById('currentPageNo').value = page;
        pageFrm.submit();
      }
      function questionCallPage(page) {
        saveScrollPosition();
        document.getElementById('currentPageNoQuestion').value = page;
        pageFrm.submit();
      }

      //페이지 이동 전 스크롤 위치를 저장하는 함수
      function saveScrollPosition() {
        var scrollPosition = window.scrollY || document.documentElement.scrollTop;
        sessionStorage.setItem('scrollPosition', scrollPosition);
      }

      //페이지 이동 후, 스크롤 위치를 저장된 위치로 이동시키는 함수
      function restoreScrollPostion() {
        var scrollPosition = sessionStorage.getItem('scrollPosition');
        if (scrollPosition !== null) {
          window.scrollTo({
            top: scrollPosition,
            behavior: 'auto',
          });
          sessionStorage.removeItem('scrollPosition');
        }
      }

      // display 보여주고 세션스토리지 사용해서 담아두기
      function showSection(section) {
        var noticesSection = document.getElementById('noticesSection');
        var questionsSection = document.getElementById('questionsSection');

        noticesSection.style.display = 'none';
        questionsSection.style.display = 'none';

        if (section === 'notices') {
          noticesSection.style.display = 'block';
          sessionStorage.setItem('activeSection', 'notices');
        } else if (section === 'questions') {
          questionsSection.style.display = 'block';
          sessionStorage.setItem('activeSection', 'questions');
        }
      }
    </script>
  </body>
</html>
