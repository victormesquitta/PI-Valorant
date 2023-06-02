<!DOCTYPE html>
<html lang="pt-BR">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/user/skins/style.css">
    <link rel="shortcut icon" href="images/valorant-transparent.png" type="image/x-icon">
    <title>Skins</title>
</head>
<body>
    <header>
        <a href="/home" class="" id="logo-ancora"><img class="" id="logo-navbar" src="/user/skins/Images/logo.png" alt="logo"></a>
        <nav class="nav_links">
            <a href="/home">Home</a>
            <a href="/agents">Agentes</a>
            <a href="/armas">Armas</a>
            <a href="/maps">Mapas</a>
            <a href="">Skins</a>
        </nav>
    </header>
    <div class="title">
        <h1>COLEÇÕES</h1>
        <img class="barra" src="/user/skins/Images/linha-de-titulo-branca.png">
    </div>
    <div class="skins">

        <c:forEach var="skin" items="${skins}">
            <div class="conteudo">
                <img src=${skin.path} alt="">
                <h2>${skin.name}</h2>
            </div>
            
        </c:forEach>
    </div>
    <footer>
            <h1>&copy;</h1>
        </footer>
    
</body>
</html>