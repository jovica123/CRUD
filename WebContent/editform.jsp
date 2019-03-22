<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title>  
</head>  
<body>  
<%@page import="com.jocko.dao.UserDAO,com.jocko.bean.User"%>  
  
<%  
String id=request.getParameter("id");  
User u=UserDAO.getRecordById(Integer.parseInt(id));  
%>  
  
<h1>Edit Form</h1>  
<form action="edituser.jsp" method="post">  
<input type="hidden" name="id" value="<%=u.getId() %>"/>  
<table>  
<tr><td>Name:</td><td>  
<input type="text" name="firstName" value="<%= u.getFirstName()%>"/></td></tr>  
<tr><td>LastName:</td><td>  
<input type="text" name="lastName" value="<%= u.getLastName()%>"/></td></tr>  
<tr><td>Email:</td><td>  
<input type="text" name="address" value="<%= u.getAddress()%>"/></td></tr>  
<input type="text" name="city" value="<%= u.getCity()%>"/></td></tr>  
<input type="text" name="dateOfBirth" value="<%= u.getDateOfBirth()%>"/></td></tr>  
<tr><td>Gender:</td><td>  
<input type="radio" name="gender" value="male"/>Male   
<input type="radio" name="gender" value="female"/>Female </td></tr>  
<tr><td>State:</td><td>  
<select name="state">  
<option>Serbia</option>  
<option>Pakistan</option>  
<option>Afghanistan</option>  
<option>Berma</option>  
<option>Other</option>  
</select>  
</td></tr>  
<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>  
</table>  
</form>  
  
</body>  
</html>  