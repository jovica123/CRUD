<%@page import="com.jocko.dao.UserDAO"%>  
<jsp:useBean id="c" class="com.jocko.bean.Course"></jsp:useBean>  
<jsp:setProperty property="*" name="c"/>  
<%  
int i=UserDAO.updateCourse(c);  
response.sendRedirect("viewcourse.jsp");  
%>  