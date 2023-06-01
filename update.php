<?php
// include Database class
require 'classes/Database.php';

// Create new object of Database class for database connection
$db = new Database;

// CREATE part of CRUD
// Sanitize the data coming from the form
$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
if ($post['submit']){
    $id = $post['id'];
    $title = $post['title'];
    $body = $post['body'];

    // Query for updating the post
    $db->query('UPDATE posts SET title = :title, body = :body WHERE id = :id');
    $db->bind(':title', $title);
    $db->bind(':body', $body);
    $db->bind(':id', $id);
    $db->execute();

    // After updating new post goto home page
    header('location: index.php');
}

?>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Update Post</title>
</head>
<body>

<form action="<?php $_SERVER['PHP_SELF']?>" method="post">
    <label for="title">Post ID</label><br>
    <input type="text" name="id" placeholder="Specify id"><br><br>
    <label for="title">Post Title</label><br>
    <input type="text" name="title" placeholder="Add a title..."><br><br>
    <label for="body">Post body</label><br>
    <textarea name="body" id="body" cols="30" rows="10"></textarea><br><br>
    <input type="submit" name="submit" value="UPDATE POST">
</form>

</body>
</html>