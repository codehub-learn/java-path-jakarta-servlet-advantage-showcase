
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Jstl</title>
</head>
<body>
<%! int variable = 10; %>
<%for (int i=0;i < variable;i++){ %>
<div>
    <p>Hello</p>
</div>
<% } %>

<br>
<br>
<br>

<% String something = (String) request.getAttribute("value"); %>

<c:out value="This is an output" />
<br>

<c:set  var="sVar" scope="session" value="<%=something%>"/>
<c:out value="This is an output ${sVar}" />
<br>

<h1><%= something %></h1>
<br>

<c:choose>
    <c:when test="${sVar.length() > 3}">
        <c:out value="The word is long" />
    </c:when>
    <c:when test="${sVar.length() > 5}">
        <c:out value="The word is too long" />
    </c:when>
</c:choose>

<br>

<c:if test="${sVar.length() > 3}">
    <c:out value="Something that evaluates as true" />
</c:if>


</body>
</html>
