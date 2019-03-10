<?php
session_start();
include ('../includes/config.php');
if (strlen($_SESSION['alogin']) == 0) {
    header('location:index.php');
} else {

    $id = $_POST['id'];
    $status = $_POST['status'];
    if($status=='true')
    {
        $isActive=1;
    }
    else
    {
        $isActive=0;
    }

    if ($id != null && $status != null) {

        $updateQuery = "update tblusers set isStoreActive=:isStoreActive where id=:id";
        $changetblUser = $dbh->prepare($updateQuery);
        $changetblUser->bindParam(':id', $id, PDO::PARAM_INT);
        $changetblUser->bindParam(':isStoreActive', $isActive, PDO::PARAM_INT);
        if ($changetblUser->execute()) {
            echo 'Updated successfully';
        } else {
            echo 'Error while updating';
        }
    } else {
        echo 'Error contact to administrator';
    }
}

?>