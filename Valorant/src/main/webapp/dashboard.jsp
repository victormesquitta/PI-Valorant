<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
  <div>
    <h1>Maps</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Bombsites</th>
            <th>Coordinates</th>
            <th>Country</th>
            <th>Peculiarity</th>
            <th>Release date</th>
            <th>Season</th>
            <th>Act</th>
            <th>Rotation</th>
        </tr>
        <c:forEach var="map" items="${maps}">
            <tr>
                <td>${map.id}</td>
                <td>${map.name}</td>
                <td>${map.description}</td>
                <td>${map.bombsites}</td>
                <td>${map.coordinates}</td>
                <td>${map.country}</td>
                <td>${map.peculiarity}</td>
                <td>${map.releaseDate}</td>
                <td>${map.season}</td>
                <td>${map.act}</td>
                <td>${map.rotation}</td>
                <td><form action="/delete-map" method="post">
                        <input type="hidden" id="map-id" name="map-id" value="${map.id}">
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>

        </c:forEach>
    </table>
  </div>
</body>
</html>