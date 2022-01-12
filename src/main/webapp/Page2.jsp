
<%@page import="com.sample.jsp.bean.Call"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style1.css">

<title>Search</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>

	<form action="Page2.jsp" method="post" name="FORM">
		<p id="Line1">
		<img src="Beogle.png" style="margin-bottom:-0.5cm" width=10%>
			 <input type="text" class="search_area" id="keyword"
				name="name" placeholder="Type here" autofocus> <input
				type="submit" class="search_button" id="myButton" name="myButton"
				value="Search">
		</p>
	</form>
	<jsp:useBean id="keyword" class="com.sample.jsp.bean.Keyword" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="keyword" />
	<jsp:useBean id="call" class="com.sample.jsp.bean.Call" scope="page"></jsp:useBean>
	<jsp:setProperty name="call" property="keyword" />

	<%
    Call cal = new Call();
    cal.setKeyword(keyword.getName());
    cal.run1();
    
    String[] res = cal.getResult();
    cal.run2();
    String[] res2 = cal.getResult2();
    //out.println(res[0]);
    String tree = res[0]+"\n"+"--------"+res[3]+"\n"+"--------"+res[5];
    tree.replace("\n", "").replace("\r", "");
    %>
   
   
   
   
   
   
    <h1>Wallpaper Result</h1>
    <a href=""></a>
    <a href="<%=res[1]%>"></a>
    
    
    
    <div class="card mb-3" style="max-width: 100%;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="<%=res[2]%>" class="img-fluid rounded-start" alt="<%=res[0]%>">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><%=res[0]%></h5>
        <p class="card-text">Score:<%=res[15] %></p>
        <p class="card-text"><small class="text-muted"></small></p>
      </div>
    </div>
  </div>
</div>

<div class="card mb-3" style="max-width: 50%;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="<%=res[4]%>" class="img-fluid rounded-start" alt="<%=res[3]%>">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><%=res[3]%></h5>
        <p class="card-text">Score:<%=res[16] %></p>
        <p class="card-text"><small class="text-muted"></small></p>
      </div>
    </div>
  </div>
</div>

<div class="card mb-3" style="max-width: 50%;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="<%=res[6]%>" class="img-fluid rounded-start" alt="<%=res[5]%>">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><%=res[5]%></h5>
        <p class="card-text">Score:<%=res[17] %></p>
        <p class="card-text"><small class="text-muted"></small></p>
      </div>
    </div>
  </div>
</div>




       
          
       
        
        
        <br>
        
    <h1>Google Result</h1>
    
        <div class="card mb-3" style="max-width: 100%;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="<%=res2[1]%>" class="img-fluid rounded-start" alt="<%=res2[0]%>">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Score:<%=res2[2]%></h5>
        <p class="card-text"></p>
        <p class="card-text"><small class="text-muted"></small></p>
      </div>
    </div>
  </div>
</div>

<div class="card mb-3" style="max-width: 100%;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="<%=res2[4]%>" class="img-fluid rounded-start" alt="<%=res2[3]%>">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Score:<%=res2[5]%></h5>
        <p class="card-text"></p>
        <p class="card-text"><small class="text-muted"></small></p>
      </div>
    </div>
  </div>
</div>

<div class="card mb-3" style="max-width: 100%;">
  <div class="row g-0">
    <div class="col-md-4">
      <img src="<%=res2[7]%>" class="img-fluid rounded-start" alt="<%=res2[6]%>">
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title">Score:<%=res2[8]%></h5>
        <p class="card-text"></p>
        <p class="card-text"><small class="text-muted"></small></p>
      </div>
    </div>
  </div>
</div>
<!-- 
   <img alt="<%=res2[0] %>" src="<%=res2[1] %>" width=30% height=30%>
    Score:<%=res2[2] %>
    <br>
    <img alt="<%=res2[3] %>" src="<%=res2[4] %>" width=20% height=20%>
    Score:<%=res2[5] %>
    <br>
    <img alt="<%=res2[6] %>" src="<%=res2[7] %>" width=20% height=20%>
    Score:<%=res2[8] %>
 -->
 






</body>
</html>