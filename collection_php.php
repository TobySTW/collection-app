<?php

// This line does nothing but create a connection
$db = new PDO('mysql:host=db; dbname=collectionDB', 'root', 'password');

// Set the fetch mode to assoc array
$db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);

// This line flags an error with the code if something isn't connecting
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// Here we prepare the query, ready to run it
$query = $db->prepare('SELECT * FROM `collection_table`;');

// We actually run the query against the DB
$query->execute();

// Returns the full array from the database
$result = $query->fetchAll();

?>

<!-- This form collects data to be uploaded to the database -->
<h1>OverHyped Gaming</h1>
<form method="post">
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

// Checks the fields have all been filled out
if (isset($_POST['form_title']) && ($_POST['form_release']) && ($_POST['form_reason'])) {

    // Assigns the forms submissions with values and trims the result removing white space
    $new_title = trim($_POST['form_title']);
    $new_release = trim($_POST['form_release']);
    $new_reason = trim($_POST['form_reason']);

    // Preparing the query to INSERT INTO the db
    $query = $db->prepare("INSERT INTO `collection_table` (`title`, `release`, `reason`) VALUES(:new_title, :new_release, :new_reason)");

    // Binding the parametres prevents SQL injections of malicious code
    $query->bindParam(':new_title', $new_title);
    $query->bindParam(':new_release', $new_release);
    $query->bindParam(':new_reason', $new_reason);

    // Executing the INSERT INTO data too the db
    $query->execute();
}

// applying a set of instructions for each row in the $result array
foreach ($result as $item) {

    // Display settings for the titles and dates on one line with the description below
    echo '<pre>';
    echo '<pre>';
    echo $item['title'] . ' ' . '(' . $item['release'] . ')';
    echo '</pre>';
    echo $item['reason'];
    echo '</pre>';
    echo '<br>';
}
?>