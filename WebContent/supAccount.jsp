<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet"
   type = "text/css"
   href = "Supp.css" />
<meta charset="ISO-8859-1">
<title>sup account</title>
</head>
<body>

<div  class=sup>
<h1>supplier Details</h1>
<div alagin = center>
<table border="1" class=tab>
<c:forEach var="sup" items="${supdetils}">

<c:set var="supid" value="${sup.supid}"/>
<c:set var="name" value="${sup.name}"/>
<c:set var="uname" value="${sup.username}"/>
<c:set var="pass" value="${sup.password}"/>
<c:set var="email" value="${sup.email}"/>
<c:set var="phone" value="${sup.phone}"/>


     <tr>
		<td>Supplier ID</td>
		<td>${sup.supid}</td>
	</tr>
	
	 <tr>
		<td>Supplier Name</td>
		<td>${sup.name}</td>
	</tr>
	
	 <tr>
		<td>User Name</td>
		<td>${sup.username}</td>
	</tr>
	
	 <tr>
		<td>Password</td>
		<td>${sup.password}</td>
	</tr>
	
	 <tr>
		<td>Supplier Email</td>
		<td>${sup.email}</td>
	</tr>
	 <tr>
		<td>Supplier Phone</td>
		<td>${sup.phone}</td>
	</tr>

</c:forEach>

</table>
</div>
<div>
<c:url value="UpdateSupplier.jsp" var="supllierUpdate">
	<c:param name="supid" value="${supid}"/>
	<c:param name="name" value="${name}"/>
	<c:param name="uname" value="${uname}"/>
	<c:param name="pass" value="${pass}"/>
	<c:param name="email" value="${email}"/>
	<c:param name="phone" value="${phone}"/>
	
	</c:url>
<a href="${supllierUpdate}" >
              <input type="button" name="update" value="Update Details"></a>

<a href="AllsupplierDetailsjsp.jsp" alaign:bottom>
<input type="button" name="display" value="display"><br>
</a>
</div>	
</div>
</body>
</html>