<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<h1 class="display-6 text-dark mb-4">단 하나의 영양제, Pilling</h1>
		</div>
	</div>
	<!-- specific category -->
	<div align="center">
		<button type="button"
			class="btn btn-primary border-0 rounded-pill px-4 py-3">공지사항</button>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button type="button"
			class="btn btn-primary border-0 rounded-pill px-4 py-3">문의사항</button>
	</div>
	<br />
	<!--  board start -->
	<div class="customerservice-button">
		<c:if test="${author eq 'ADMIN'}">
			<button type="button"
				class="btn btn-primary border-0 rounded-pill px-4 py-3"
				onclick="location.href='noticeform'">공지작성</button>
		</c:if>
	</div>
	<div class="container-xxl py-5">
		<div class="container text-center">
			<h4 class="display-6 text-dark mb-4">공 지 사 항</h4>
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
								<tr onclick="noticeDetail(${n.noticeId})">
									<td>${n.noticeId}</td>
									<td>${n.noticeTitle}</td>
									<td>pilling</td>
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
		<div class="container mt-3">
			<ul class="pagination justify-content-center">
				<!-- c:if 로 이전 페이지가 없으면 이전 버튼이 비활성화되게 한다. -->
				<c:if test="${p.firstPageNoOnPageList <= 1}">
					<li class="page-item"><a class="page-link"
						style="color: black">이전</a></li>
				</c:if>
				<c:if test="${p.firstPageNoOnPageList > 1}">
					<li class="page-item"><a class="page-link"
						style="color: black" href="javascript:void(0);"
						onclick="noticeCallPage(${p.firstPageNoOnPageList}-1)">이전</a></li>
				</c:if>

				<!-- 페이지네이션 -->
				<c:forEach var="index" begin="${p.firstPageNoOnPageList }"
					end="${p.lastPageNoOnPageList }" step="1">
					<li class="page-item"><a class="page-link"
						style="color: black" href="javascript:void(0);"
						onclick="noticeCallPage(${index});">${index }</a></li>
				</c:forEach>

				<!-- c:if 로 다음 페이지가 없으면 다음 버튼이 비활성화되게 한다. -->
				<c:if test="${p.firstPageNoOnPageList + 5 > p.totalPageCount}">
					<li class="page-item"><a class="page-link"
						style="color: black">다음</a></li>
				</c:if>
				<c:if test="${p.firstPageNoOnPageList + 5 <= p.totalPageCount}">
					<li class="page-item"><a class="page-link"
						style="color: black" href="javascript:void(0);"
						onclick="noticeCallPage(${p.lastPageNoOnPageList}+1);">다음</a></li>
				</c:if>
			</ul>
		</div>
		<!-- 페이지네이션 END -->
	</div>
	<!--  board start -->
	<div class="customerservice-button">
		<button type="button"
			class="btn btn-primary border-0 rounded-pill px-4 py-3"
			onclick="location.href='questionform'">문의하기</button>
	</div>
	<div class="container-xxl py-5">
		<div class="container text-center">
			<h4 class="display-6 text-dark mb-4">문 의 사 항</h4>
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
					<li class="page-item"><a class="page-link"
						style="color: black">Previous</a></li>
				</c:if>
				<c:if test="${qp.firstPageNoOnPageList > 1}">
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" style="color: black"
						onclick="questionCallPage(${qp.firstPageNoOnPageList}-1)">Previous</a>
					</li>
				</c:if>
				<!-- 페이지네이션 -->
				<c:forEach var="index" begin="${qp.firstPageNoOnPageList }"
					end="${qp.lastPageNoOnPageList }" step="1">
					<li class="page-item"><a class="page-link"
						style="color: black" href="javascript:void(0);"
						onclick="questionCallPage(${index});">${index }</a></li>
				</c:forEach>

				<!-- c:if 로 다음 페이지가 없으면 다음 버튼이 비활성화되게 한다. -->
				<c:if test="${qp.firstPageNoOnPageList + 5 > qp.totalPageCount}">
					<li class="page-item"><a class="page-link"
						style="color: black">Next</a></li>
				</c:if>
				<c:if test="${qp.firstPageNoOnPageList + 5 <= qp.totalPageCount}">
					<li class="page-item"><a class="page-link"
						href="javascript:void(0);" style="color: black"
						onclick="questionCallPage(${qp.lastPageNoOnPageList}+1);">Next</a>
					</li>
				</c:if>
			</ul>
		</div>
		<!-- 페이지네이션 END -->
	</div>
	<div>
		<form id="noticefrm" action="noticedetail" method="post">
			<input type="hidden" id="noticeId" name="noticeId" />
		</form>
		<form id="questionfrm" action="questiondetail" method="post">
			<input type="hidden" id="questionId" name="questionId" />
		</form>
		<form id="pageFrm" action="customerservice" method="post">
			<input type="hidden" id="currentPageNo" name="currentPageNo" value="1" /> <input
				type="hidden" id="currentPageNoQuestion"
				name="currentPageNoQuestion" value="1" />
		</form>
	</div>
	<script type="text/javascript">
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
    </script>
</body>
</html>
