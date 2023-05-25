<!DOCTYPE html>
<html lang="pt-br">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Armas</title>
    <link rel="stylesheet" href="user/weapons/style.css">
</head>
<body>
    <header>
        <a href="../../" class="" id="logo-ancora"><img class="" id="logo-navbar" src="/user/skins/Images/logo.png" alt="logo"></a>
        <nav class="nav_links">
            <a href="../../">Home</a>
            <a href="../agents/Agents.jsp">Agentes</a>
            <a href="../weapons/Weapon.jsp">Armas</a>
            <a href="../maps/Maps.jsp">Mapas</a>
            <a href="/skins">Skins</a>
        </nav>
    </header>

    <h1 class="title">ARMAS</h1>
    <img class="barra" src="/user/weapons/Images/linha-de-titulo-branca.png">
    <h1 class="subtitle">PISTOLAS</h1>


    <div class="container">
        <c:forEach var = "pistol" items="${pistols}">
            <div class="box">
                <img class="images" src=${pistol.path}>
                <h1 class="name">${pistol.name}</h1>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">SUBMETRALHADORAS</h1>
    <div class="container">
        <div class="box">
            <img class="images" src="/user/weapons/Images/Classic.png">
            <h1 class="name">CLASSIC</h1>

        </div>
        <div class="box">
            <img class="images" src="/user/weapons/Images/Classic.png">
            <h1 class="name">CLASSIC</h1>

        </div>


    </div>
    <h1 class="subtitle">ESCOPETAS</h1>
    <div class="container">
        <div class="box">
            <img class="images" src="/user/weapons/Images/Classic.png">
            <h1 class="name">CLASSIC</h1>

        </div>
        <div class="box">
            <img class="images" src="/user/weapons/Images/Classic.png">
            <h1 class="name">CLASSIC</h1>

        </div>


    </div>
    <h1 class="subtitle">FUZIL</h1>
    <div class="container">
        <div class="box">
            <img class="images" src="/user/weapons/Images/Classic.png">
            <h1 class="name">CLASSIC</h1>

        </div>
        <div class="box">
            <img class="images" src="/user/weapons/Images/Classic.png">
            <h1 class="name">CLASSIC</h1>

        </div>


    </div>
    <h1 class="subtitle">FUZIL DE PRECISÃO</h1>
    <div class="container">
        <div class="box">
            <img class="images" src="/user/weapons/Images/Classic.png">
            <h1 class="name">CLASSIC</h1>

        </div>
        <div class="box">
            <img class="images" src="/user/weapons/Images/Classic.png">
            <h1 class="name">CLASSIC</h1>

        </div>


    </div>
</body>
</html>