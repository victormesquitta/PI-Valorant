<!DOCTYPE html>
<html lang="pt-br">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="/adm/login/login.css">
    <link rel="shortcut icon" href="images/valorant-transparent.png" type="image/x-icon"></head>
<body>
    <div id="main-box"> 
        <div class="box-item" id="item-title">
            <h1 class="title">Já possui uma conta?</h1>
            <p class="title">Entre com as suas credenciais abaixo!</p>
        </div>
        <form action="/login" class="box-item" id="item-form" method="post">
            <span>${requestScope.message}</span>
            <div class="item-form-data">
                <label for="username">Usuário</label>
                <input type="text" name="username" id="username" placeholder="valorant_pi" class="input-text" required>
            </div>
            <div class="item-form-data">
                <label for="password">Senha</label>
                <input type="password" name="password" id="password" placeholder="monoyoru1234" class="input-text" required>
            </div>

            <div id="div-button-entrar">
                <input type="submit" id="button-entrar" class="button" value = "ENTRAR"> 
            </div>

        </form>
            <div class="box-item" id="item-cadastro">
            <a href="/cadastro " id="ancora-cadastro"> <button id="cadastrar-se" class="button button-cadastro">Cadastrar-se</button></a>
        
    </div>
</body>
</html>