<%@page import="com.jocko.dao.UserDAO"%>  
<jsp:useBean id="c" class="com.jocko.bean.Course"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/>  
<%  
UserDAO.deleteCourse(c);  
response.sendRedirect("viewcourse.jsp");  
%>  