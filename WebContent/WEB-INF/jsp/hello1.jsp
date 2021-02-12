<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/hello.css">
<title>トップ</title>
</head>
<body>
<H1><span>ようこそ！</span></H1>
<H2>このシステムはチームでの課題達成をサポートします</H2>
<div>
<form method="get" action="./mail">
<input type="submit" value="ログインor新規登録へ" class="btn-submit">
</form>
</div>


</body>
</html>