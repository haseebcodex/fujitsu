<?php
include('db.php');
$data = array();

//get user data from the database
$catname=$_POST['catname'];
$query = mysqli_query($con,"SELECT id FROM catagories WHERE name = '$catname'");

if($query->num_rows > 0){
$row=mysqli_fetch_assoc($query);
$catid=$row['id'];
$query= mysqli_query($con,"SELECT svgs FROM logos WHERE cid = '$catid'");
if($query->num_rows > 0){

while($row=mysqli_fetch_assoc($query)){
$data[]=$row['svgs'];
}
/* $userData = mysqli_fetch_all($query,MYSQLI_NUM);*/
/*$data['status'] = 'ok';*/
}else{
$data = 'No related svgs found to this catagorie';
}
}else{
$query = mysqli_query($con,"SELECT name FROM missing_catagories WHERE name = '$catname'");
if($query->num_rows > 0){
$query= mysqli_query($con,"SELECT svgs FROM logos");
if($query->num_rows > 0){
while($row=mysqli_fetch_assoc($query)){
$data[]=$row['svgs'];
}
}
}else{
$query= mysqli_query($con,"INSERT INTO missing_catagories(name) VALUES ('$catname') ");
if($query){
$query= mysqli_query($con,"SELECT svgs FROM logos");
if($query->num_rows > 0){
while($row=mysqli_fetch_assoc($query)){
$data[]=$row['svgs'];
}
}
}
}
}

//returns data as JSON format
echo json_encode($data);
?>
