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
table, td, th {
	border: 1px solid black;
	border-collapse: collapse;
	padding: 5px;
}
;
</style>
<body>
	<table>
		<thead>
			<tr>
				<th width="150">쿠폰이름</th>
				<th width="100">할인율</th>
				<th width="150">발급일</th>
				<th width="150">유효기간</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${not empty couponList}">
				<c:forEach items="${couponList}" var="c">
					<tr>
						<td>${c.couponName }</td>
						<td>${c.couponRate}%</td>
						<td>${c.couponDate }</td>
						<td>${c.couponPeriod }</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test="${empty couponList}">
				<tr>
					<td colspan="4" style="text-align: center;">보유한 쿠폰이 없습니다.</td>
				</tr>
			</c:if>
		</tbody>
	</table>
</body>
</html>