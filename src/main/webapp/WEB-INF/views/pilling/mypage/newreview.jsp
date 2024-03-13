<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 작성</title>
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
		<!-- 리뷰 작성 START -->
		<form action="reviewinsert" method="post">
			<div class="card-body col-12 div-center pl-5 pr-5">
				<div class="row g-5">
					<h3 style="vertical-align: bottom;" class="px-2">
						<input type="text" size="89%" placeholder="제목을 입력해주세요."
							id="reviewTitle" name="reviewTitle" required="required">
					</h3>
					<div style="height: 0.3rem; background-color: #fdf001;"
						class="mb-0 mt-0"></div>
					<table class="table mb-0 mt-0">
						<tbody>
							<tr>
								<td colspan="2" width="500"><small>작성자 <a>${userId }</a></small></td>
								<td style="text-align: right;"></td>
							</tr>
							<tr>
								<td colspan="3"><div class="mt-1 mb-1">
										<textarea rows="10" cols="160" placeholder="내용을 입력해주세요."
											id="reviewContent" name="reviewContent" required="required"></textarea>
									</div></td>
							</tr>
						</tbody>
					</table>
					<input type="hidden" id="userNo" name="userNo" value=${userNo }>
				</div>
			</div>
			<!-- 문의사항 작성 END -->

			<!-- 버튼 START -->
			<div class="btn-center mt-2">
				<button type="reset"
					class="btn btn-primary border-0 rounded-pill px-4 py-3" onclick="location.href='myreview'">돌아가기</button>
				&nbsp;&nbsp;
				<button type="submit"
					class="btn btn-primary border-0 rounded-pill px-4 py-3">작성</button>
			</div>
			<!-- 버튼 END -->
		</form>
	</div>
</body>
</html>