<?
include("config.php");
heads();
bar();


if (isset($_GET['id'])) {
    $newsId = $_GET['id'];

    
    $db = new mysqli('localhost', 'root', '', 'site');

    if ($db->connect_error) {
        die('Помилка підключення до бази даних: ' . $db->connect_error);
    }

    $query = "SELECT * FROM news WHERE id = ?";
    $stmt = $db->prepare($query);
    $stmt->bind_param("i", $newsId);

    if ($stmt->execute()) {
        $result = $stmt->get_result();
        if ($result->num_rows === 1) {
            $row = $result->fetch_assoc();
            echo '<h2>' . $row['title'] . '</h2>';
            echo '<p>Дата: ' . $row['date'] . '</p>';
            echo '<p>' . $row['content'] . '</p>';
        } else {
            echo "Новину не знайдено.";
        }
    } else {
        echo "Помилка запиту до бази даних: " . $stmt->error;
    }

    $stmt->close();
    $db->close();
} else {
    echo "Параметр 'id' відсутній у запиті.";
}
