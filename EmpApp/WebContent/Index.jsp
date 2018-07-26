<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="Bootstrap/bootstrap.min.css"></script>
<script src="Bootstrap/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<%@include file="Header.jsp" %>
<form class="form-inline" action="department" method="post">
  <div class="form-group">
    <label  for="location">Location Id:</label>
    <input type="number" class="form-control" id="location" name="location">
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>


</body>
</html>