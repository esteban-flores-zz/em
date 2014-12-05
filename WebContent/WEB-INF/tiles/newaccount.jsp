<%@ page language="java" contentType="text/html; charset=US-ASCII" pageEncoding="US-ASCII"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<style>

a.login
{
	color:transparent;
}

.steve
{
	width: auto;
	margin-left:auto;
	margin-right:auto;
}

</style>
 
<h2 align = "center">Sign up for EventManager (free)</h2>

<sf:form id="details" method="post"
	action="${pageContext.request.contextPath}/createaccount"
	commandName="user">

	<table class="formtable">
		<tr>
			<td>
				<sf:input class="control" path="username" name="username" 
					type="text" placeholder="Desired username" /><br/>
				<div class="error">
					<sf:errors path="username"></sf:errors>
				</div>
			</td>
		</tr>
		
		<tr>
			<td>
				<sf:input class="control" path="name" name="name" 
					type="text" placeholder="Your name"/><br />
				<div class="error">
					<sf:errors path="name"></sf:errors>
				</div>
			</td>
		</tr>
		
		<tr>
			<td>
				<sf:input class="control" path="email" name="email" 
				type="text" placeholder="Your email" />
				<div class="error">
					<sf:errors path="email"></sf:errors>
				</div></td>
		</tr>
		
		<tr>
			<td>
				<sf:input id="password" class="control" path="password" name="password" 
					type="password" placeholder="Your password"/>
				<div class="error">
					<sf:errors path="password"></sf:errors>
				</div>
			</td>
		</tr>
		
		<tr>
			<td>
				<input id="confirmpass" class="control" name="confirmpass"
					type="password" placeholder="Your password, again."/>
				<div id="matchpass"></div>
			</td>
		</tr>
		
		<tr>
			<td>
				<input class= "steve" id="file" name="file" type="file"  />
			</td>
		</tr> 
		
		<tr>
			<td>
				<input class="control" value="Create account" type="submit" />
			</td>
		</tr>
		
	</table>

</sf:form>
