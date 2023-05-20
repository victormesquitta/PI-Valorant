<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trocar senha</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="./images/valorant-transparente.png" type="image/x-icon">
</head>
<body>
    <div id="main-box">
        <div id="box-logar">
            <h1 class="box-logar-item">Já tem uma conta ?</h1>
            <p class="box-logar-item">Acesse agora mesmo utilizando suas credenciais!</p>
            <button class="button box-logar-item" id="button-entrar">ENTRAR</button>
        </div>
        <div id="div-registrar-box">
            <div id="registrar-box">
                <div class="box-item" id="item-title">
                    <h1 class="title">Trocar senha</h1>
                    <!-- <p class="title">Preencha com seus dados</p> -->
                </div>
                <form action="./dashboard.html" class="box-item" id="item-form">
                    <div class="item-form-data">
                        <label for="name">Nome completo</label>
                        <input type="name" name="" id="" placeholder="Digite seu nome completo" class="input-text" required>
                    </div>
                    <div class="item-form-data">
                        <label for="email">E-mail</label>
                        <input type="email" name="" id="" placeholder="Digite seu e-mail" class="input-text" required>
                    </div>
                    <div class="item-form-data">
                        <label for="password">Senha</label>
                        <input type="password" name="" id="" placeholder="Digite sua senha" class="input-text" required>
                    </div>
                    <div class="item-form-data">
                        <label for="confirm-password">Confirmar senha</label>
                        <input type="password" name="" id="" placeholder="Confirme sua senha" class="input-text" required>
                    </div>
                    <div id="div-button-cadastrar">
                        <input type="submit" id="button-cadastrar" class="button" value = "CADASTRAR"> 
                    </div> 
                </form>
            </div> 
        </div>
    </div> 
</body>
</html>