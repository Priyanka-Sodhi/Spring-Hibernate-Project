<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

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
<title>Login Page</title>
<%@include file="resources/all_Jsp_Files/allLinks.jsp" %>
</head>
<body>
<%@include file="resources/all_Jsp_Files/myNavbar.jsp" %>
<div class="container-fluid myloginImg">
<s:form method="post" modelAttribute="use" action="${ pageContext.request.contextPath}/login.html"> 
  <div class="segment pt-3">
    <h1 class="pb-0 mb-2">LOGIN</h1>
  </div>
  
  			<% 
            String invalidMsg=(String) session.getAttribute("login-failed");
            if(invalidMsg!=null){
            %>
            <div class="alert alert-danger alert-dismissible fade show py-0 " role="alert">
  			<span class="small"><%=invalidMsg %></span>
  			<button type="button" class="close py-0" data-dismiss="alert" aria-label="Close">
    			<span aria-hidden="true">&times;</span>
  			</button>
			</div>
			<%
			session.removeAttribute("login-failed");
			}
			%>
	<c:if test="${not empty logoutMsg}">
    	<div class="alert alert-success alert-dismissible fade show py-0 " role="alert">
  			<span class="small">${logoutMsg}</span>
  			<button type="button" class="close py-0" data-dismiss="alert" aria-label="Close">
    			<span aria-hidden="true">&times;</span>
  			</button>
		</div>
    </c:if> 		
	
	<c:if test="${not empty message}">
    	<div class="alert alert-danger alert-dismissible fade show py-0 " role="alert">
  			<span class="small">${message}</span>
  			<button type="button" class="close py-0" data-dismiss="alert" aria-label="Close">
    			<span aria-hidden="true">&times;</span>
  			</button>
		</div>
    </c:if>
			
  	<c:if test="${not empty registerSuccess}">
    	<div class="alert alert-success alert-dismissible fade show py-0 " role="alert">
  			<span class="small">${registerSuccess}</span>
  			<button type="button" class="close py-0" data-dismiss="alert" aria-label="Close">
    			<span aria-hidden="true">&times;</span>
  			</button>
		</div>
    </c:if>         
  <label>
      <s:input type="text" placeholder="Username" path="username"/>
    </label>
  <label>
    <s:input type="password" placeholder="Password" path="pass"/>
  </label> 
  <button class="red mybutton mt-2" value="Login"><i class="fa fa-lock"></i> SUBMIT</button>
 <hr class="mb-1">
 <span class="small ml-4">Don't have an account?<a href="/MySpringHibernateProject/register" class="text-primary"> Register Here.</a></span>
</s:form></div>
<footer>
  <!-- Copyright -->
  <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2)">
    © 2021 Copyright: EduHome<br>
    <span class="footer-text">Created by Priyanka Sodhi</span>
  </div></footer>
  <!-- Copyright -->

</body>
</html>