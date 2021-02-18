<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EduHome</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<style>
body {
    background: #408080;
    background-image:url(resources/ProjectImages/tealbg.jpg);
    min-height: 100vh;
    vertical-align: middle;
    display: flex;
    font-family: 'Poppins', sans-serif;
    font-size: 0.8rem;
    font-weight: bold
}

.title {
    margin-bottom: 5vh;
    text-transform:uppercase;
}

.card {
    margin: auto;
    max-width: 950px;
    width: 90%;
    box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-radius: 1rem;
    border: transparent
}

@media(max-width:767px) {
    .card {
        margin: 3vh auto
    }
}

.cart {
    background-image: radial-gradient( circle farthest-corner at 10% 20%,  rgba(234,249,249,0.67) 0.1%, rgba(239,249,251,0.63) 90.1% );
    padding: 4vh 5vh;
    border-bottom-left-radius: 1rem;
    border-top-left-radius: 1rem
}

@media(max-width:767px) {
    .cart {
        padding: 4vh;
        border-bottom-left-radius: unset;
        border-top-right-radius: 1rem
    }
}

.summary {
    background-color:#E8E8E8;
    border-top-right-radius: 1rem;
    border-bottom-right-radius: 1rem;
    padding: 4vh;
    color: rgb(65, 65, 65)
}

@media(max-width:767px) {
    .summary {
        border-top-right-radius: unset;
        border-bottom-left-radius: 1rem
    }
}

.summary .col-2 {
    padding: 0
}

.summary .col-10 {
    padding: 0
}

.row {
    margin: 0
}

.title b {
    font-size: 1.5rem
}

.main {
    margin: 0;
    padding: 2vh 0;
    width: 100%
}

.col-2,
.col {
    padding: 0 1vh
}

a {
    padding: 0 1vh
}

.close {
    margin-left: auto;
    font-size: 0.7rem
}

img {
    width: 3.5rem
}

.back-to-shop {
    margin-top: 1rem
}

h5 {
    margin-top: 4vh
}

hr {
    margin-top: 1.25rem
}

form {
    padding: 2vh 0
}

select {
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1.5vh 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247)
}

input {
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247)
}

input:focus::-webkit-input-placeholder {
    color: transparent
}

.btn {
    background-color: #408080;
    border-color: #408080;
    color: white;
    width: 100%;
    font-size: 0.7rem;
    margin-top: 4vh;
    padding: 1vh;
    border-radius: 0
}

.btn:focus {
    box-shadow: none;
    outline: none;
    box-shadow: none;
    color: white;
    -webkit-box-shadow: none;
    -webkit-user-select: none;
    transition: none
}

.btn:hover {
    background-color: black;
    color:white;
}

a {
    color: black
}

a:hover {
    color: black;
    text-decoration: none
}

#code {
    background-image: linear-gradient(to left, rgba(255, 255, 255, 0.253), rgba(255, 255, 255, 0.185)), url("https://img.icons8.com/small/16/000000/long-arrow-right.png");
    background-repeat: no-repeat;
    background-position-x: 95%;
    background-position-y: center
}
.modal-backdrop{    
	z-index:1000;
}
.row .col-5 .idText{
color:#408080;
font-weight:100;
}
.row .col-5 .nameText{
text-transform:uppercase;
}
.myModalTitle{
font-size:22px;
text-align:center;
font-family: 'Pacifico', cursive;
}

@media screen and (min-width: 676px) {
        .modal-dialog {
          max-width: 350px; /* New width for default modal */
        }
    }

</style>
</head>
<body>
		<div class="card">
    <div class="row">
        <div class="col-md-8 cart">
            <div class="title">
                <div class="row">
                    <div class="col">
                        <h4><b>Get your courses now!</b></h4>
                    </div>
            <c:set var="q9" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart9}">
			<c:set var="q9" value="${q9+it.quantity }"></c:set></c:forEach>
            
            <c:set var="q10" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart10}">
			<c:set var="q10" value="${q10+it.quantity }"></c:set></c:forEach>
			
			<c:set var="q11" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart11}">
			<c:set var="q11" value="${q11+it.quantity }"></c:set></c:forEach>
			
			<c:set var="q12" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart12}">
			<c:set var="q12" value="${q12+it.quantity }"></c:set></c:forEach>
                    
                </div>
            </div>
            
            <c:set var="s9" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart9}">
			<c:set var="s9" value="${s9+it.courses9th.price*it.quantity }"></c:set>
            <div class="row border-top ">
                <div class="row main align-items-center">
                    <div class="col-3"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/ProjectImages/${it.courses9th.photo }" style="width:100%; height:70px;filter: drop-shadow(0px 3px 3px grey);"></div>
                    <div class="col-5">
                        <div class="row idText">Course Id 09${it.courses9th.courseid }</div>
                        <div class="row nameText">${it.courses9th.coursename }</div>
                    </div>
                    <div class="col">
                        <div class="row"><a class="text-muted" href="${pageContext.request.contextPath}/delete9th/${it.courses9th.courseid }.html">Remove</a></div>
                    </div>
                    <div class="col">Rs. ${it.courses9th.price*it.quantity }</div>
                </div>
            </div>
            </c:forEach>
            
            <c:set var="s10" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart10}">
			<c:set var="s10" value="${s10+it.courses10th.price*it.quantity }"></c:set>
            <div class="row border-top ">
                <div class="row main align-items-center">
                    <div class="col-3"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/ProjectImages/${it.courses10th.photo }" style="width:100%; height:70px;filter: drop-shadow(0px 3px 3px grey);"></div>
                    <div class="col-5">
                        <div class="row idText">Course Id 10${it.courses10th.courseid }</div>
                        <div class="row nameText">${it.courses10th.coursename }</div>
                    </div>
                    <div class="col">
                        <div class="row"><a class="text-muted" href="${pageContext.request.contextPath}/delete10th/${it.courses10th.courseid }.html">Remove</a></div>
                    </div>
                    <div class="col">Rs. ${it.courses10th.price*it.quantity }</div>
                </div>
            </div>
            </c:forEach>
            
                        <c:set var="s11" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart11}">
			<c:set var="s11" value="${s11+it.courses11th.price*it.quantity }"></c:set>
            <div class="row border-top ">
                <div class="row main align-items-center">
                    <div class="col-3"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/ProjectImages/${it.courses11th.photo }" style="width:100%; height:70px;filter: drop-shadow(0px 3px 3px grey);"></div>
                    <div class="col-5">
                        <div class="row idText">Course Id 11${it.courses11th.courseid }</div>
                        <div class="row nameText">${it.courses11th.coursename }</div>
                    </div>
                    <div class="col">
						<div class="row"><a class="text-muted" href="${pageContext.request.contextPath}/delete11th/${it.courses11th.courseid }.html">Remove</a></div>
					</div>
                    <div class="col">Rs. ${it.courses11th.price*it.quantity } </div>
                </div>
            </div>
            </c:forEach>
            
            <c:set var="s12" value="0"></c:set>
			<c:forEach var="it" items="${sessionScope.cart12}">
			<c:set var="s12" value="${s12+it.courses12th.price*it.quantity }"></c:set>
            <div class="row border-top ">
                <div class="row main align-items-center">
                    <div class="col-3"><img class="img-fluid" src="${pageContext.request.contextPath }/resources/ProjectImages/${it.courses12th.photo }" style="width:100%; height:70px;filter: drop-shadow(0px 3px 3px grey);"></div>
                    <div class="col-5">
                        <div class="row idText">Course Id 12${it.courses12th.courseid }</div>
                        <div class="row nameText">${it.courses12th.coursename }</div>
                    </div>
                    <div class="col"> 
						<div class="row"><a class="text-muted" href="${pageContext.request.contextPath}/delete12th/${it.courses12th.courseid }.html">Remove</a></div>	
					</div>
                    <div class="col">Rs. ${it.courses12th.price*it.quantity } </div>
                </div>
            </div>
            </c:forEach>
            
            
            <div class="back-to-shop"><a href="${pageContext.request.contextPath}/content">&leftarrow;<span class="text-muted"> Back to our content</span></a></div>
        </div>
        <div class="col-md-4 summary">
            <div>
                <h5><b>Summary</b></h5>
            </div>
            <hr>
            <div class="row">
                <div class="col" style="padding-left:0;">TOTAL COURSES : ${q9+q10+q11+q12}</div>
            </div>
            <form>
                <p>COURSES</p> <select>
                    <option class="text-muted">Standard</option>
                </select>
                
            </form>
            <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                <div class="col">TOTAL AMOUNT</div>
                <div class="col text-right">Rs. ${s9+s10+s11+s12}</div>
            </div><button class="btn" type="button" data-toggle="modal" data-target="#exampleModal">BOOK NOW</button>
            
            <!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
 				 <div class="modal-dialog" role="document">
    				<div class="modal-content">
      					<div class="modal-header border-0 pb-0 ">
        					<h5 class="modal-title myModalTitle border-0 " id="exampleModalLabel">&#127881; Congrats, You got your courses booked!!</h5>
        					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
          					<span aria-hidden="true">&times;</span>
        					</button>
      					</div>
      			
      		<div class="modal-footer border-0 pt-0 mt-0">
        		<button type="button" class="btn" data-dismiss="modal">Close</button>
      		</div>
    				</div>
  				</div>
			</div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
</body>
</html>