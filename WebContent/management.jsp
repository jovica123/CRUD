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
  
<h1>Management table</h1>  
  
<%  
List<User> list=UserDAO.getAllRecords();  
request.setAttribute("list",list);

List<Course> courselist=UserDAO.getAllCourse();
request.setAttribute("courselist",courselist);
%>  
  
<table border="1" width="200px">  
<tr><th>FirstName</th>
<c:forEach items="${courselist}" var="c">
<th>${c.getCourseName()}</th>  
</c:forEach></tr>
<c:forEach items="${list}" var="u">  
<tr><td>${u.getFirstName()}</td></tr>  
</c:forEach>
</table>    
</body>  
</html>  