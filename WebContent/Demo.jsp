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
	<x:out select="$doc/users/user[2]/name" />
	<br/>
	<x:out select="$doc/users/user[2]/gender" />
	<br/>
	<x:out select="$doc/users/user[2]/age" />
</body>
</html>