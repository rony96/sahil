<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.List"
    import="com.ibm.model.Department"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link href="Bootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<script src="Bootstrap/bootstrap.min.js"></script>
<script type="text/javascript" src="/Bootstrap/jquery-3.3.1.js">
</script>
<title>Insert title here</title>
</head>
<body>
<%@ include file="Header.jsp" %>
<h1> Department List </h1>
<table>
<%List<Department> depts=(List<Department>)request.getAttribute("depts"); 
	for(Department d:depts){
	%>
	<tr>
	<td><%=d.getDeptId() %><td><br>
	<td><%=d.getDeptName() %></tr>
	<% }%>
   
</table>
</body>
</html>