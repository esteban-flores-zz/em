<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	$(document).ready(function() 
	{
		document.f.j_username.focus();
	});
</script>

<h2 align="center">Login with Username and Password</h2>

<c:if test="${param.error != null}">
	<p class="error">Login failed. Check that your username and password are correct.</p>
</c:if>


<form name='f'
	action='${pageContext.request.contextPath}/j_spring_security_check'
	method='POST'>
	<table class="formtable">
		<tr>
			<td><input class="control" type='text' name='j_username' value='' placeholder="Username"></td>
		</tr>
		<tr>
			<td><input class="control" type='password' name='j_password' placeholder="Password"/></td>
		</tr>
		<tr>
			<td class="control" >Remember me:<input type='checkbox' name='_spring_security_remember_me'
				checked="checked" /></td>
		</tr>
		<tr>
			<td colspan='2'><input name="submit" type="submit" value="Login" /></td>
		</tr>
		
		<tr>
			<td>
				<p class="msg" >Don't have an account?</p>
			</td>
		</tr>
		
		<tr>
			<td> <a class="link" href="<c:url value="/newaccount"/>">Create new account</a> </td>
		</tr>
	</table>
</form>




