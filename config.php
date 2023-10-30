<!DOCTYPE html>
<html lang="en">
<?
function heads()
{
?>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="/css/lastnews.css">
        <link rel="stylesheet" href="/css/style.css">
        <link rel="stylesheet" href="/css/footer.css">
        <link rel="shortcut icon" href="/img/icon.ico" type="image/x-icon">
        <title>Українські реалії</title>
    </head>
    <style>
        .GeneralNew a,
        .lastsNews a {
            text-decoration: none;
            color: white;
        }

        .news-container a,
        .news-container h2,
        .news-container .news-date,
        .news-container .news-content {
            color: black;
            text-decoration: none;
        }

        .footer {
            background-color: #6e1607;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
    </style>
<?
}
?>

<body>
    <?
    function bar()
    {
    ?>
        <div class="bar">
            <div class="twoBar">
                <a href="#">ПРАВДА, МАЄ БУТИ НАШОЮ ЗБРОЄЮ.</a>
            </div>
            <div class="oneBar">
                <a href="/index.php">
                    <h1>Українські Реалії</h1>
                </a>
            </div>
            <div class="twoBar">
                <b>
                    <a href="index.php">ГОЛОВНА</a>
                    &nbsp;
                    &nbsp;
                    <a href="allnews.php">НОВИНИ</a>
                    &nbsp;
                    &nbsp;
                    <a href="aboutus.php">ПРО НАС</a>
                    &nbsp;
                    &nbsp;
                    <a href="callback.php">ТЕХ. ПІДТРИМКА</a>
                </b>
            </div>
        </div>
        </br>
        <?
    }
    function lastNews()
    {
        $db = new mysqli('localhost', 'root', '', 'site');

        if ($db->connect_error) {
            die('Помилка підключення до бази даних: ' . $db->connect_error);
        }


        $latestNewsQuery = "SELECT * FROM news ORDER BY date DESC LIMIT 1";
        $latestNewsResult = $db->query($latestNewsQuery);

        $query = "SELECT * FROM news ORDER BY date DESC LIMIT 3";
        $result = $db->query($query);

        if ($latestNewsResult && $result) {
        ?>
            <div class="lastnews">
                <div class="GeneralNew">
                    <?php
                    if ($row = $latestNewsResult->fetch_assoc()) {
                        echo '<a href="watch.php?id=' . $row['id'] . '">';
                    ?>
                        <h2><?php echo $row['title']; ?></h2>
                        <p><?php echo $row['shortdescripion']; ?></p>
                        <p><?php echo $row['date']; ?></p>
                        </a>
                    <?php
                    }
                    ?>
                </div>
                <div class="lastsNews">
                    <?php
                    while ($row = $result->fetch_assoc()) {
                        echo '<a href="watch.php?id=' . $row['id'] . '">';
                    ?>
                        <div class="news_item">
                            <h2><?php echo $row['title']; ?></h2>
                            <p><?php echo $row['date']; ?></p>
                            <hr>
                        </div>
                        </a>
                    <?php
                    }
                    ?>
                </div>
            </div>
        <?php

            $latestNewsResult->free();
            $result->free();
        } else {
            echo 'Помилка запиту до бази даних: ' . $db->error;
        }

        $db->close();
    }



    function news()
    {
        ?>
        <div class="news-container">
            <?php
            $db = new mysqli('localhost', 'root', '', 'site');
            if ($db->connect_error) {
                die('Error228: ' . $db->connect_error);
            }
            $sql = "SELECT * FROM news ORDER BY date DESC";
            $result = $db->query($sql);
            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<a href="watch.php?id=' . $row['id'] . '">';
                    echo '<div class="news-item">';
                    echo '<div class="news-title"><h2><b>' . $row['title'] . '</b></h2></div>';
                    echo '<div class="news-date">Дата: ' . $row['date'] . '</div>';
                    echo '<div class="news-content">' . $row['shortdescripion'] . '</div>';
                    echo '</a>';
                    echo '</div>';
                    echo '<hr>';
                    echo '&nbsp;';
                }
            } else {
                echo "Новини відсутні.";
            }

            $db->close();
            ?>
        <?
    }

    function foot()
    {
        ?>
            <div class="footer">
                <p>
                <h3>Українські реалії</h3>
                </p>
            </div>
        <?
    }
    function feedback()
    {
        ?>
            <form action="POST/FEEDBACK_POST.php" method="POST">
                <center>
                    <label for="name">Ваше ім'я:</label></br>
                    <input type="text" id="name" name="name" required></br>

                    <label for="email">Ваша електронна пошта:</label></br>
                    <input type="email" id="email" name="email" required></br>

                    <label for="message">Повідомлення:</label></br>
                    <textarea id="message" name="message" rows="4" required></textarea></br>

                    <input type="submit" value="Відправити">
                </center>
            </form>
        <?
    }
        ?>
</body>

</html>