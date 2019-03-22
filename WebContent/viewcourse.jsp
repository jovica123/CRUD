<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Course</title>  
</head>  
<body>  
  
<%@page import="com.jocko.dao.UserDAO,com.jocko.bean.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
  
<h1>Course List</h1>  
  
<%  
List<Course> courseList=UserDAO.getAllCourse();  
request.setAttribute("courseList",courseList);  
%>  
  
<table border="1" width="90%">  
<tr><th>Code</th><th>Course Name</th><th>Description</th></tr>  
<c:forEach items="${courseList}" var="c">  
<tr><td>${c.getCode()}</td><td>${c.getCourseName()}</td><td>${c.getDescription()}</td>  
<td><a href="editcourseform.jsp?code=${c.getCode()}">Edit</a></td>  
<td><a href="deletecourse.jsp?code=${c.getCode()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="addcourseform.jsp">Add New Course</a>  
  
</body>  
</html>  