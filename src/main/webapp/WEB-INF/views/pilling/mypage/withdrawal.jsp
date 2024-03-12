<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	width: 50%;
}
.table-round{
	border-radius:4px;
}
</style>
<body>
	<!-- 회원정보확인 -->
	<div class="container-fluid">
		<!-- DataTales Example -->
		<div class="card mb-2">
			<div class="card-header py-3">
				<div align="center">
					<h6 class="m-0">회원정보확인</h6>
					<p>${userFirstname }님의정보를안전하게
						보호하기 위해 비밀번호를 다시 한 번 확인합니다.
						<br>
						<c:if test="${not empty message}">
							<label id="message">${message}</label>
						</c:if>
				</div>
			</div>
			<form action="memberwithdrawal" method="post">
				<div class="card-body">
					<div class="width-myinfo table-responsive">
						<div class="myinfocheck-table">
							<table class="table table-bordered card">
							<thead>
									<tr style="display:flex; border-radius:10px;">
									<th class="password-text" width="100" style="background-color: #f5f6f6; border-radius:10px;" valign="middle">비밀번호</th>
									<td style="display:flex; width:100%; border-radius:10px;">
										<input type="password" id="userPswd" name="userPswd" class="form-control" placeholder="비밀번호를 입력하세요." />
									</td>
									<tr>
								</thead>
							</table>
							<!-- Submit button -->
							<button type="submit" class="btn btn-primary btn-block mb-4" onclick="withdraw()">탈퇴</button>
							&nbsp;&nbsp;&nbsp;&nbsp; <a href="myinfopage"
								class="btn btn-primary btn-block mb-4">돌아가기</a>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script>
		let wrongColor = '#ff0000';
		message.style.color = wrongColor;
		
		function withdraw(){
				console.log("여기까지 왔네?");
				  var result = confirm("탈퇴하시겠습니까?");
				  if(result) {
					  alert("탈퇴 처리되었습니다.");
				  }
			  }
	</script>
</body>
</html>