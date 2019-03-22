<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="com.jocko.dao.UserDAO,com.jocko.bean.Course"%>  
  
<%  
String code=request.getParameter("code");  
Course c=UserDAO.getRecordByCode(Integer.parseInt(code));  
%>  
  
<h1>Edit Course</h1>  
<form action="editcourse.jsp" method="post">  
<input type="hidden" name="code" value="<%=c.getCode() %>"/>  
<table>  
<tr><td>Course Name:</td><td>  
<input type="text" name="courseName" value="<%= c.getCourseName()%>"/></td></tr>  
<tr><td>Description:</td><td>  
<input type="text" name="description" value="<%= c.getDescription()%>"/></td></tr>  
 
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Edit Course"/></td></tr>  
</table>  
</form>  
  
</body>  
</html>  