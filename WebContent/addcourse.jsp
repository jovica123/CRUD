<%@page import="com.jocko.dao.UserDAO"%>
<jsp:useBean id="c" class="com.jocko.bean.Course"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

<%
int i=UserDAO.saveCourse(c);
if(i>0){
response.sendRedirect("addcourse-success.jsp");
}else{
response.sendRedirect("addcourse-error.jsp");
}
%>