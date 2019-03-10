<?php
session_start();
include ('../includes/config.php');
if (strlen($_SESSION['alogin']) == 0) {
    header('location:index.php');
} else {

    $id = $_POST['id'];
    $type = $_POST['type'];

    $isActive = 0;
    if ($id != null && $type != null) {
        if ($type == 'user') {
            $updateQuery = "update tblusers set isActive=:isActive where id=:id";
        } else if ($type == 'book') {
            $updateQuery = "update tblbooks set isActive=:isActive where BookId=:id";
        }
        $changetblUser = $dbh->prepare($updateQuery);
        $changetblUser->bindParam(':id', $id, PDO::PARAM_INT);
        $changetblUser->bindParam(':isActive', $isActive, PDO::PARAM_INT);
        if ($changetblUser->execute()) {
            echo 'Data deleted successfully';
        } else {
            echo 'Error while deleteing data';
        }
    } else {
        echo 'Error contact to administrator';
    }
}

?>