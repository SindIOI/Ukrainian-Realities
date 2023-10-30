<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/admin.css">
    <title>Login Admin</title>
</head>

<body>
    <center>
        <div class="adminLogin">
            <form action="/POST/LOGINADMINISTRATOR.php" method="POST">
                <p><label for="nameAdmin">ім'я:</label></p>
                <p><input type="text" name="nameAdmin" id="nameAdmin" required></p>
                <p><label for="pass">Пароль:</label></p>
                <p><input type="password" name="pass" id="pass" required></p>
                <p><input type="submit" value="Увійти"></p>
            </form>
        </div>
    </center>
</body>

</html>