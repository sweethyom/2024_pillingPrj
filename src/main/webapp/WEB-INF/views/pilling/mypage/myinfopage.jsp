<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.width-myinfo {
	margin-left: auto;
	margin-right: auto;
	width: 60%;
}

.edit-btn {
	border-radius: 6px;
	border: 0px;
}

.btn-margin{
	}
	
</style>
<body>
	<!-- Page Header Start -->
	<div class="container-fluid myinfopage-header py-5">
		<div class="container py-5">
			<h1 class="display-2 text-dark mb-4 animated slideInDown">나의 정보</h1>
			<nav aria-label="breadcrumb"></nav>
		</div>
	</div>
	<!-- Page Header End -->
	<!-- 나의 정보 -->
	<div class="container-fluid">
		<!-- DataTales Example -->
		<div class="width-myinfo card mb-2">
			<div class="card-header py-3">
				<div class="div-left">
					<h6 class="m-0">나의 정보</h6>
				</div>
			</div>
			<div class="card-body">
				<div class=" table-responsive">
					<table class="table table-bordered" id="dataTable">
						<thead>
							<tr>
								<th width="200">아이디</th>
								<td width="500">${userId }<button style="float: right;"
										class="edit-btn" type="submit">아이디수정</button></td>
							<tr>
								<th>이 름</th>
								<td>${userLastname }${userFirstname }</td>
							<tr>
								<th>생년월일</th>
								<td>${userBirthdate }</td>
							<tr>
								<th>성 별</th>
								<td>${userGender }</td>
							<tr>
								<th>연락처</th>
								<th>${userTel }<button style="float: right;"
										class="edit-btn" type="submit">연락처수정</button></th>
							<tr>
								<th>이메일</th>
								<td>${userEmail}<button style="float: right;"
										class="edit-btn" type="submit">이메일수정</button></td>
							<tr>
								<th>주소</th>
								<td>${userAddr}<button style="float: right;"
										class="edit-btn" type="submit">주소수정</button></td>
							<tr>
								<th>상세주소</th>
								<td>${userAddrdetail }<button style="float: right;"
										class="edit-btn" type="submit">주소수정</button></td>
							<tr>
								<th>총 구매액</th>
								<td>${userTotalamount }원</td>
							<tr>
								<th>마케팅동의여부</th>
								<td>${userMarketingYn }<button style="float: right;"
										class="edit-btn" type="submit">마케팅동의수정</button></td>
							<tr>
								<th>탈퇴하시겠습니까?</th>
								<td><button class="edit-btn" type="submit">탈퇴하기</button>
						</thead>
					</table>
					<div align="center">
						<!-- Submit button -->
						<a href="mypage" class="btn-margin btn btn-primary btn-block">돌아가기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>