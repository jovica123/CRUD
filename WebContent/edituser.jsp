<%@page import="com.jocko.dao.UserDAO"%>  
<jsp:useBean id="u" class="com.jocko.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDAO.update(u);  
response.sendRedirect("viewusers.jsp");  
%>  