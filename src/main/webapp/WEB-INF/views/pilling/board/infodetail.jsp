<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지 조회</title>
</head>
<style>
td {
	vertical-align: middle;
}
.div-center {
	margin: auto;
}
.btn-center {
	margin: auto;
	text-align: center;
}
.font-s {
	font-size: 1;
}
</style>
<body>
	<div class="container-xxl py-5">
		<!-- 공지사항 조회 START -->
		<div class="card-body col-12 div-center pl-5 pr-5">
			<div class="row g-5">
				<table class="table mb-0">
					<tbody>
						<tr>
							<td colspan="3"><h3>첫번째 공지사항입니다.</h3></td>
						</tr>
						<tr>
							<td><small>작성자 Pi1ling</small></td>
							
							<td><small>조회수 11</small></td>
						</tr>
						<tr>
							<td><small>작성일 22/11/11</small></td>
						</tr>
						<tr>
							<td colspan="3"><div class="mt-3 mb-3">약 복용법을 잘 지키세요.</div></td>
						</tr>
					</tbody>
				</table>
				<div class="col-1 rounded-pill bg-primary px-1 py-1"><a>첨부파일</a></div></td>
			</div>
		</div>
		<!-- 공지사항 조회 END -->
		
		<!-- 공지사항 작성 버튼 -->
		<div class="btn-center">
			<button type="button" class="btn btn-primary border-0 rounded-pill px-4 py-3">작성하기</button>
		</div>
	</div>
</body>
</html>