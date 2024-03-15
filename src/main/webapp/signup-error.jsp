<%--
  Created by IntelliJ IDEA.
  User: mac
  Date: 3/15/24
  Time: 9:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">--%>
    <title>Error Page</title>
</head>
<body>
<h1>Hi, You Are Not An Admin</h1>
<h1>Illegal Log-in Attempt!! </h1>

<% if(response.getStatus() == 500){ %>


<%-- include login page --%>
<%@ include file="index.jsp"%>
<%}else {%>
Hi There, error code is <%=response.getStatus() %><br>
Please go to <a href="${pageContext.request.contextPath}/index.jsp">home page</a>
<%} %>
</body>
</html>