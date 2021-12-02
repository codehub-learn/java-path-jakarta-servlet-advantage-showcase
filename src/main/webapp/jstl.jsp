<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Jstl</title>
</head>
<body>
<%! int variable = 10; %>
<%for (int i = 0; i < variable; i++) { %>
<div>
    <p>Hello <%= i %> times</p>
</div>
<% } %>

<br>
<br>
<br>

<% String something = (String) request.getAttribute("attribute_value"); %>

<c:out value="This is an output"/>
<br>

<%--define and print session var--%>
<c:set var="sessionVar" scope="session" value="<%=something%>"/>
<c:out value="This is an output: ${sessionVar}"/>

<br>

<c:out value="A better approach getting the attribute value: ${requestScope.attribute_value}"/>
<br>
<br>

<%--if else example--%>
<c:choose>
    <c:when test="${sessionVar.length() > 3}">
        <c:out value="The word is long"/>
    </c:when>
    <c:when test="${sessionVar.length() > 5}">
        <c:out value="The word is too long"/>
    </c:when>
</c:choose>

<br>

<%--if example--%>
<c:if test="${sessionVar.length() > 3}">
    <c:out value="Something that evaluates as true"/>
</c:if>


</body>
</html>
