<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
  </head>
  <body>
    <div class="container-xxl py-5">
      <div class="container text-center">
        <h4 class="fw-bold py-3 mb-4 text-start"><span class="text-muted fw-light">고객 관리 /</span> 문의 사항</h4>
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
                  <tr onclick="questionDetail(${q.questionId})">
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
      <div class="container mt-3">
        <ul class="pagination justify-content-center">
          <!-- c:if 로 이전 페이지가 없으면 이전 버튼이 비활성화되게 한다. -->
          <c:if test="${qp.firstPageNoOnPageList <= 1}">
            <li class="page-item"><a class="page-link" style="color: black">이전</a></li>
          </c:if>
          <c:if test="${qp.firstPageNoOnPageList > 1}">
            <li class="page-item">
              <a class="page-link" href="javascript:void(0);" style="color: black" onclick="callPageQuestion(${qp.firstPageNoOnPageList}-1);">이전</a>
            </li>
          </c:if>

          <!-- 페이지네이션 -->
          <c:forEach var="index" begin="${qp.firstPageNoOnPageList }" end="${qp.lastPageNoOnPageList }" step="1">
            <li class="page-item">
              <a class="page-link" href="javascript:void(0);" style="color: black" onclick="callPageQuestion(${index});">${index }</a>
            </li>
          </c:forEach>

          <!-- c:if 로 다음 페이지가 없으면 다음 버튼이 비활성화되게 한다. -->
          <c:if test="${qp.firstPageNoOnPageList eq qp.totalPageCount}">
            <li class="page-item"><a class="page-link" style="color: black">다음</a></li>
          </c:if>
          <c:if test="${qp.firstPageNoOnPageList ne qp.totalPageCount}">
            <li class="page-item">
              <a class="page-link" href="javascript:void(0);" style="color: black" onclick="callPageQuestion(${qp.lastPageNoOnPageList}+1);">다음</a>
            </li>
          </c:if>
        </ul>
      </div>
      <!-- 페이지네이션 END -->
    </div>
  </body>
</html>
