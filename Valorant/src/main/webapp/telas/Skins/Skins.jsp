<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="/telas/Skins/style.css">
    <title>Skins</title>
</head>
<body>
    <header>
        <a href="#" class="" id="logo-ancora"><img class="" id="logo-navbar" src="/telas/Skins/Images/logo.png" alt="logo"></a>
        <nav class="nav_links">
            <a href="../Home-User/index.jsp">Home</a>
            <a href="#">Agentes</a>
            <a href="#">Armas</a>
            <a href="#">Mapas</a>
            <a href="#">Skins</a>
        </nav>
</header>   
    <h1>COLEÇÕES</h1>


<div class="skins">
    <c:forEach var="skin" items="${skins}">
        <div class="conteudo">
            <img src=${skin.path} alt="">
            <h2>${skin.name}</h2>
        </div>
     </c:forEach>
</div>
    
</body>
</html>