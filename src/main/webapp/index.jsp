<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
<div class="container">
    <input id="toggle" type="checkbox">
    <label class="toggle-container" for="toggle">
        <span class="button button-toggle"></span>
    </label>

    <!-- The Nav Menu -->
    <nav class="nav">
        <a class="nav-item" href="/profile">Profile</a>
        <a class="nav-item" href="/ads">Postings</a>
        <a class="nav-item" href="/contact">Contact</a>
    </nav>

    <div class="hero-image">
        <div class="hero-text">
            <h1>Buy..Sell...Bye</h1>
            <p>Consider this your last stop.
               Stop wasting your time at the store when
               when we have everything you need.</p>
        </div>
    </div>

</body>
</html>
