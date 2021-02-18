<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EduHome</title>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Truculenta:wght@900&family=Reggae+One&display=swap" rel="stylesheet">
<link rel="stylesheet" href="resources/CssFile/contentCss.css">
<%@include file="resources/all_Jsp_Files/allLinks.jsp" %>

</head>
<style>
* {
  box-sizing: border-box;
  padding:0;
  margin:0;
}

body {
  background-color: #f1f1f1;
  background:url(resources/ProjectImages/bg3.jpg);
}

.content {
  background-color: white;
  padding:0px 0px 10px 0px;
  border-radius:20px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}

/* The "show" class is added to the filtered elements */
.show {
	display: block;
}

/* Style the buttons */
.mybtn {
	border: none;
	outline: none;
    padding: 12px 16px;
	background-color: white;
	cursor: pointer;
}

.mybtn:hover {
	background-color: #ddd;
}

.mybtn.active {
	background-color: #666;
	color: white;
}
.content .myh4{
	font-size:17px;
	text-transform:uppercase;
	font-weight:bold;

}
.content img{
	border-top-left-radius: 20px;
	border-top-right-radius: 20px;
}
.content p{
	font-size:14px;
	color:#314e52
}
.content span{
	font-size:17px;
}
.content .bookingBtn{
	border:none;
	width:100%;
	border-bottom-left-radius:10px;
	border-bottom-right-radius:10px;
	padding:5px 0;
	margin:0;
	text-transform:uppercase;
	font-weight:bold;
}
.bookingBtn:hover{
	background:lightgrey;
	cursor:pointer;
	transition:.3s;
	transform:scale(1.02)
}
.bookingBtn:focus{
	outline:none;
	background:#408080;
	color:white;
}
.classBanner{
	margin-left:-105px;
	margin-bottom:40px;
	height:auto;
	color:gold;
	border-bottom:2px solid white;
	font-family: 'Reggae One', cursive;
	clip-path: polygon(0% 0%, 96% 0, 100% 49%, 96% 100%, 0% 100%);
	font-size:60px;
	text-transform:uppercase;
	background:rgba(255,255,255,0.4);
	text-shadow: 0 0 8px #000;
}
 .myrotate{
	transform: rotate(-30deg);
	color:#b22222;
	text-shadow: 0 0 4px #000;
}
.flexbox h1{
font-family:'Truculenta', sans-serif;
letter-spacing:2px;
font-size:80px;

}
.float{
	position:fixed;
	width:60px;
	height:60px;
	bottom:40px;
	right:40px;
	background-color:white;
	color:black;
	border-radius:50px;
	text-align:center;
}

.my-float{
	margin-top:20px;
}
.float i{
font-size:20px;
}

</style>
<body>
<%@include file="resources/all_Jsp_Files/myNavbar.jsp" %>
<!-- <h3 class="mt-5 pt-3 mb-0 pb-0">
Welcome, ${sessionScope.username}
</h3>-->
<div class="flexbox mt-4 mb-4">
  <div class="search">
    <h1>GET DESIRED CONTENT HERE...</h1>
    <!-- <div>
      <input type="text" placeholder="Type here to Search" required>
    </div>
    <a href="#" class="search_icon">SEARCH</a>-->
  </div>   
</div>

<div class="main">

<div class="container">

<div class="row mt-4">
<div class=" classBanner w-50 pl-5"><i class="fa fa-thumb-tack myrotate" aria-hidden="true"></i> class 9th</div>
<div class="w-100"></div>
<c:forEach var="c9" items="${listCourses9th }">
  <div class="col-lg-4 col-md-6 px-4 mb-5">
    <div class="content">
      <img src="${pageContext.request.contextPath }/resources/ProjectImages/${c9.photo }" alt="course for 9th" style="width:100%;height:250px">
      <hr class="mt-0"><div class="px-3">
      <h4 class="mb-1 myh4">${c9.coursename}</h4>
      <p>Course Id 09${c9.courseid} <span class="float-right font-weight-bold">Rs. ${c9.price}</span></p>
      <div class="text-center">
    		<button class="bookingBtn"><a href="${pageContext.request.contextPath}/booknow9th/courseno=${c9.courseid}.html">Book Now</a></button>
      </div>
      </div>
    </div>
    
  </div>

 </c:forEach> 
 <div class=" classBanner w-50 pl-5"><i class="fa fa-thumb-tack myrotate" aria-hidden="true"></i> class 10th</div>
<div class="w-100"></div>
 <c:forEach var="c10" items="${listCourses10th }">
  <div class="col-lg-4 col-md-6 px-4 mb-5">
    <div class="content">
    <img src="${pageContext.request.contextPath }/resources/ProjectImages/${c10.photo }" alt="course for 10th" style="width:100%;height:250px">
    <hr class="mt-0"><div class="px-3">
    <h4 class="mb-1 myh4">${c10.coursename}</h4>
	<p>Course Id 10${c10.courseid}<span class="float-right font-weight-bold">Rs. ${c10.price}</span></p>
	<div class="text-center">
      <button class="bookingBtn"><a href="${pageContext.request.contextPath}/booknow10th/courseno=${c10.courseid}.html">Book Now</a></button></div>
      </div>
    </div>
  </div>
  </c:forEach>
  <div class=" classBanner w-50 pl-5"><i class="fa fa-thumb-tack myrotate" aria-hidden="true"></i> class 11th</div>
<div class="w-100"></div>
  <c:forEach var="c11" items="${listCourses11th }">

  <div class="col-lg-4 col-md-6 px-4 mb-5">
    <div class="content">
    <img src="${pageContext.request.contextPath }/resources/ProjectImages/${c11.photo }" alt="course for 11th" style="width:100%;height:250px">
      <hr class="mt-0"><div class="px-3">
      <h4 class="mb-1 myh4">${c11.coursename}</h4>
      <p>Course Id 11${c11.courseid}<span class="float-right font-weight-bold">Rs. ${c11.price}</span></p>
      <div class="text-center">
      <button class="bookingBtn"><a href="${pageContext.request.contextPath}/booknow11th/courseno=${c11.courseid}.html">Book Now</a></button></div>
      </div>
    </div>
  </div>
  
  </c:forEach>
  <div class=" classBanner w-50 pl-5"><i class="fa fa-thumb-tack myrotate" aria-hidden="true"></i> class 12th</div>
<div class="w-100"></div>
  <c:forEach var="c12" items="${listCourses12th }">
  <div class="col-lg-4 col-md-6 px-4 mb-5">
    <div class="content">
      <img src="${pageContext.request.contextPath }/resources/ProjectImages/${c12.photo }" alt="course for 12th" style="width:100%;height:250px">
      <hr class="mt-0"><div class="px-3">
      <h4 class="mb-1 myh4">${c12.coursename}</h4>
      <p>Course Id 12${c12.courseid}<span class="float-right font-weight-bold">Rs. ${c12.price}</span></p>
      <div class="text-center">
      <button class="bookingBtn"><a href="${pageContext.request.contextPath}/booknow12th/courseno=${c12.courseid}.html">Book Now</a></button></div>
      </div>
    </div>
  </div>

  </c:forEach>
</div>
</div>
<a href="${pageContext.request.contextPath }/cart" class="float">
<i class="fa fa-shopping-cart my-float"></i>
</a>
</div>



</body>
</html>