<?php
$pic_id = $_GET['pic_id'];
$target_path = "/var/www/html/microblog/pic/blogpic/" . $pic_id . ".png";
if (move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path)) {
    echo "The file " . basename($_FILES['uploadedfile']['name']) . " has been uploaded";
} else {
    echo "There was an error uploading the file, please try again!" . $_FILES['uploadedfile']['error'];
}