<?php
    include('db.php');
    // $query=mysqli_query($con,"SELECT id,name FROM catagories ");
    if(isset($_POST['addsvgs'])){
        $svgs=$_POST['svgs'];
        $catid=$_POST['svgcat'];
        $insertquery = mysqli_query($con,"INSERT INTO logos(cid,svgs) VALUES ('$catid','$svgs') ");
        if($insertquery){
            echo 'Logo has been added successfully.';
        }
        else{
            echo 'error';
        }
    }
?>