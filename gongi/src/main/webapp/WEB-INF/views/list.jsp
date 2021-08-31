<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- http://java.sun.com/jsp/jstl/fmt : date form 에 대한 기능들을 담고 있다.  -->
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
</head>
<body>
<h1>게시글 목록</h1>
<a href="${pageContext.request.contextPath}/list">전체글목록</a> |

<a href="${pageContext.request.contextPath}/">홈으로</a>
<table width="600" border="1">
	<tr>
	
		<th>글번호</th>
		<th>작성자</th>
		<th>글제목</th>
		<th>삭제</th>
		
	</tr>
	<c:forEach var="vo" items="${list}"> 
	<tr>
		<td>${vo.num}</td>
		<td>${vo.writer}</td>
		<td><a href="${pageContext.request.contextPath}/detail?num=${vo.num}">${vo.title}</a></td>
		<td><a href="${pageContext.request.contextPath}/delete?num=${vo.num}">삭제</a></td>
	</tr>
	</c:forEach>

</table>
<br>
<div>

	<c:if test="${pu.startPageNum>5}">
		<a href="${pageContext.request.contextPath}/list?pageNum=${pu.startPageNum-1 }&field=${field}&keyword=${keyword}">[이전]</a>
	</c:if>

 <c:forEach var="i" begin="${pu.startPageNum}" end="${pu.endPageNum}">
 
 	<c:choose>
 	
 		<c:when test="${pu.pageNum==i}"><!-- 현재페이지 -->
 			<a href="${pageContext.request.contextPath}/list?pageNum=${i}&field=${field}&keyword=${keyword}">
 			<span style='color:blue; font-weight: bold'>[${i}]</span>
 			</a>
 		</c:when>
 		<c:otherwise>
 			<a href="${pageContext.request.contextPath}/list?pageNum=${i}&field=${field}&keyword=${keyword}">
 			<span style='color:gray;'>[${i}]</span>
 			</a>
 		</c:otherwise>
 	</c:choose>

 </c:forEach>
 <c:if test="${pu.endPageNum<pu.totalPageCount}">
		<a href="${pageContext.request.contextPath}/list?pageNum=${pu.endPageNum+1 }&field=${field}&keyword=${keyword}">[다음]</a>
	</c:if>
</div>

<div>
	<form method="post" action="${pageContext.request.contextPath}/list">
		<select name="field">
			<option value="title" <c:if test="${field=='titie'}">selected></c:if> > 제목</option>
			<option value="content" <c:if test="${field=='content'}">selected></c:if> > 내용</option>
			<option value="all" <c:if test="${field=='all'}">selected></c:if> > 제목+내용 </option>
		</select>
		<input type="text" name="keyword" value="${keyword}">
		<input type="submit" value="검색">
	</form>
</div>

</body>
</html>