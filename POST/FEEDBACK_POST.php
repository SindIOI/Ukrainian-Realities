<?php
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $message = $_POST["message"];

    $db = new mysqli('localhost', 'root', '', 'site');
    if ($db->connect_error) {
        die('Помилка підключення до бази даних: ' . $db->connect_error);
    }

    $sql = "INSERT INTO feedback (name, email, message) VALUES (?, ?, ?)";
    $stmt = $db->prepare($sql);
    $stmt->bind_param("sss", $name, $email, $message);

    if ($stmt->execute()) {
        thx();
        header("Location: index.php");
        exit();
    } else {
        echo "Помилка збереження даних: " . $stmt->error;
    }

    $stmt->close();
    $db->close();
} else {
    header("Location: index.php");
}
function thx(){


?>
    <script>
        alert('❤Дякую за вашу допомогу❤');
    </script>
<?
}
?>