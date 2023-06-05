<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <div class="lang">
        	<form:form action="/songs/new" method="POST" modelAttribute="song">
                    <div class="row">
                        <div class="col-md-6 mb-3">
                        <form:label path="title">Title</form:label>     
                            <form:input path="Title" />
                            <form:errors path="title"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mb-3">
                        <form:label path="artist">Artist</form:label>
                             <form:input path="artist" /></div>
                             <form:errors path="artist"/>
                        <div class="col-md-6 mb-3">
                            <form:label path="rating">Rating (1-10)</form:label>
                            <form:input type="number" min="1" max="10" path="rating" />
                            <form:errors path="rating"/>
                        </div>
                        <input type="submit" value="Add Song"/>
                    </div>
         		</form:form>
        </div>
</body>
</html>