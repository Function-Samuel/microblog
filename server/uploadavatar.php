<?php
$user_name = $_GET['username'];
$target_path = "/var/www/html/microblog/pic/avatar/";
$target_path = $target_path . $user_name . ".png";
if (move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
    echo "The file " . basename($_FILES['uploadedfile']['name']) . " has been uploaded";
} else {
    echo "There was an error uploading the file, please try again!" . $_FILES['uploadedfile']['error'];
}