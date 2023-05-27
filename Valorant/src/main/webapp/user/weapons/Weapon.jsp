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
        <a href="/home" class="" id="logo-ancora"><img class="" id="logo-navbar" src="/user/skins/Images/logo.png" alt="logo"></a>
        <nav class="nav_links">
            <a href="/home">Home</a>
            <a href="/agents">Agentes</a>
            <a href="/armas">Armas</a>
            <a href="/maps">Mapas</a>
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
    <c:forEach var = "sub" items="${subs}">
        <div class="box">
            <img class="images" src=${sub.path}>
            <h1 class="name">${sub.name}</h1>
        </div>
    </c:forEach>
    </div>


    </div>
    <h1 class="subtitle">ESCOPETAS</h1>
    <div class="container">
        <c:forEach var = "esc" items="${escopetas}">
            <div class="box">
                <img class="images" src=${esc.path}>
                <h1 class="name">${esc.name}</h1>
            </div>
        </c:forEach>
    </div>


    </div>
    <h1 class="subtitle">FUZIL</h1>
    <div class="container">
        <c:forEach var = "fuz" items="${fuzis}">
            <div class="box">
                <img class="images" src=${fuz.path}>
                <h1 class="name">${fuz.name}</h1>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">FUZIL DE PRECISÃO</h1>
    <div class="container">
        <c:forEach var = "fuzi" items="${fuzilPrecisao}">
            <div class="box">
                <img class="images" src=${fuzi.path}>
                <h1 class="name">${fuzi.name}</h1>
            </div>
        </c:forEach>
    </div>
</body>
</html>