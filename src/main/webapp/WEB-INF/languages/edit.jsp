<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" src="js/time.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <!-- <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> -->
    <%@ page isErrorPage="true" %> <!--THIS ALLOWS US TO RENDER THIS PAGE ON A PUT REQUEST--> 
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <title>Edit Page</title>
</head>
<body>
    <div class="container m-5">
        <div class="d-flex flex-row-reverse">
            <a href="/" class="ml-5">Back to All Languages</a>
            <form action="/languages/${language.id}" method="post">
                <input type="hidden" name="_method" value="delete">
                <input type="submit" value="Delete Language">
            </form>
        </div>
        <h1>Edit Language</h1>

        <form:form action="/languages/${language.id}" method="post" modelAttribute="language">
            <input type="hidden" name="_method" value="put">
            <p>
                <form:label path="name">Name</form:label>
                <form:errors path="name"/>
                <form:input path="name"/>
            </p>
            <p>
                <form:label path="creator">Creator</form:label>
                <form:errors path="creator"/>
                <form:input path="creator"/>
            </p>
            <p>
                <form:label path="currentVersion">Version</form:label>
                <form:errors path="currentVersion"/>
                <form:input path="currentVersion"/>
            </p>   
            <input type="submit" value="Submit"/>
        </form:form>
    </div>
</body>
</html>