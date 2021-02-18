<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
	.myloginImg{
	    background: url("resources/ProjectImages/imo (50).jpg");
        background-repeat: no-repeat;
        background-size:100% 100%;
        width:100%;
        height:100vh;
        }
	
</style>
<link rel="stylesheet" href="resources/CssFile/myCss.css">
<link rel="stylesheet" href="resources/CssFile/loginCss.css">
<title>Register Page</title>
<%@include file="resources/all_Jsp_Files/allLinks.jsp" %>
</head>
<body>
<%@include file="resources/all_Jsp_Files/myNavbar.jsp" %>
<div class="container-fluid myloginImg">
<form:form action="registerDetails" modelAttribute="user" method="post" > 
  <div class="segment">
    <h1 class="mb-0 pb-2">REGISTER</h1>
  </div>	
  	<c:if test="${not empty message}">
    	<div class="alert alert-danger alert-dismissible fade show py-0 mb-2 " role="alert">
  			<span class="small">${message}</span>
  			<button type="button" class="close py-0" data-dismiss="alert" aria-label="Close">
    			<span aria-hidden="true">&times;</span>
  			</button>
		</div>
	</c:if>

  <label>
    <form:input type="text" placeholder="Username" path="username"/>
  </label>
  <label>
      <form:input type="text" placeholder="Email Address" path="email"/>
    </label>
  <label>
    <form:input type="password" placeholder="Password" path="pass"/>
  </label>
  <button class="red mybutton mt-2"><i class="fa fa-lock"></i> SUBMIT</button>
  <hr class="mb-1">
 <span class="small ml-5">Already Registered?<a href="/MySpringHibernateProject/login" class="text-primary"> Login Here.</a></span>
</form:form></div>
<footer>
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
    © 2021 Copyright: EduHome<br>
    <span class="footer-text">Created by Priyanka Sodhi</span>
  </div></footer>
  <!-- Copyright -->

</body>
</html>