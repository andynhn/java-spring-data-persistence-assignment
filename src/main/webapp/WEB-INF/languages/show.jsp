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
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <title>Show Page</title>
</head>
<body>
    <div class="container m-5">
        <div class="d-flex flex-row-reverse">
            <a href="/" class="ml-5">Back to All Languages</a>
        </div>
        <h1><c:out value="${language.name}"/></h1>
        <p>Creator: <c:out value="${language.creator}"/></p>
        <p>Version: <c:out value="${language.currentVersion}"/></p>
        <p>
            <a href="/languages/${language.id}/edit">Edit Language</a>
            <form action="/languages/${language.id}" method="post">
                <input type="hidden" name="_method" value="delete">
                <input type="submit" value="Delete Language">
            </form>   
        </p>
    </div>
</body>
</html>