<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Emaillist (Model 2) 가입</title>
</head>
<body>
	<h1>메일링 리스트 가입(Model 2)</h1>
	<p>메일링 리스트에 가입하려면<br/>
	아래 항목을 기입하고 등록 버튼을 눌러 주세요</p>
	<!-- action: 요청을 처리할 페이지(서블릿/JSP)
		method: 요청 방식 -->
	<form action="<%= request.getContextPath() %>/el"
		method="POST">  <!-- /el : 처리할 servlet -->
		
		<!-- hidden은 사용자 입력은 아니지만 전송해야 할 데이터 -->
		<input type="hidden" value="add" name="a" />
		<label for="last_name">성</label>
		<input type="text" name="last_name" id="last_name" /><br />
		<label for="first_name">이름</label>
		<input type="text" name="first_name" id="first_name" /><br />
		<label for="email">이메일</label>
		<input type="text" name="email" id="email" /><br />
		
		<!-- 전송 버튼 -->
		<input type="submit" value="등록" />
	</form>
	
	<!-- 리스트로 돌아가기  -->
	<p>
		<a href="<%= request.getContextPath() %>/el/">목록 보기</a>
	</p>
</body>
</html>