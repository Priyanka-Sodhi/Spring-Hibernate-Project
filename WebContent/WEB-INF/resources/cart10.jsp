<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EduHome</title>
</head>
<body>

	<table cellspacing="2" cellpadding="2" border="1">
		<tr>
			<th>Option</th>
			<th>Id</th>
			<th>Name</th>
			<th>Price</th>
			<th>Qty</th>
			<th>Sub Total</th>
		</tr>
		<c:set var="s9" value="0"></c:set>
		<c:forEach var="it" items="${sessionScope.cart9}">
		<c:set var="s9" value="${s9+it.courses9th.price*it.quantity }"></c:set>
		<tr>
			<td><a href="${pageContext.request.contextPath}/delete9th/${it.courses9th.courseid }.html">delete</a></td>
			<td>${it.courses9th.courseid }</td>
			<td>${it.courses9th.coursename }</td>
			<td>${it.courses9th.price }</td>
			<td>${it.quantity }</td>
			<td>Rs. ${it.courses9th.price*it.quantity }</td>
		</tr>
		</c:forEach>
		<%-- <tr>
			<td colspan="5" align="right">Sum</td>
			<td>Rs. ${s9}</td>
		</tr> --%>
	
		<c:set var="s10" value="0"></c:set>
		<c:forEach var="it" items="${sessionScope.cart10}">
		<c:set var="s10" value="${s+it.courses10th.price*it.quantity }"></c:set>
		<tr>
			<td><a href="${pageContext.request.contextPath}/delete10th/${it.courses10th.courseid }.html">delete</a></td>
			<td>${it.courses10th.courseid }</td>
			<td>${it.courses10th.coursename }</td>
			<td>${it.courses10th.price }</td>
			<td>${it.quantity }</td>
			<td>Rs. ${it.courses10th.price*it.quantity }</td>
		</tr>
		</c:forEach>
		<%-- <tr>
			<td colspan="5" align="right">Sum</td>
			<td>Rs. ${s10}</td>
		</tr> --%>
		
		<c:set var="s11" value="0"></c:set>
		<c:forEach var="it" items="${sessionScope.cart11}">
		<c:set var="s11" value="${s+it.courses11th.price*it.quantity }"></c:set>
		<tr>
			<td><a href="${pageContext.request.contextPath}/delete11th/${it.courses11th.courseid }.html">delete</a></td>
			<td>${it.courses11th.courseid }</td>
			<td>${it.courses11th.coursename }</td>
			<td>${it.courses11th.price }</td>
			<td>${it.quantity }</td>
			<td>Rs. ${it.courses11th.price*it.quantity }</td>
		</tr>
		</c:forEach>
		<%-- <tr>
			<td colspan="5" align="right">Sum</td>
			<td>Rs. ${s11}</td>
		</tr> --%>

		<c:set var="s12" value="0"></c:set>
		<c:forEach var="it" items="${sessionScope.cart12}">
		<c:set var="s12" value="${s+it.courses12th.price*it.quantity }"></c:set>
		<tr>
			<td><a href="${pageContext.request.contextPath}/delete12th/${it.courses12th.courseid }.html">delete</a></td>
			<td>${it.courses12th.courseid }</td>
			<td>${it.courses12th.coursename }</td>
			<td>${it.courses12th.price }</td>
			<td>${it.quantity }</td>
			<td>Rs. ${it.courses12th.price*it.quantity }</td>
		</tr>
		</c:forEach>
		<%-- <tr>
			<td colspan="5" align="right">Sum</td>
			<td>Rs. ${s12}</td>
		</tr> --%>
		<tr>
			<td colspan="5" align="right">Sum</td>
			<td>Rs. ${s9+s10+s11+s12}</td>
		</tr>
	</table>
		
	<br>
	<a href="${pageContext.request.contextPath}/content">Go back to our content</a>
</body>
</html>