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
            <div class="box" onclick="openOverlay(0)">
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
                            <div class="overlay-div-tipo">
                                <h3 class="overlay-tipo">Tipo: ${pistol.type}</h3>
                                <div class="overlay-creds">
                                    <img class="img-creds" src="/user/weapons/Images/Creds.png" alt="">
                                    <h4 class="creds">Créditos: ${pistol.creds}</h4>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="overlay-coluna-2">
                        <div class="div-botao-voltar">
                            <img class="botao-voltar" onclick="closeOverlay(0)" src="/user/weapons/Images/Botao-voltar.png">
                        </div>
                        <div class="infos-armas">
                            <div class="div-pente">
                                <div class="div-img-weapon">
                                    <img class="img-pente" src="/user/weapons/Images/Magazine.png" alt="">
                                </div>
                                <h3 class="nome-pente">Munição por Pente: </h3>
                                <h4 class="qtd-pente">${pistol.magazine}</h4>
                            </div>
                            <div class="div-reserve">
                                <div class="div-img-weapon">
                                    <img class="img-reserve" src="/user/weapons/Images/Reserve.png  " alt="">
                                </div>
                                <h3 class="nome-reserve">Munição Total:</h3>
                                <h4 class="qtd-reserve">${pistol.reserve}</h4>
                            </div>
                            <div class="div-penetracao">
                                <div class="div-img-weapon">
                                    <img class="img-penetracao" src="/user/weapons/Images/wallpenetration.png" alt="">
                                </div>
                                <h3 class="nome-penetracao">Penetração de Parede:</h3>
                                <h4 class="qtd-penetracao">${pistol.wallPenetration}</h4>
                            </div>
                            <div class="div-cadencia">
                                <div class="div-img-weapon">
                                    <img class="img-cadencia" src="/user/weapons/Images/fire-rate.png" alt="">
                                </div>
                                <h3 class="nome-cadencia">Cadência de Tiros:</h3>
                                <h4 class="qtd-cadencia">${pistol.fireRateSecs}</h4>
                            </div>
                        </div>
                        
                        <div>
                            <table>
                                <tr>
                                  <th colspan="4">Dano</th>
                                </tr>
                                <tr>
                                  <th>Distância\Área</th>
                                  <th>Cabeça</th>
                                  <th>Corpo</th>
                                  <th>Perna</th>
                                </tr>
                                <tr>
                                  <th>Curta Distância</th>
                                  <%-- Dados do banco de dados --%>
                                  <%
                                    String curtaCabeca = "${pistol.wallPenetration}";
                                    String curtaCorpo = "5";
                                    String curtaPerna = "3";
                                %>
                                    <td><%= curtaCabeca %></td>
                                    <td><%= curtaCorpo %></td>
                                    <td><%= curtaPerna %></td>
                                </tr>
                                    <tr>
                                      <th>Média Distância</th>
                                      <%-- Dados do banco de dados --%>
                                        <%
                                           String mediaCabeca = "8";
                                           String mediaCorpo = "4";
                                           String mediaPerna = "2";
                                           %>
                                          <td><%= mediaCabeca %></td>
                                          <td><%= mediaCorpo %></td>
                                          <td><%= mediaPerna %></td>
                                          </tr>
                                        <tr>
                                          <th>Longa Distância</th>
                                          <%-- Dados do banco de dados --%>
                                            <%
                                               String longaCabeca = "6";
                                               String longaCorpo = "3";
                                               String longaPerna = "1";
                                               %>
                                              <td><%= longaCabeca %></td>
                                              <td><%= longaCorpo %></td>
                                              <td><%= longaPerna %></td>
                                              </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">SUBMETRALHADORAS</h1>
    <div class="container">
    <c:forEach var = "sub" items="${subs}">
        <div class="box" onclick="openOverlay(1)">
            <img class="images" src=${sub.path}>
            <h1 class="name">${sub.name}</h1>
        </div>
         <div class="overlay" id="myOverlay1">
            <div class="overlay-item">
                <div class="overlay-coluna-1">
                    <div class="coluna-1-cima">
                        <h1 class="overlay-name">${sub.name}</h1>
                    </div>
                    <div class="coluna-1-meio">
                        <img class="image-overlay" src=${sub.path}>
                    </div>
                    <div class="coluna-1-baixo">
                        <div class="overlay-div-tipo">
                            <h3 class="overlay-tipo">Tipo: ${sub.type}</h3>
                            <div class="overlay-creds">
                                <img class="img-creds" src="/user/weapons/Images/Creds.png" alt="">
                                <h4 class="creds">Créditos: ${sub.creds}</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="overlay-coluna-2">
                    <div class="div-botao-voltar">
                        <img class="botao-voltar" onclick="closeOverlay(1)" src="/user/weapons/Images/Botao-voltar.png">
                    </div>
                    <div class="infos-armas">
                        <div class="div-pente">
                            <div class="div-img-weapon">
                                <img class="img-pente" src="/user/weapons/Images/Magazine.png" alt="">
                            </div>
                            <h3 class="nome-pente">Munição por Pente: </h3>
                            <h4 class="qtd-pente">${sub.magazine}</h4>
                        </div>
                        <div class="div-reserve">
                            <div class="div-img-weapon">
                                <img class="img-reserve" src="/user/weapons/Images/Reserve.png  " alt="">
                            </div>
                            <h3 class="nome-reserve">Munição Total:</h3>
                            <h4 class="qtd-reserve">${sub.reserve}</h4>
                        </div>
                        <div class="div-penetracao">
                            <div class="div-img-weapon">
                                <img class="img-penetracao" src="/user/weapons/Images/wallpenetration.png" alt="">
                            </div>
                            <h3 class="nome-penetracao">Penetração de Parede:</h3>
                            <h4 class="qtd-penetracao">${sub.wallPenetration}</h4>
                        </div>
                        <div class="div-cadencia">
                            <div class="div-img-weapon">
                                <img class="img-cadencia" src="/user/weapons/Images/fire-rate.png" alt="">
                            </div>
                            <h3 class="nome-cadencia">Cadência de Tiros:</h3>
                            <h4 class="qtd-cadencia">${sub.fireRateSecs}</h4>
                        </div>
                    </div>

                    <div>
                        <table>
                            <tr>
                              <th colspan="4">Dano</th>
                            </tr>
                            <tr>
                              <th>Distância\Área</th>
                              <th>Cabeça</th>
                              <th>Corpo</th>
                              <th>Perna</th>
                            </tr>
                            <tr>
                              <th>Curta Distância</th>
                              <%-- Dados do banco de dados --%>
                              <%
                                String curtaCabeca = "10";
                                String curtaCorpo = "5";
                                String curtaPerna = "3";
                            %>
                                <td><%= curtaCabeca %></td>
                                <td><%= curtaCorpo %></td>
                                <td><%= curtaPerna %></td>
                            </tr>
                                <tr>
                                  <th>Média Distância</th>
                                  <%-- Dados do banco de dados --%>
                                    <%
                                       String mediaCabeca = "8";
                                       String mediaCorpo = "4";
                                       String mediaPerna = "2";
                                       %>
                                      <td><%= mediaCabeca %></td>
                                      <td><%= mediaCorpo %></td>
                                      <td><%= mediaPerna %></td>
                                      </tr>
                                    <tr>
                                      <th>Longa Distância</th>
                                      <%-- Dados do banco de dados --%>
                                        <%
                                           String longaCabeca = "6";
                                           String longaCorpo = "3";
                                           String longaPerna = "1";
                                           %>
                                          <td><%= longaCabeca %></td>
                                          <td><%= longaCorpo %></td>
                                          <td><%= longaPerna %></td>
                                          </tr>
                        </table>
                    </div>
                </div>
            </div>
         </div>
    </c:forEach>
    </div>


    </div>
    <h1 class="subtitle">ESCOPETAS</h1>
    <div class="container">
        <c:forEach var = "esc" items="${escopetas}">
            <div class="box" onclick="openOverlay(2)">
                <img class="images" src=${esc.path}>
                <h1 class="name">${esc.name}</h1>
            </div>
            <div class="overlay" id="myOverlay2">
               <div class="overlay-item">
                   <div class="overlay-coluna-1">
                       <div class="coluna-1-cima">
                           <h1 class="overlay-name">${esc.name}</h1>
                       </div>
                       <div class="coluna-1-meio">
                           <img class="image-overlay" src=${esc.path}>
                       </div>
                       <div class="coluna-1-baixo">
                           <div class="overlay-div-tipo">
                               <h3 class="overlay-tipo">Tipo: ${esc.type}</h3>
                               <div class="overlay-creds">
                                   <img class="img-creds" src="/user/weapons/Images/Creds.png" alt="">
                                   <h4 class="creds">Créditos: ${esc.creds}</h4>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="overlay-coluna-2">
                       <div class="div-botao-voltar">
                           <img class="botao-voltar" onclick="closeOverlay(2)" src="/user/weapons/Images/Botao-voltar.png">
                       </div>
                       <div class="infos-armas">
                           <div class="div-pente">
                               <div class="div-img-weapon">
                                   <img class="img-pente" src="/user/weapons/Images/Magazine.png" alt="">
                               </div>
                               <h3 class="nome-pente">Munição por Pente: </h3>
                               <h4 class="qtd-pente">${esc.magazine}</h4>
                           </div>
                           <div class="div-reserve">
                               <div class="div-img-weapon">
                                   <img class="img-reserve" src="/user/weapons/Images/Reserve.png  " alt="">
                               </div>
                               <h3 class="nome-reserve">Munição Total:</h3>
                               <h4 class="qtd-reserve">${esc.reserve}</h4>
                           </div>
                           <div class="div-penetracao">
                               <div class="div-img-weapon">
                                   <img class="img-penetracao" src="/user/weapons/Images/wallpenetration.png" alt="">
                               </div>
                               <h3 class="nome-penetracao">Penetração de Parede:</h3>
                               <h4 class="qtd-penetracao">${esc.wallPenetration}</h4>
                           </div>
                           <div class="div-cadencia">
                               <div class="div-img-weapon">
                                   <img class="img-cadencia" src="/user/weapons/Images/fire-rate.png" alt="">
                               </div>
                               <h3 class="nome-cadencia">Cadência de Tiros:</h3>
                               <h4 class="qtd-cadencia">${esc.fireRateSecs}</h4>
                           </div>
                       </div>

                       <div>
                           <table>
                               <tr>
                                 <th colspan="4">Dano</th>
                               </tr>
                               <tr>
                                 <th>Distância\Área</th>
                                 <th>Cabeça</th>
                                 <th>Corpo</th>
                                 <th>Perna</th>
                               </tr>
                               <tr>
                                 <th>Curta Distância</th>
                                 <%-- Dados do banco de dados --%>
                                 <%
                                   String curtaCabeca = "10";
                                   String curtaCorpo = "5";
                                   String curtaPerna = "3";
                               %>
                                   <td><%= curtaCabeca %></td>
                                   <td><%= curtaCorpo %></td>
                                   <td><%= curtaPerna %></td>
                               </tr>
                                   <tr>
                                     <th>Média Distância</th>
                                     <%-- Dados do banco de dados --%>
                                       <%
                                          String mediaCabeca = "8";
                                          String mediaCorpo = "4";
                                          String mediaPerna = "2";
                                          %>
                                         <td><%= mediaCabeca %></td>
                                         <td><%= mediaCorpo %></td>
                                         <td><%= mediaPerna %></td>
                                         </tr>
                                       <tr>
                                         <th>Longa Distância</th>
                                         <%-- Dados do banco de dados --%>
                                           <%
                                              String longaCabeca = "6";
                                              String longaCorpo = "3";
                                              String longaPerna = "1";
                                              %>
                                             <td><%= longaCabeca %></td>
                                             <td><%= longaCorpo %></td>
                                             <td><%= longaPerna %></td>
                                             </tr>
                           </table>
                       </div>
                   </div>
               </div>
            </div>
        </c:forEach>
    </div>


    </div>
    <h1 class="subtitle">FUZIL</h1>
    <div class="container">
        <c:forEach var = "fuz" items="${fuzis}">
            <div class="box" onclick="openOverlay(3)">
                <img class="images" src=${fuz.path}>
                <h1 class="name">${fuz.name}</h1>
            </div>
            <div class="overlay" id="myOverlay3">
               <div class="overlay-item">
                   <div class="overlay-coluna-1">
                       <div class="coluna-1-cima">
                           <h1 class="overlay-name">${fuz.name}</h1>
                       </div>
                       <div class="coluna-1-meio">
                           <img class="image-overlay" src=${fuz.path}>
                       </div>
                       <div class="coluna-1-baixo">
                           <div class="overlay-div-tipo">
                               <h3 class="overlay-tipo">Tipo: ${fuz.type}</h3>
                               <div class="overlay-creds">
                                   <img class="img-creds" src="/user/weapons/Images/Creds.png" alt="">
                                   <h4 class="creds">Créditos: ${fuz.creds}</h4>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="overlay-coluna-2">
                       <div class="div-botao-voltar">
                           <img class="botao-voltar" onclick="closeOverlay(3)" src="/user/weapons/Images/Botao-voltar.png">
                       </div>
                       <div class="infos-armas">
                           <div class="div-pente">
                               <div class="div-img-weapon">
                                   <img class="img-pente" src="/user/weapons/Images/Magazine.png" alt="">
                               </div>
                               <h3 class="nome-pente">Munição por Pente: </h3>
                               <h4 class="qtd-pente">${fuz.magazine}</h4>
                           </div>
                           <div class="div-reserve">
                               <div class="div-img-weapon">
                                   <img class="img-reserve" src="/user/weapons/Images/Reserve.png  " alt="">
                               </div>
                               <h3 class="nome-reserve">Munição Total:</h3>
                               <h4 class="qtd-reserve">${fuz.reserve}</h4>
                           </div>
                           <div class="div-penetracao">
                               <div class="div-img-weapon">
                                   <img class="img-penetracao" src="/user/weapons/Images/wallpenetration.png" alt="">
                               </div>
                               <h3 class="nome-penetracao">Penetração de Parede:</h3>
                               <h4 class="qtd-penetracao">${fuz.wallPenetration}</h4>
                           </div>
                           <div class="div-cadencia">
                               <div class="div-img-weapon">
                                   <img class="img-cadencia" src="/user/weapons/Images/fire-rate.png" alt="">
                               </div>
                               <h3 class="nome-cadencia">Cadência de Tiros:</h3>
                               <h4 class="qtd-cadencia">${fuz.fireRateSecs}</h4>
                           </div>
                       </div>

                       <div>
                           <table>
                               <tr>
                                 <th colspan="4">Dano</th>
                               </tr>
                               <tr>
                                 <th>Distância\Área</th>
                                 <th>Cabeça</th>
                                 <th>Corpo</th>
                                 <th>Perna</th>
                               </tr>
                               <tr>
                                 <th>Curta Distância</th>
                                 <%-- Dados do banco de dados --%>
                                 <%
                                   String curtaCabeca = "10";
                                   String curtaCorpo = "5";
                                   String curtaPerna = "3";
                               %>
                                   <td><%= curtaCabeca %></td>
                                   <td><%= curtaCorpo %></td>
                                   <td><%= curtaPerna %></td>
                               </tr>
                                   <tr>
                                     <th>Média Distância</th>
                                     <%-- Dados do banco de dados --%>
                                       <%
                                          String mediaCabeca = "8";
                                          String mediaCorpo = "4";
                                          String mediaPerna = "2";
                                          %>
                                         <td><%= mediaCabeca %></td>
                                         <td><%= mediaCorpo %></td>
                                         <td><%= mediaPerna %></td>
                                         </tr>
                                       <tr>
                                         <th>Longa Distância</th>
                                         <%-- Dados do banco de dados --%>
                                           <%
                                              String longaCabeca = "6";
                                              String longaCorpo = "3";
                                              String longaPerna = "1";
                                              %>
                                             <td><%= longaCabeca %></td>
                                             <td><%= longaCorpo %></td>
                                             <td><%= longaPerna %></td>
                                             </tr>
                           </table>
                       </div>
                   </div>
               </div>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">FUZIL DE PRECISÃO</h1>
    <div class="container">
        <c:forEach var = "fuzi" items="${fuzilPrecisao}">
            <div class="box" onclick="openOverlay(4)">
                <img class="images" src=${fuzi.path}>
                <h1 class="name">${fuzi.name}</h1>
            </div>
            <div class="overlay" id="myOverlay4">
               <div class="overlay-item">
                   <div class="overlay-coluna-1">
                       <div class="coluna-1-cima">
                           <h1 class="overlay-name">${fuzi.name}</h1>
                       </div>
                       <div class="coluna-1-meio">
                           <img class="image-overlay" src=${fuzi.path}>
                       </div>
                       <div class="coluna-1-baixo">
                           <div class="overlay-div-tipo">
                               <h3 class="overlay-tipo">Tipo: ${fuzi.type}</h3>
                               <div class="overlay-creds">
                                   <img class="img-creds" src="/user/weapons/Images/Creds.png" alt="">
                                   <h4 class="creds">Créditos: ${fuzi.creds}</h4>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="overlay-coluna-2">
                       <div class="div-botao-voltar">
                           <img class="botao-voltar" onclick="closeOverlay(4)" src="/user/weapons/Images/Botao-voltar.png">
                       </div>
                       <div class="infos-armas">
                           <div class="div-pente">
                               <div class="div-img-weapon">
                                   <img class="img-pente" src="/user/weapons/Images/Magazine.png" alt="">
                               </div>
                               <h3 class="nome-pente">Munição por Pente: </h3>
                               <h4 class="qtd-pente">${fuzi.magazine}</h4>
                           </div>
                           <div class="div-reserve">
                               <div class="div-img-weapon">
                                   <img class="img-reserve" src="/user/weapons/Images/Reserve.png  " alt="">
                               </div>
                               <h3 class="nome-reserve">Munição Total:</h3>
                               <h4 class="qtd-reserve">${fuzi.reserve}</h4>
                           </div>
                           <div class="div-penetracao">
                               <div class="div-img-weapon">
                                   <img class="img-penetracao" src="/user/weapons/Images/wallpenetration.png" alt="">
                               </div>
                               <h3 class="nome-penetracao">Penetração de Parede:</h3>
                               <h4 class="qtd-penetracao">${fuzi.wallPenetration}</h4>
                           </div>
                           <div class="div-cadencia">
                               <div class="div-img-weapon">
                                   <img class="img-cadencia" src="/user/weapons/Images/fire-rate.png" alt="">
                               </div>
                               <h3 class="nome-cadencia">Cadência de Tiros:</h3>
                               <h4 class="qtd-cadencia">${fuzi.fireRateSecs}</h4>
                           </div>
                       </div>

                       <div>
                           <table>
                               <tr>
                                 <th colspan="4">Dano</th>
                               </tr>
                               <tr>
                                 <th>Distância\Área</th>
                                 <th>Cabeça</th>
                                 <th>Corpo</th>
                                 <th>Perna</th>
                               </tr>
                               <tr>
                                 <th>Curta Distância</th>
                                 <%-- Dados do banco de dados --%>
                                 <%
                                   String curtaCabeca = "10";
                                   String curtaCorpo = "5";
                                   String curtaPerna = "3";
                               %>
                                   <td><%= curtaCabeca %></td>
                                   <td><%= curtaCorpo %></td>
                                   <td><%= curtaPerna %></td>
                               </tr>
                                   <tr>
                                     <th>Média Distância</th>
                                     <%-- Dados do banco de dados --%>
                                       <%
                                          String mediaCabeca = "8";
                                          String mediaCorpo = "4";
                                          String mediaPerna = "2";
                                          %>
                                         <td><%= mediaCabeca %></td>
                                         <td><%= mediaCorpo %></td>
                                         <td><%= mediaPerna %></td>
                                         </tr>
                                       <tr>
                                         <th>Longa Distância</th>
                                         <%-- Dados do banco de dados --%>
                                           <%
                                              String longaCabeca = "6";
                                              String longaCorpo = "3";
                                              String longaPerna = "1";
                                              %>
                                             <td><%= longaCabeca %></td>
                                             <td><%= longaCorpo %></td>
                                             <td><%= longaPerna %></td>
                                             </tr>
                           </table>
                       </div>
                   </div>
               </div>
            </div>
        </c:forEach>
    </div>

    <h1 class="subtitle">METRALHADORA</h1>
    <div class="container">
        <c:forEach var = "metralhadora" items="${metralhadora}">
            <div class="box" onclick="openOverlay(5)">
                <img class="images" src=${metralhadora.path}>
                <h1 class="name">${metralhadora.name}</h1>
            </div>
            <div class="overlay" id="myOverlay5">
               <div class="overlay-item">
                   <div class="overlay-coluna-1">
                       <div class="coluna-1-cima">
                           <h1 class="overlay-name">${metralhadora.name}</h1>
                       </div>
                       <div class="coluna-1-meio">
                           <img class="image-overlay" src=${metralhadora.path}>
                       </div>
                       <div class="coluna-1-baixo">
                           <div class="overlay-div-tipo">
                               <h3 class="overlay-tipo">Tipo: ${metralhadora.type}</h3>
                               <div class="overlay-creds">
                                   <img class="img-creds" src="/user/weapons/Images/Creds.png" alt="">
                                   <h4 class="creds">Créditos: ${metralhadora.creds}</h4>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="overlay-coluna-2">
                       <div class="div-botao-voltar">
                           <img class="botao-voltar" onclick="closeOverlay(5)" src="/user/weapons/Images/Botao-voltar.png">
                       </div>
                       <div class="infos-armas">
                           <div class="div-pente">
                               <div class="div-img-weapon">
                                   <img class="img-pente" src="/user/weapons/Images/Magazine.png" alt="">
                               </div>
                               <h3 class="nome-pente">Munição por Pente: </h3>
                               <h4 class="qtd-pente">${metralhadora.magazine}</h4>
                           </div>
                           <div class="div-reserve">
                               <div class="div-img-weapon">
                                   <img class="img-reserve" src="/user/weapons/Images/Reserve.png  " alt="">
                               </div>
                               <h3 class="nome-reserve">Munição Total:</h3>
                               <h4 class="qtd-reserve">${metralhadora.reserve}</h4>
                           </div>
                           <div class="div-penetracao">
                               <div class="div-img-weapon">
                                   <img class="img-penetracao" src="/user/weapons/Images/wallpenetration.png" alt="">
                               </div>
                               <h3 class="nome-penetracao">Penetração de Parede:</h3>
                               <h4 class="qtd-penetracao">${metralhadora.wallPenetration}</h4>
                           </div>
                           <div class="div-cadencia">
                               <div class="div-img-weapon">
                                   <img class="img-cadencia" src="/user/weapons/Images/fire-rate.png" alt="">
                               </div>
                               <h3 class="nome-cadencia">Cadência de Tiros:</h3>
                               <h4 class="qtd-cadencia">${metralhadora.fireRateSecs}</h4>
                           </div>

                       <div>
                           <table>
                               <tr>
                                 <th colspan="4">Dano</th>
                               </tr>
                               <tr>
                                 <th>Distância\Área</th>
                                 <th>Cabeça</th>
                                 <th>Corpo</th>
                                 <th>Perna</th>
                               </tr>
                               <tr>
                                 <th>Curta Distância</th>
                                 <%-- Dados do banco de dados --%>
                                 <%
                                   String curtaCabeca = "10";
                                   String curtaCorpo = "5";
                                   String curtaPerna = "3";
                               %>
                                   <td><%= curtaCabeca %></td>
                                   <td><%= curtaCorpo %></td>
                                   <td><%= curtaPerna %></td>
                               </tr>
                                   <tr>
                                     <th>Média Distância</th>
                                     <%-- Dados do banco de dados --%>
                                       <%
                                          String mediaCabeca = "8";
                                          String mediaCorpo = "4";
                                          String mediaPerna = "2";
                                          %>
                                         <td><%= mediaCabeca %></td>
                                         <td><%= mediaCorpo %></td>
                                         <td><%= mediaPerna %></td>
                                         </tr>
                                       <tr>
                                         <th>Longa Distância</th>
                                         <%-- Dados do banco de dados --%>
                                           <%
                                              String longaCabeca = "6";
                                              String longaCorpo = "3";
                                              String longaPerna = "1";
                                              %>
                                             <td><%= longaCabeca %></td>
                                             <td><%= longaCorpo %></td>
                                             <td><%= longaPerna %></td>
                                             </tr>
                           </table>
                       </div>
                   </div>
               </div>
            </div>
        </c:forEach>
    </div>
    <script src="user/agents/script.js"></script>
</body>
</html>