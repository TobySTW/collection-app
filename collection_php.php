<h1>OverHyped Gaming</h1>
<form>
    <pre>
        <h3>Title</h3>
        <input type="text" name="form_title" placeholder="new title" maxlength="20">
    </pre>
    <pre>
        <h3>Date</h3>
        <input type="date" name="form_release" placeholder="date">
    </pre>
    <pre>
        <h3>Description</h3>
        <input type="text" name="form_reason" placeholder="description" maxlength="600">
    </pre>
    <input type="submit">
</form>

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