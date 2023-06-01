<?php
// include Database class
require 'classes/Database.php';

// Create new object of Database class for database connection
$db = new Database;

// DELETE part of CRUD
if ($_POST['delete']){
    $delete_id = $_POST['delete_id'];

    // query for deleting the post from posts table
    $db->query('DELETE FROM posts WHERE id = :id');
    $db->bind(':id', $delete_id);
    $db->execute();

    // After deleting the post goto home page
    header('location: index.php');
}
