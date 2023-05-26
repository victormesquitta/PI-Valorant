<!DOCTYPE html>
<html lang="pt-BR">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mapas</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="images/valorant-transparente.png" type="image/x-icon">
</head>
<body>
    <header>
            <a href="../../" class="" id="logo-ancora"><img class="" id="logo-navbar" src="/user/skins/Images/logo.png" alt="logo"></a>
            <nav class="nav_links">
                <a href="../../">Home</a>
                <a href="../agents/Agents.jsp">Agentes</a>
                <a href="/armas">Armas</a>
                <a href="../maps/Maps.jsp">Mapas</a>
                <a href="/skins">Skins</a>
            </nav>
    </header>
    <h1>Mapas</h1>
    <div class="container">
        <c:forEach var = "map" items="${maps}">
            <div class="box">
                <h1 class="name">${map.name}</h1>
                <img src="Images/linha-de-titulo-vermelha.png" alt="">
                <p>Quantidade de bombsites: ${map.bombsites}</p>
                <p>Coordenadas: ${map.coordinates}</p>
                <p>País: ${map.country}</p>
                <p>Peculiaridade: ${map.peculiarity}</p>
                <p>Data de Lançamento: ${map.release_date}</p>
                <p>Temporada: ${map.season}</p>
                <p>Ato: ${map.act}</p>
                <p>Está na rotação: ${map.rotation}</p>
                <p>${map.description}</p>
                <img class="images" src=${map.path}>
            </div>
        </c:forEach>
    </div>
<body>