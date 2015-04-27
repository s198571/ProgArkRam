<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
	<meta charset="utf-8">
	<title>AKADAL</title>
	<link href="<c:url value="/resources/mainCSS.css" />" rel="stylesheet">
	<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<link href="http://twitter.github.io/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
	<link href="http://twitter.github.io/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
</head>

<body>
	<article>
		<header>
			<ul>
				<li><img class="headerBox" id="headerImg" src="<c:url value="/resources/images/logo.jpg" />" alt="Icon" /></li>
				<li id="headerText"><h1 class="headerBox">Admin</h1></li>
			</ul>
		</header>

		<form:form method="post" action="/Test/users" commandName="user">
			<div class="logForm" id="topLogForm">
				<form:label path="userName">Username:</form:label>
				<form:input path="userName"/>
			</div>
			<div class="logForm">
				<form:label path="password">Password:</form:label>
				<form:input path="password"/>
			</div>
			<div class="logForm">
				<input type="submit"  value="Login" class="btn"/>
			</div>
		</form:form>
		<c:if test="${!empty users}">
			<h3>Users</h3>
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>UserName</th>
						<th>Password</th>
						<th>&nbsp;</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${users}" var="user">
						<tr>
							<td>${user.userName}</td>
							<td>${user.password}</td>
							<td>
								<form action="delete/${user.id}" method="post"><input type="submit" class="btn btn-danger btn-mini" value="Delete"/></form>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</c:if>
	</article>
</body>
</html>