<%@page import="com.sample.jsp.bean.test"%>
<%@page import="com.sample.jsp.bean.Keyword"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Test</title>
</head>
<body>
<form action="2.jsp" method="post" name="FORM">
<input type="text" id="keyword" name="name">
<input type = "submit" id="myButton" name="myButton" value="Search">
</form>

<jsp:useBean id="keyword" class="com.sample.jsp.bean.Keyword" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="keyword" />
<jsp:useBean id="test" class="com.sample.jsp.bean.test" scope="page"></jsp:useBean>


<%
test t = new test();
t.setImgUrlString(keyword.getName());


%>

<body onLoad="window.location='<%=t.getURL()%>'">

</body>
</html>