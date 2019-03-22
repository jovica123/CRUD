<%@page import="com.jocko.dao.UserDAO"%>
<jsp:useBean id="u" class="com.jocko.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=UserDAO.save(u);
if(i>0){
response.sendRedirect("adduser-success.jsp");
}else{
response.sendRedirect("adduser-error.jsp");
}
%>