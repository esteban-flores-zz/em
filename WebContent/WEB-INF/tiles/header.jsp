<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
 
<ul>

	<li> 
		<a class="title" href="<c:url value='/'/>">Event Manager</a>
	</li>
	
	<li>
		<sec:authorize access="!isAuthenticated()">
			<a class="login" href="<c:url value='/login'/>">Sign in</a>
		</sec:authorize>
	</li>
	
	<li>
		<sec:authorize access="isAuthenticated()">
			<a class="login" href="<c:url value='/j_spring_security_logout'/>">Sign out</a>
		</sec:authorize>
	</li>
	
	<li>
		<a class="wiki" href="<c:url value='https://github.com/h3art/OTE/wiki/Installation'/>">Wiki</a>
	</li>
	
</ul>

<hr></hr>