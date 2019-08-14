<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리뷰</title>
</head>
<body>
	<table border="1">
		<tr>
			<td colspan="7" align="right">
				<a href="#">[새글 쓰기]</a>
			</td>
		</tr>
		
		<tr>
			<th>글 번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성 일자</th>
			<th>작성 시간</th>
			<th>조회수</th>
			<th>답글</th>
		</tr>
		
		<c:forEach items="${boardList}" var="dto">
		<tr>
			<td>${dto.num}</td>
			<td>
				<c:forEach begin="1" end="${dto.lev}">
					<%= "&nbsp;&nbsp;" %>
				</c:forEach>
				${dto.subject}
			</td>
			<td>${dto.name}</td>
			<td>${dto.writeDate}</td>
			<td>${dto.writeTime}</td>
			<td>${dto.readCnt}</td>
			<td>${dto.childCnt}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>