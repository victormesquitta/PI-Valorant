<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <title>Weapons</title>
</head>
<body>
  <div>
    <h1>Weapons</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Type</th>
            <th>Creds</th>
            <th>Damage</th>
            <th>Magazine</th>
            <th>Reserve</th>
            <th>FireRateSecs</th>
            <th>WallPenetration</th>
        </tr>
        <c:forEach var="weapon" items="${weapons}">
            <tr>
                <td>${weapon.id}</td>
                <td>${weapon.name}</td>
                <td>${weapon.type}</td>
                <td>${weapon.creds}</td>
                <td>${weapon.damage}</td>
                <td>${weapon.magazine}</td>
                <td>${weapon.reserve}</td>
                <td>${weapon.fireRateSecs}</td>
                <td>${weapon.wallPenetration}</td>
                <td><form action="/delete-weapon" method="post">
                        <input type="hidden" id="weapon-id" name="weapon-id" value="${weapon.id}">
                        <button type="submit">Delete</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
    </table>
  </div>
</body>
</html>