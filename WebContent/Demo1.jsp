<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:import url="http://localhost:5080/jstlxmldemo/Users.xml" var="XML"></c:import>
	<x:parse xml="${XML}" var="doc"></x:parse>
	<table border="1">
    <x:forEach select="$doc/users/user">
    <tr>
       <x:if select="age > 20">
		<td><x:out select="name" /></td>
	
		<td><x:out select="gender" /></td>
		
		<td><x:out select="age" /></td>
		</x:if>
	</tr>	
	</x:forEach>
	</table>		
</body>
</html>
