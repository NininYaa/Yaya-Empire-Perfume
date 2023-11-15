<?php require  "../includes/header.php"; ?>
<?php require  "../config/config.php"; ?> 
<?php 
    /* at the top of 'check.php' */
    if($_SERVER['REQUEST_METHOD']=='GET' && realpath(__FILE__) == realpath( $_SERVER['SCRIPT_FILENAME'] ) ) {
      /* 
         Up to you which header to send, some prefer 404 even if 
         the files does exist for security
      */
      header( 'HTTP/1.0 403 Forbidden', TRUE, 403 );

      /* choose the appropriate page to redirect users */
      die( header( 'location: '.APPURL.'' ));

    }

    if(!isset($_SESSION['username'])) {
      header("location: ".APPURL."");
    }


        echo "paid";

        if(empty($_POST['email']) OR empty($_POST['username']) OR empty($_POST['fname'])
        OR empty($_POST['lname'])) {
          echo "<script>alert('one or more inputs are empty');</script>";
      } else {

        $email = $_POST['email'];
        $username = $_POST['username'];
        $fname = $_POST['fname'];
        $lname = $_POST['lname'];
        $price = $_SESSION['price'];
        $user_id = $_SESSION['user_id'];

        $insert = $conn->prepare("INSERT INTO orders (email, username, fname, lname, price, user_id)
        VALUES(:email, :username, :fname, :lname, :price, :user_id)");

        $insert->execute([
          ':email' => $email,
          ':username' => $username,
          ':fname' => $fname,
          ':lname' => $lname,
          ':price' => $price,
          ':user_id' => $user_id,
        ]);

        header("location: ".APPURL."/download.php");


      }
