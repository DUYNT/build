<%-- 
    Document   : testLogin
    Created on : Jul 10, 2014, 10:07:15 AM
    Author     : Windows
--%>

<%
    if(session.getAttribute("admin")!=null){
        response.sendRedirect("admin/index.jsp");
    }else{
        response.sendRedirect("user");
    }
%>
