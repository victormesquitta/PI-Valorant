/adm/home/home.jsp<!DOCTYPE html>
<html lang="pt-BR">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mapas</title>
    <link rel="stylesheet" href="/user/maps/style.css">
    <link rel="shortcut icon" href="images/valorant-transparente.png" type="image/x-icon">
</head>
<body>
    <header>
            <a href="../../" class="" id="logo-ancora"><img class="" id="logo-navbar" src="/user/maps/Images/logo.png" alt="logo"></a>
            <nav class="nav_links">
                <a href="../../">Home</a>
                <a href="/agents">Agentes</a>
                <a href="/armas">Armas</a>
                <a href="/maps">Mapas</a>
                <a href="/skins">Skins</a>
            </nav>
    </header>
    <div id="div-box-title">
        <div id="div-title">  
            <h1 id="title">Mapas</h1>
            <img class="barra" src="/user/maps/Images/linha-de-titulo-branca.png">
        </div>
    </div>
    <div class="container">
        <c:forEach var="map" items="${maps}" varStatus="status">
            <div class="box">
                <div class="${status.index % 2 == 0 ? 'left-align' : 'right-align'}">
                    <div class="${status.index % 2 == 0 ? 'coluna-1-left' : 'coluna-1-right'}">
                        <h1 class="name">${map.name}</h1>
                        <img src="/user/maps/Images/${status.index % 2 == 0 ? 'linha-de-titulo-vermelha.png' : 'linha-de-titulo-branca-invertida.png'}" class="linha" alt="">
                        <p class="bombsites">Quantidade de bombsites: ${map.bombsites}</p>
                        <p>Coordenadas: ${map.coordinates}</p>
                        <p>País: ${map.country}</p>
                        <p>Peculiaridade: ${map.peculiarity}</p>
                        <p>Data de Lançamento: ${map.releaseDate}</p>
                        <p>Temporada: ${map.season}</p>
                        <p>Ato: ${map.act}</p>
                        <p>Está na rotação: ${map.rotation}</p>
                        <p>${map.description}</p>
                    </div>
                    <div class="${status.index % 2 == 0 ? 'coluna-2-left' : 'coluna-2-right'}">
                        <img class="${status.index % 2 == 0 ? 'image-left' : 'image-right'}" src=${map.path}>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
    <footer>
        <h1>&copy;</h1>
    </footer>
<body>