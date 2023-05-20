<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style.css">
    <link rel="shortcut icon" href="images/valorant-transparente.png" type="image/x-icon">
</head>
<body>
    <div id="main-box">
        <div class="box-item" id="item-title">
            <h1 class="title">Já possui uma conta?</h1>
            <p class="title">Entre com as suas credenciais abaixo!</p>
        </div>
        <form action="./dashboard.html" class="box-item" id="item-form">
            <div class="item-form-data">
                <label for="email">E-mail</label>
                <input type="email" name="" id="" placeholder="valorant_pi@gmail.com" class="input-text" required>
            </div>
            <div class="item-form-data">
                <label for="password">Senha</label>
                <input type="password" name="" id="" placeholder="monoyoru1234" class="input-text" required>
            </div>
            <div id="div-button-entrar">
                <input type="submit" id="button-entrar" class="button" value = "ENTRAR"> 
            </div> 
        </form>
        <div class="box-item" id="item-cadastro">
            <button id="cadastrar-se" class="button button-cadastro">Cadastrar-se</button>
            <button id="esqueceu-a-senha" class="button button-cadastro">Trocar Senha</button>
        </div>
        
    </div>
</body>
</html>