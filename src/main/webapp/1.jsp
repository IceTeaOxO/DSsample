<%@page import="com.sample.jsp.bean.test"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 讓使用者丟圖片取得搜尋用的網址 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<iframe src="https://upload.cc/" title="Upload image" width=100%; height=100%;></iframe>
<!-- 使用enctype，對應的Servlet就不能使用request取得引數，
要先使用ServletFileUpload的parseRequest方法先把request物件解析
然後用解析的元素的isFormField標誌，配合getFieldName
 -->

<!--  -->
<p>複製好網址後貼上搜尋</p>
<form action="2.jsp" method="post" name="FORM">
<input type="text" id="keyword" name="name">
<input type = "submit" id="myButton" name="myButton" value="Search">
</form>
	<script href="index0.js"></script>

</body>
</html>