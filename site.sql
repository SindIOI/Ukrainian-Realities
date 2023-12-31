-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Жов 30 2023 р., 22:22
-- Версія сервера: 8.0.30
-- Версія PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `site`
--

-- --------------------------------------------------------

--
-- Структура таблиці `administrators`
--

CREATE TABLE `administrators` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `administrators`
--

INSERT INTO `administrators` (`id`, `username`, `password`) VALUES
(1, 'Sind', '123123');

-- --------------------------------------------------------

--
-- Структура таблиці `feedback`
--

CREATE TABLE `feedback` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `message`, `created_at`) VALUES
(1, 'Ілля', 'khomykillay@gmail.com', 'ДУЖЕ КЛАСНо', '2023-10-29 12:30:31'),
(2, '123', 'khomykillay@gmail.com', '13123123', '2023-10-29 12:35:35');

-- --------------------------------------------------------

--
-- Структура таблиці `news`
--

CREATE TABLE `news` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `content` text NOT NULL,
  `shortdescripion` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп даних таблиці `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `content`, `shortdescripion`) VALUES
(5, 'Свіжий подих інформаційного простору: відкриття сайту \"Україньскі реалії\"', '2023-10-28', '<p>Україна завжди була місцем, де трапляються важливі події та зміни. Щоб українці завжди були на кроці від сучасної інформації та розуміли, що відбувається у своїй країні, було створено новий інформаційний ресурс - сайт \"Україньскі реалії\". Цей сайт обіцяє надати глибокий аналіз та об\'єктивну інформацію про найважливіші події та тенденції в Україні.</p>\r\n    \r\n    <p>Завдяки відкриттю \"Україньскі реалії\", українці та всі зацікавлені особи отримають можливість дізнаватися про події у країні з перших вуст та аналізувати їх в контексті сучасних реалій. Запуск цього проекту - це крок до покращення інформаційного простору України та розширення можливостей для глибокого розуміння важливих питань.</p>\r\n    \r\n    <h3>Що робить \"Україньскі реалії\" особливими?</h3>\r\n    <ol>\r\n        <li><strong>Об\'єктивність та надійність:</strong> Редакція сайту ретельно перевіряє інформацію перед тим, як публікувати її на сайті. Це гарантує, що відвідувачі сайту завжди отримують достовірну інформацію.</li>\r\n        <li><strong>Глибокий аналіз:</strong> Спеціалісти та журналісти \"Україньскі реалії\" пропонують глибокий аналіз найважливіших тем і подій, допомагаючи читачам розуміти сутність питань.</li>\r\n        <li><strong>Різноманітність матеріалів:</strong> Сайт пропонує різноманітні матеріали - від новин та аналітики до інтерв\'ю та коментарів, що задовольнять потреби різних категорій читачів.</li>\r\n        <li><strong>Актуальність:</strong> \"Україньскі реалії\" намагаються завжди бути на кроці з подіями та представляти актуальну інформацію.</li>\r\n        <li><strong>Відкритість до співпраці:</strong> Сайт готовий співпрацювати з громадськими організаціями, експертами, та іншими зацікавленими сторонами для обговорення важливих питань.</li>\r\n    </ol>\r\n    \r\n    <p>Запуск сайту \"Україньскі реалії\" є важливою подією для інформаційного простору України. Він допоможе громадянам країни бути краще обізнаними та активніше впливати на суспільні процеси. Нехай цей проект допоможе зробити інформацію доступною та зрозумілою для кожного українця.</p>\r\n    \r\n    <p>Слідкуйте за новинами та аналітикою на сайті \"Україньскі реалії\" та беріть активну участь у формуванні майбутнього України разом із нами!</p>', 'Новий проект пропонує глибокий аналіз та об\'єктивне висвітлення подій у сучасній Україні'),
(9, 'Майбутнє України', '2023-10-30', '<p>Майбутнє України є надзвичайно обіцяючим, але воно залежить від багатьох факторів і зусиль як самого українського народу, так і підтримки з боку міжнародного співтовариства.</p>\r\n\r\n<p>Демократія та права людини: Україна, як незалежна країна, зробила великі кроки вперед у впровадженні демократії та захисту прав людини. У майбутньому цей шлях повинен продовжуватися, забезпечуючи свободу слова, незалежність судової системи і додержання прав громадян.</p>\r\n\r\n<p>Економічний розвиток: Україна має великий потенціал для розвитку своєї економіки. Шлях до майбутнього включає в себе подальший розвиток інфраструктури, стимулювання інновацій, підтримку малого та середнього бізнесу, а також розвиток сільського господарства та виробництва високоякісних товарів і послуг для внутрішнього та зовнішнього ринків.</p>\r\n\r\n<p>Міжнародні стосунки: Україна має потенціал стати більш активним учасником міжнародної спільноти. Підтримка і партнерство з іншими країнами сприяють зміцненню стосунків, розвитку торгівлі та спільним прагненням до миру та стабільності.</p>\r\n\r\n<p>Мовна та культурна різноманітність: Україна відзначається своєю багатою культурною спадщиною та мовною різноманітністю. В майбутньому це може стати джерелом позитивного впливу, привертаючи туристів та інвесторів, а також сприяючи культурному обміну та співпраці.</p>\r\n\r\n<p>Соціальна справедливість: Україна повинна продовжувати робити кроки у напрямку соціальної справедливості, забезпечуючи рівні можливості для всіх громадян. Це включає в себе поліпшення системи охорони здоров\'я, освіти та соціального захисту.</p>\r\n\r\n<p>Майбутнє України залежить від злагоджених зусиль громадян, влади та міжнародної підтримки. Попри виклики і труднощі, які можуть виникнути на шляху до кращого майбутнього, український народ має потенціал досягти успіху і стати сильною, незалежною країною в самому серці Європи.</p>\r\n<p>Нажаль це не можливо через корупцію</p>\r\n', 'Майбутнє України: демократія, розвиток, міжнародність, культура, справедливість і корупція.');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `administrators`
--
ALTER TABLE `administrators`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `administrators`
--
ALTER TABLE `administrators`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `news`
--
ALTER TABLE `news`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
