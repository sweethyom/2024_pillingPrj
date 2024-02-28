<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 회원정보확인 -->
	<div class="container-fluid">
		<!-- DataTales Example -->
		<div class="card mb-2">
			<div class="card-header py-3">
				<div align="center">
					<h6 class="m-0">회원정보확인</h6>
					<p>${userFirstname }님의정보를안전하게 보호하기 위해 비밀번호를 다시 한 번 확인합니다.
				</div>
			</div>
			<form action="myinfochk"  method="post">
				<div class="card-body">
					<div class="table-responsive">
						<div class="myinfocheck-table">
								<table class="table table-bordered">
									<thead>
										<tr>
											<th width=100 style="background-color: #f5f6f6">아이디</th>
											<td width=200>${userId }</td>
										<tr>
											<th class="myinfocheck-th" style="background-color: #f5f6f6">비밀번호</th>
											<td><input type="password" id="userPswd" name="userPswd"
												class="form-control" /></td>

											<c:if test="${not empty message}">
												<label id="message">${message }</label>
											</c:if>
										<tr>
									</thead>
								</table>
								<br /> <br />
								<!-- Submit button -->
								<button type="submit" class="btn btn-primary btn-block mb-4">확인</button>
								&nbsp;&nbsp;&nbsp;&nbsp; <a href="mypage" class="btn btn-primary btn-block mb-4">돌아가기</a>
							</div>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>