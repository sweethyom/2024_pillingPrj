<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.width-myreview {
	width: 60%;
}

.div-center {
	margin: auto;
}

.border-none {
	border: hidden;
}

.bg-myinquiry {
	background-color: rgba(0, 0, 0, 0.03);
}

.bg-yellow {
	background-color: #fdf227;
}

.p-card {
	padding-top: 0px;
	padding-left: 4px;
	padding-right: 0px;
	padiing-bottom: 0px;
}

.pl-5 {
	padding-left: 2.5rem;
}

.pr-5 {
	padding-right: 2.5rem;
}

.right {
	align: right;
}
</style>

<body>
	<div class="width-myreview py-5 div-center">
		<!-- 카드 START -->
		<div class="card mb-5">
			<div class="card-header py-3">
				<div class="div-left">
					<h6 class="m-0 font-weight-bold">게시판 문의내역</h6>
				</div>
			</div>
			<div class="card-body">
				<!-- 제품 문의 START -->
				<div class="p-4 bg-myinquiry rounded mb-3">
					<div class="row g-4">
						<div class="col-3">
							<H4>제품 사진</H4>
						</div>
						<div class="col-9">
							<div class="mb-2">
								<div class="d-flex justify-content-between">
									<h5>
										Q.&nbsp;<a>질문제목</a>
									</h5>
								</div>
								<div class="mb-2">
									제품 : <a>Nature's Way, Alive! 성인용 최고 효능 컴플리트 종합비타민, 60정</a>
								</div>
								<div class="col-8 bg-myinquiry rounded p-2">
									<p class="mb-0">얼마나 좋은가요? 효과가 있나요?</p>
								</div>
								<small class="text-body d-block mb-3">Dec 9, 2024</small>
							</div>
							<div align="right">
								<div class="col-8 bg-myinquiry rounded p-2" align="left">
									<label>무지막지 좋습니다.</label>
								</div>
								<small class="text-body d-block mb-3">Dec 9, 2024</small>
							</div>

						</div>
					</div>
				</div>
				<!-- 제품 문의 END -->

				<!-- 반복 -->
				<div class="p-4 bg-myinquiry rounded mb-0">
					<div class="row g-4">
						<div class="col-3">
							<H4>제품 사진</H4>
						</div>
						<div class="col-9">
							<div class="mb-2">
								<div class="d-flex justify-content-between">
									<h5>
										Q.&nbsp;<a>질문제목</a>
									</h5>
								</div>
								<div class="mb-2">
									제품 : <a>Nature's Way, Alive! 성인용 최고 효능 컴플리트 종합비타민, 60정</a>
								</div>
								<div class="col-8 bg-myinquiry rounded p-2">
									<p class="mb-0">얼마나 좋은가요? 효과가 있나요?</p>
								</div>
								<small class="text-body d-block mb-3">Dec 9, 2024</small>
							</div>
							<div align="right">
								<div class="col-8 bg-myinquiry rounded p-2" align="left">
									<label>무지막지 좋습니다.</label>
								</div>
								<small class="text-body d-block mb-3">Dec 9, 2024</small>
							</div>

						</div>
					</div>
				</div>
			</div>
			<!-- 페이징 레이아웃 START -->
			<div class="container mt-0">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<!-- 첫페이지에선 없음/시작인덱스 -10 -->
					<li class="page-item"><a class="page-link" href="#"> 1</a>
					<li class="page-item"><a class="page-link" href="#"> 2</a>
					<li class="page-item"><a class="page-link" href="#"> 3</a>
					<li class="page-item"><a class="page-link" href="#"> 4</a>
					<li class="page-item"><a class="page-link" href="#"> 5</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
					<!-- 마지막인덱스 +10 /마지막 인덱스에서는 없음 -->
				</ul>
			</div>
			<!-- 페이징 레이아웃 END -->
		</div>
		<!-- 카드 END -->

		<div class="card mb-6">
			<div class="card-header py-3">
				<div class="div-left">
					<h6 class="m-0 font-weight-bold">문의내역</h6>
				</div>
			</div>
			<!-- 게시판 문의 START -->
			<div class="card-body col-12 div-center pl-5 pr-5">
				<div class="row g-5">
					<table class="table table-bordered table-hover mb-0">
						<thead>
							<tr>
								<td width="100">순 번</td>
								<td width="800">제 목</td>
								<td width="300">작성자</td>
								<td width="300">작성일</td>
							</tr>
						</thead>
						<tbody id="boardContent">
							<tr onclick="boardSelect(${b.boardId})">
								<td>${n.noticeId}</td>
								<td>${n.noticeTitle}</td>
								<td>${n.userName}</td>
								<td>${n.noticeDate}</td>
							</tr>
							<tr>
								<td colspan="4">등록된 글이 없습니다.</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<!-- 게시판 문의 END -->

			<!-- 페이징 레이아웃 START -->
			<div class="container mt-0">
				<ul class="pagination justify-content-center">
					<li class="page-item"><a class="page-link" href="#">Previous</a></li>
					<!-- 첫페이지에선 없음/시작인덱스 -10 -->
					<li class="page-item"><a class="page-link" href="#"> 1</a>
					<li class="page-item"><a class="page-link" href="#"> 2</a>
					<li class="page-item"><a class="page-link" href="#"> 3</a>
					<li class="page-item"><a class="page-link" href="#"> 4</a>
					<li class="page-item"><a class="page-link" href="#"> 5</a></li>
					<li class="page-item"><a class="page-link" href="#">Next</a></li>
					<!-- 마지막인덱스 +10 /마지막 인덱스에서는 없음 -->
				</ul>
			</div>
			<!-- 페이징 레이아웃 END -->
		</div>
	</div>
</body>
</html>