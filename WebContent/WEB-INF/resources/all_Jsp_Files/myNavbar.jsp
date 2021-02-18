<%@page import="entities.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-expand-lg navbar-dark mynavbg navbar-fixed-top navbar-default">
  <a class="navbar-brand" href="#"><i class="fa fa-graduation-cap" aria-hidden="true"></i> EduHome</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/MySpringHibernateProject"><i class="fa fa-home"></i> Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/MySpringHibernateProject/#aboutUs"><i class="fa fa-modx" aria-hidden="true"></i> About Us</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="/MySpringHibernateProject/#knowMore"><i class="fa fa-lightbulb-o" aria-hidden="true"></i> Know More</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/MySpringHibernateProject/content"><i class="fa fa-list" aria-hidden="true"></i> Our Content</a>
      </li>
    </ul>
    
    <%
    String user=(String) session.getAttribute("username");
    String email=(String) session.getAttribute("email");
    //int id=(int) session.getAttribute("id");
    if(user!=null){
    %>
    <a href="" class="btn btn-light my-2 mr-2 ml-3 my-sm-0 mynavbtn" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-user" aria-hidden="true"></i> <%=user %></a>
    <a href="${pageContext.request.contextPath}/logout.html" class="btn btn-light my-2 mr-4 my-sm-0 mynavbtn"><i class="fa fa-sign-out" aria-hidden="true"></i> Logout</a>
     
    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content mymodalbg">
      <div class="modal-header">
        <h5 class="modal-title text-info text-center" id="exampleModalLabel"><i class="fa fa-user" aria-hidden="true"></i> Welcome, <%=user %> !</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="container text-center">
        <i class="fa fa-info-circle fa-2x" aria-hidden="true"></i><p class="h4 font-weight-bold">Your Details</p>
        <table class="table ">
        <tbody >
        
        	<tr>
        		<th class="text-left pl-5">User Id</th>
        		<td class="text-left pl-5">${user_logged.userid }</td>
        	</tr>
        	<tr>
        		<th class="text-left pl-5">Username</th>
        		<td class="text-left pl-5">${user_logged.username }</td>
        	</tr>
        	<tr>
        		<th class="text-left pl-5">Email Id</th>
        		<td class="text-left pl-5">${user_logged.email } </td>
        	</tr>
        </tbody>
        	
        </table>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-info" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div> 
      
    <% }else{ %>
    <a href="/MySpringHibernateProject/login" class="btn btn-light my-2 mr-2 ml-3 my-sm-0 mynavbtn"><i class="fa fa-user" aria-hidden="true"></i> Login</a>
    <a href="/MySpringHibernateProject/register" class="btn btn-light my-2 mr-4 my-sm-0 mynavbtn"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
 
    <%} %>
       </div>
</nav>
 