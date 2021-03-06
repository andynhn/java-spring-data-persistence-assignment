<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script type="text/javascript" src="js/time.js"></script>
    <link rel="stylesheet" type="text/css" href="/src/main/resources/static/css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <!-- <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %> -->
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    <title>Index Page</title>
</head>
<body>
    <div class="container m-5">
        <h1>Language Dashboard</h1>
        <table class="table">
            <thead class="thead-dark">
                <tr>
                    <th>Name</th>
                    <th>Creator</th>
                    <th>Current Version</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${languages}" var="language">
                <tr>
                    <td><a href="/languages/${language.id}"><c:out value="${language.name}"/></a></td>
                    <td><c:out value="${language.creator}"/></td>
                    <td><c:out value="${language.currentVersion}"/></td>
                    <td>
                        <div class="d-flex justify-content-between">
                            <a href="/languages/${language.id}/edit">Edit Language</a>
                            <form action="/languages/${language.id}" method="post">
                                <input type="hidden" name="_method" value="delete">
                                <input type="submit" value="Delete Language">
                            </form>
                        </div>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    
        <h1>Add New Language</h1>
        <form:form action="/languages" method="post" modelAttribute="language">
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