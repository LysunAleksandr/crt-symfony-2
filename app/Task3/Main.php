<?php
$host = getenv('DB_CONTAINER');
$port = getenv('DB_PORT');
$db = getenv('POSTGRES_DB');
$username = getenv('POSTGRES_USER');
$password = getenv('POSTGRES_PASSWORD');

# Создаем соединение с базой PostgreSQL с указанными выше параметрами
$dbconn = pg_connect("host=$host port=$port dbname=$db user=$username password=$password");

if (!$dbconn) {
    die('Could not connect <br />\n');
} else {
    echo("Success connection <br />\n");
}

$res = pg_query($dbconn, "select table_name, column_name from information_schema.columns where table_schema='public' order by table_name ");
if (!$res) {
    echo "Произошла ошибка.\n";
}
# Выведем список таблиц и столбцов в каждой таблице

while ($row = pg_fetch_row($res)) {
    echo "tableName: $row[0] ColumnName: $row[1]";
    echo "<br />\n";
}

$arrOfQuery = [
            "SELECT * FROM countries;",
            "SELECT * FROM cities;",
            "SELECT * FROM animal_classes;",
            "SELECT * FROM animals;"
        ];

foreach ($arrOfQuery as $element) {
    $res = pg_query($dbconn, $element);
    while ($row = pg_fetch_row($res)) {
        echo "<br/>";
        for ($i = 0; $i < count($row); $i++) {
            echo pg_field_name($res, $i) . "\t" . $row[$i] . "    ";
        }
        echo "<br/>";
    }
    echo "<br/><----------------------><br/>";


}