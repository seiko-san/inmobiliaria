<%-- 
    Document   : Logout
    Created on : 07-dic-2020, 19:08:32
    Author     : Law
--%>

<%
    session.invalidate();
    response.sendRedirect("index.jsp");



%>
