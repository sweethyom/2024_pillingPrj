<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 조회</title>
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
</style>
<body>
	<div class="container-xxl py-5">
		<!-- 문의사항 조회 START -->
		<div class="card-body col-12 div-center pl-5 pr-5">
			<div class="row g-5">
				<h3 style="vertical-align: bottom;" class="px-2">${questionTitle }</h3>
				<div style="height: 0.3rem; background-color: #fdf001;"
					class="mb-0 mt-0"></div>
				<table class="table mb-0 mt-0">
					<tbody>
						<tr>
							<td colspan="2" width="500"><small>작성자 <a>${userId }</a></small></td>
							<td style="text-align: right;"><small>조회수 <a>212</a></small></td>
						</tr>
						<tr>
							<td colspan="3"><small>작성일 22/11/11</small></td>
						</tr>
						<tr>
							<td colspan="3"><div class="mt-3 mb-5">${questionContent }</div></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 문의사항 조회 END -->

		<!-- 버튼 START -->
		<!-- 목록: 모든 사용자에게 보인다. -->
		<!-- 수정: 글 작성자에게만 보인다. -->
		<!-- 삭제: 글 작성자, ADMIN에게만 보인다. -->
		<div class="btn-center mt-2 mb-4">
			<button type="button"
				class="btn btn-primary border-0 rounded-pill px-4 py-3"
				onclick="location.href='customerservice'">목록</button>
			<!-- 글 작성자와 로그인한 작성자가 일치할 경우 -->
			<c:if test="${userNo eq userNo}"> 
	            	&nbsp;&nbsp;
			<button type="button"
					class="btn btn-primary border-0 rounded-pill px-4 py-3">수정</button>
			</c:if>
			<!-- 글 작성자와 로그인한 작성자가 일치할 경우 or ADMIN 권한을 가질 경우 -->
			<c:if test="${author eq 'ADMIN'}"> 
	            	&nbsp;&nbsp;
			<button type="button"
					class="btn btn-primary border-0 rounded-pill px-4 py-3">삭제</button>
			</c:if>
		</div>
		<!-- 버튼 END -->
		<!-- 문의사항 댓글 START -->
		<div>
			<table style="border-collapse: separate; border-spacing: 10px 10px;">
				<tr>
					<td style="vertical-align: top;" class="pt-1">
						<div class="rounded py-2 px-3" style="background-color:#3faf08; color:white;">Pi1ling</div>
					</td>
					<td class="px-2">${questionreplyContent }</td>
				</tr>
			</table>
		</div>
		<!-- 문의사항 댓글 END -->

		<!-- 문의사항 댓글 작성 STRAT -->
		<!-- AMDIN 권한을 가진 사람에게만 보인다. -->
		<div class="bg-light rounded p-4 my-4">
			<h4 class="mb-4">Leave A Reply</h4>
			<form action="#">
				<div class="row g-4">
					<div class="col-12">
						<textarea class="form-control" name="textarea" id="" cols="30"
							rows="4" placeholder="답변 내용을 입력해주세요." required="required"></textarea>
					</div>
					<div class="col-12">
						<button class="form-control btn-primary border-0 py-3"
							type="submit">작성완료</button>
					</div>
				</div>
			</form>
		</div>
		<!-- 댓글 작성 END -->
	</div>
</body>
</html>