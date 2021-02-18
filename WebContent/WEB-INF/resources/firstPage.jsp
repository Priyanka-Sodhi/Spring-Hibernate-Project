<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.mywelcome-img{
		margin-top:50px;
	    background: url("resources/ProjectImages/imo (9).jpg");
        background-repeat: no-repeat;
        background-size:100% 100%;
        width:100%;
        /*clip-path: polygon(50% 0%, 100% 0, 100% 35%, 100% 91%, 84% 93%, 50% 100%, 20% 95%, 0 100%, 0% 35%, 0 0);*/
        height:80vh;  
        }
	
</style>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="resources/CssFile/myCss.css">
<title>EduHome</title>
<%@include file="resources/all_Jsp_Files/allLinks.jsp" %>
</head>
<body>
<%@include file="resources/all_Jsp_Files/myNavbar.jsp" %>
<div class="container-fluid mywelcome-img text-center" id=home>
	<div class="mytextbox py-5">
		<h1>#LEARN FROM HOME!</h1>
	</div>
</div>
<!--#234545-->
<div class="container-fluid px-0 mt-5 pt-5" id="aboutUs">
	<div class="SectionHeading text-center">
		<h1>About Us</h1>
	</div>
	<div class="aboutText">
	<h5 class="text-justify px-5 text-warning mt-4 aboutSmall">EduHome</h5>
	<p class="text-justify px-5 ">
	EduHome is India's largest ed-tech company and offers highly personalised and effective learning programs for students from class 9th to class 12th,
	It has become one of the most preferred education platforms across the globe.</p><br>

	<h5 class="text-justify px-5 text-warning">Why Choose Us?</h5>
	<p class="text-justify px-5 mb-5">
	Learning is pivotal for a student's success in academics and life. 
	The Digital Age is deeply shaping the way students learn and will also determine their future prospects. 
	We encourage students to embrace this fast, changing world and making them ready for tomorrow by being their constant learning partner.
	We craft learning journeys for every student that address their unique needs. 
	We believe in the power of one-to-one learning that addresses every child's learning needs, 
	allows students to be holistically involved in their education and be active, lifelong learners.
	</p>
	</div>
</div>

<div class="container-fluid mt-5 pt-5 pb-5" id=knowMore>
	<div class="SectionHeading mb-5 text-center">
		<h1>Know More</h1>
	</div>
	<div class="card-deck px-4 pt-4 mb-5 text-center">
  <div class="card align-items-center border-0">
    <img class="card-img-top shake" src="resources/ProjectImages/icon1.png" alt="Card image cap" style="width:40%">
    <div class="card-body">
      <h5 class="card-title"><b>CONCEPTUAL CLARITY</b></h5>
      <p class="card-text">Comprehensive coverage of all concepts, get your doubts cleared in one go.</p>
    </div>
  </div>
  <div class="card align-items-center border-0">
    <img class="card-img-top shake" src="resources/ProjectImages/icon3.png" alt="Card image cap" style="width:40%">
    <div class="card-body">
      <h5 class="card-title"><b>PERSONALISED LEARNING PROGRAMS</b></h5>
      <p class="card-text">Our niche is creating personalised learning experiences for every type of learner.</p>
    </div>
  </div>
  <div class="card align-items-center border-0">
    <img class="card-img-top shake" src="resources/ProjectImages/icon4.png" alt="Card image cap" style="width:40%">
    <div class="card-body">
      <h5 class="card-title"><b>BEST & ENGAGING CONTENT</b></h5>
      <p class="card-text">Visually rich content to enable conceptual clarity and lifelong term retention</p>
    </div>
  </div>
</div>
</div>
<div class="lastSection1 pb-5" style="background-color: rgba(0, 0, 0, 0.1)">
<div class="container-fluid lastSection">
	<div class="d-flex bd-highlight p-5">
  		<div class="p-5 pl-5 ml-5 w-100 bd-highlight text-white">
			<h1>Experience EduHome</h1>
			<span class="lastSectionSpan">Achieve more with EduHome.</span>
  		</div>
  		<div class="p-5 pr-5 mr-5 flex-shrink-1 bd-highlight">
			<a href="/MySpringHibernateProject/register" class="btn mt-3 lastSectionBtn">Register Now</a>
		</div>
	</div>
</div></div>
<%@include file="resources/all_Jsp_Files/myFooter.jsp" %>
</body>
</html>