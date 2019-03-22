<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
</head>  
<body>  
  
<%@page import="com.jocko.dao.UserDAO,com.jocko.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Users List</h1>  
  
<%  
List<User> list=UserDAO.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Id</th><th>FirstName</th><th>LastName</th><th>Address</th><th>City</th><th>State</th><th>DateOfBirth</th><th>Gender</th>  
<th>Edit</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getFirstName()}</td><td>${u.getLastName()}</td><td>${u.getAddress()}</td><td>${u.getCity()}</td>
<td>${u.getState()}</td><td>${u.getDateOfBirth()}</td><td>${u.getGender()}</td>  
<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="adduserform.jsp">Add New User</a>  
  
</body>  
</html>  