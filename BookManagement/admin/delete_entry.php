<?php
session_start();
include ('../includes/config.php');
if (strlen($_SESSION['alogin']) == 0) {
    ?>
<script type="text/javascript">
    
    alert('hii up');
    </script>
<?php

    header('location:index.php');
} else {

    $id = $_POST['id'];

    // $delete = "DELETE FROM registration WHERE Email='" . $id . "'";
    // $result = mysqli_query($db, $delete) or die(mysql_error());
    $isActive = 0;
    $updateQuery = "update tblusers set isActive=:isActive where id=:id";
    $changetblUser = $dbh->prepare($updateQuery);
    $changetblUser->bindParam(':id', $id, PDO::PARAM_INT);
    $changetblUser->bindParam(':isActive', $isActive, PDO::PARAM_INT);
    if ($changetblUser->execute()) {
        echo 'User deleted successfully';
    } else {
        echo 'Error while deleteing user';
    }
}

?>