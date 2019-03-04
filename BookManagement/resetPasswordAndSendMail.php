<?php
include ('includes/config.php');
include ('function.php');


if (isset($_POST['resetPassword'])) {

    $resetPassword = randomPassword();

    $toEmail = $_POST['email'];
    
  
    $sql = "SELECT * FROM tblusers WHERE EmailId=:email and isActive=1";
    $query = $dbh->prepare($sql);
    $query->bindParam(':email', $toEmail, PDO::PARAM_STR);
    $query->execute();
    $number_of_rows = $query->fetchColumn();

    if ($number_of_rows > 0) {
       
        $subject = 'Reset Password';
        $body = "Hello,<br><br>Your password has been reset successfully<br><br>Your new password:<b> $resetPassword<br><br></b>Thank you";

        $return = send_mail($toEmail, $subject, $body);
        
        if (! $return) {
            echo '<script type="text/javascript">';
            echo 'alert("Error while sending mail");';
            echo 'window.location.href = "forgot-password.php";';
            echo '</script>';
        } else {

            $newpassword = md5($resetPassword);
            $con = "update tblusers set Password=:newpassword where EmailId=:email";
            $chngpwd1 = $dbh->prepare($con);
            $chngpwd1->bindParam(':email', $toEmail, PDO::PARAM_STR);
            $chngpwd1->bindParam(':newpassword', $newpassword, PDO::PARAM_STR);
            $chngpwd1->execute();

            echo '<script type="text/javascript">';
            echo 'alert("Your password has been reset successfully. Please check your mail for new password");';
            echo 'window.location.href = "index.php";';
            echo '</script>';
        }
    } else {
        echo '<script type="text/javascript">';
        echo 'alert("Email does not exist or user not active");';
        echo 'window.location.href = "forgot-password.php";';
        echo '</script>';
    }
}

?>