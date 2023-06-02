<!DOCTYPE html>
<html lang="pt-BR">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="user/weapons/style.css">
    <link rel="shortcut icon" href="images/valorant-transparent.png" type="image/x-icon">
    <title>Armas</title>
</head>
<body>
    <header>
        <a href="/home" class="" id="logo-ancora"><img class="" id="logo-navbar" src="/user/skins/Images/logo.png" alt="logo"></a>
        <nav class="nav_links">
            <a href="../../">Home</a>
            <a href="/agents">Agentes</a>
            <a href="">Armas</a>
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
            <div class="overlay" id="myOverlay0">
                <div class="overlay-item">
                    <div class="overlay-coluna-1">
                        <div class="coluna-1-cima">
                            <h1 class="overlay-name">${pistol.name}</h1>
                        </div>
                        <div class="coluna-1-meio">
                            <img class="image-overlay" src=${pistol.path}>
                        </div>
                        <div class="coluna-1-baixo">
                            <div class="overlay-div-lore">
                                <h4 class="overlay-lore">Tipo: ${pistol.type}</h4>
                            </div> 
                        </div>
                    </div>
                    <div class="overlay-coluna-2">
                        <div class="div-botao-voltar">
                            <img class="botao-voltar" onclick="closeOverlay(0)" src="/user/agents/Images/Botao-voltar.png">
                        </div>
                        <div class="skills">
                            <div class="skill1">
                                <h3 class="nome-skill1">${duelista.skillq}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill1" src="${duelista.pathskillq}" alt="">
                                </div>
                                <h4 class="descricao-skill1">${duelista.skillDescriptionq}Lorem sadkugsadkjbsda sdjkbsadkj sadkj sadjh sadk sdasa dkjsda kjsa sajk sdakj dsaoj askjdasjk dsa kjlsad kjdas jkas sakdn kdjsab dasjk das</h4>
                            </div>
                            <div class="skill2">
                                <h3 class="nome-skill2">${duelista.skille}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill2" src="${duelista.pathskille}" alt="">
                                </div>
                                <h4 class="descricao-skill2">${duelista.skillDescriptione} Lorem sadkugsadkjbsda sdjkbsadkj sadkj sadjh sadk sdasa dkjsda kjsa sajk sdakj dsaoj askjdasjk dsa kjlsad kjdas jkas sakdn kdjsab dasjk das</h4>
                            </div>
                            <div class="skill3">
                                <h3 class="nome-skill3">${duelista.skillc}</h3>
                                <div class="div-img-skill">
                                    <img class="img-skill3" src="${duelista.pathskillc}" alt="">
                                </div>
                                <h4 class="descricao-skill3">${duelista.skillDescriptionc}Lorem sadkugsadkjbsda sdjkbsadkj sadkj sadjh sadk sdasa dkjsda kjsa sajk sdakj dsaoj askjdasjk dsa kjlsad kjdas jkas sakdn kdjsab dasjk das</h4>
                            </div>
                            <div class="ultimate">
                                <h3 class="nome-ultimate">${duelista.ultimate}</h3>
                                <div class="div-img-skill">
                                    <img class="img-ultimate" src="${duelista.pathultimate}" alt="">
                                </div>
                                <h4 class="descricao-ultimate">${duelista.ultimateDescription}Lorem sadkugsadkjbsda sdjkbsadkj sadkj sadjh sadk sdasa dkjsda kjsa sajk sdakj dsaoj askjdasjk dsa kjlsad kjdas jkas sakdn kdjsab dasjk das</h4>
                            </div>
                        </div>
                    </div>
                </div>
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

    <h1 class="subtitle">METRALHADORA</h1>
    <div class="container">
        <c:forEach var = "metralhadora" items="${metralhadoras}">
            <div class="box">
                <img class="images" src=${metralhadora.path}>
                <h1 class="name">${metralhadora.name}</h1>
            </div>
        </c:forEach>
    </div>
    <footer>
        a
    </footer>
    <script src="user/agents/script.js"></script>
</body>
</html>