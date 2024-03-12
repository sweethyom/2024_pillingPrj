<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	/*<![CDATA[*/
	
	// 제품 등록 성공 시 띄울 메시지를 담는 변수
	var productAddMessage = "\${productAddMessage}";
	alert(productAddMessage);
	
	location.replace("productpurchase");
	
	/*]]>*/
</script>
</body>
</html>