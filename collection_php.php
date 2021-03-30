<?php
$db = new PDO('mysql:host=db; dbname=collectionDB', 'root', 'password');
$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
$query = $db->prepare('SELECT * FROM `collection_table`;');
$query->execute();
$result = $query->fetchAll();

foreach ($result as $item) {
    echo '<pre>';
    echo '<pre>';
    echo $item['title'] . ' ' . '(' . $item['release'] . ')';
    echo '</pre>';
    echo $item['reason'];
    echo '</pre>';
    echo '<br>';
}
?>