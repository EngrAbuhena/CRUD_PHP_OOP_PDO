<?php
// include Database class
require 'classes/Database.php';

// Create new object of Database class for database connection
$db = new Database;

// READ part of CRUD
// query for display all data from the table posts
$db->query('SELECT * FROM posts');
// Executing the query
$rows = $db->resultset();

?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>PDO OOP PHP</title>
</head>
<body>

<a href="create.php">Create New Post</a><br>
<a href="update.php">Update Post</a><br>

<h1>Posts</h1>
<?php foreach ($rows as $row) : ?>
<div>
    <h3><?=$row['title'] ?></h3>
    <p><?=$row['body'] ?></p>
    <h6><?=$row['created_at'] ?></h6>
    <p>
    <form action="delete.php" method="post">
        <input type="hidden" name="delete_id" value="<?=$row['id']?>">
        <input type="submit" name="delete" value="DELETE POST">
    </form>
    </p>
</div>
<?php endforeach; ?>
</body>
</html>
