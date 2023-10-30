<?php
session_start();
$mysqli = new mysqli('localhost', 'root', '', 'site');

if ($mysqli->connect_error) {
    die('Помилка підключення до бази даних: ' . $mysqli->connect_error);
}
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $enteredName = $_POST["nameAdmin"];
    $enteredPassword = $_POST["pass"];
    $query = "SELECT * FROM administrators WHERE username = ?";
    $stmt = $mysqli->prepare($query);
    $stmt->bind_param("s", $enteredName);

    if ($stmt->execute()) {
        $result = $stmt->get_result();
        if ($result->num_rows === 1) {
            $row = $result->fetch_assoc();
            $adminPassword = $row['password'];
            if ($enteredPassword == $adminPassword) {
                $_SESSION['imAdmin'] = true;
                header("Location: admin/AdminPanel.php");
                exit(); 
            } else {
                echo "Неправильний пароль.";
            }
        } else {
            header("Location: config.php");
            exit(); 
        }
    } else {
        echo "Помилка запиту до бази даних: " . $stmt->error;
    }

    $stmt->close();
}

$mysqli->close();
?>
