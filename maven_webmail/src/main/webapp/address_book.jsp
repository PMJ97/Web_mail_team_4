<%-- 
    Document   : address_book
    Created on : 2020. 5. 28., 오전 11:28:18
    Author     : inan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib tagdir="/WEB-INF/tags/" prefix="addrtags"%>
<jsp:useBean id="pop3" scope="page" class="cse.maven_webmail.model.Pop3Agent" />
<%
            //String pageno = (String) request.getParameter("pageno");
            //if (pageno != null) {
            //    session.setAttribute("pageno", pageno);
            //}
            pop3.setHost((String) session.getAttribute("host"));
            pop3.setUserid((String) session.getAttribute("userid"));
            pop3.setPassword((String) session.getAttribute("password"));
            //pop3.setPageno((int)Integer.parseInt((String)session.getAttribute("pageno")));
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>주소록</title>
        <link type="text/css" rel="stylesheet" href="css/main_style.css" />
    </head>
    <body>
        <jsp:include page="header.jsp" />
        
        <div id="sidebar">
            <jsp:include page="address_book_sidebar_menu.jsp" />
        </div>
        
            <addrtags:address_book user="webmail" password="1234"
                                   schema="db" table="addrbook"/>
        
        <jsp:include page="footer.jsp" />
    </body>
</html>
