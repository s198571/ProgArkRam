<!doctype html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AKADAL</title>
    <link href="<c:url value="/resources/mainCSS.css" />" rel="stylesheet">
    <link href="http://twitter.github.io/bootstrap/assets/css/bootstrap.css" rel="stylesheet">
    <link href="http://twitter.github.io/bootstrap/assets/css/bootstrap-responsive.css" rel="stylesheet">
</head>
<body>
    <form:form method="post" action="/" commandName="users">
    </form:form>
    <article>
        <header>
            <ul>
                <li><img class="headerBox" id="headerImg" src="<c:url value="/resources/images/logo.jpg" />" alt="Icon" /></li>
                <li id="headerText"><h1 class="headerBox">Cinema booking</h1></li>
                <li id="admin"><a class="headerBox" href="http://localhost:8080/Test/users"><img id="adminImg" src="<c:url value="/resources/images/padlock.png" />" alt="Admin" /></a></li>
            </ul>
        </header>
        <div id="allMov">
            <ul>
                <li class="movBox"><a href="/test/admin"><img class="movImg" src="<c:url value="/resources/images/hobbit.jpg" />" alt="Hobbit" /></a></li>
                <li class="movBox"><a href="/test/admin"><img class="movImg" src="<c:url value="/resources/images/getHard.jpg" />" alt="Get Hard" /></a></li>
                <li class="movBox"><a href="/test/admin"><img class="movImg" src="<c:url value="/resources/images/taken3.jpg" />" alt="Taken 3" /></a></li>
                <li class="movBox"><a href="/test/admin"><img class="movImg" src="<c:url value="/resources/images/fast7.jpg" />" alt="Fast and furious 7" /></a></li>
                <li class="movBox"><a href="/test/admin"><img class="movImg" src="<c:url value="/resources/images/avengers.jpg" />" alt="Avengers" /></a></li>
                <li class="movBox"><a href="/test/admin"><img class="movImg" src="<c:url value="/resources/images/gladiator.jpg" />" alt="Gladiator" /></a></li>
            </ul>
        </div>
    </article>

</body>
</html>
