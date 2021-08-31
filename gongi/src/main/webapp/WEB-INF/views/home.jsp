<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>home.jsp</title>
</head>
<body>
<ul>
<li><a href="${pageContext.request.contextPath}/">홈으로</li>
<li><a href="${pageContext.request.contextPath}/insert">게시물등록하기</li>
<li><a href="${pageContext.request.contextPath}/list">게시물목록</li>
</ul>

</body>
</html>