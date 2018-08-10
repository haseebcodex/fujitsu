<?php
include('db.php');
if(isset($_POST['selection'])){
    $data = array();
    $dataid = array();
    $masterdata = array();

    $query = mysqli_query($con,"SELECT * FROM catagories ");
    
    if($query->num_rows > 0){
        /*$userData = $query->fetch_assoc();*/
       while($row=mysqli_fetch_assoc($query)){
            $data[]=$row['name'];
            $dataid[]=$row['id'];
            $masterdata[0] = $dataid;
            $masterdata[1] = $data;
        }
    }else{
        $data[] = 'No catagories found';
    }
    
    //returns data as JSON format
    echo json_encode($masterdata);
}
if(isset($_POST['catname'])){

if(!empty($_POST['catname'])){
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
}else{
$data = 'No related svgs found to this catagorie';
}
}
//catagorie not exist
else{
$query = mysqli_query($con,"SELECT name FROM missing_catagories WHERE name = '$catname'");
if(!$query->num_rows > 0){
//catogarie not exist
$query= mysqli_query($con,"INSERT INTO missing_catagories(name) VALUES ('$catname') ");
}
$query= mysqli_query($con,"SELECT svgs FROM logos");
if($query->num_rows > 0){
while($row=mysqli_fetch_assoc($query)){
$data[]=$row['svgs'];}
}
}
echo json_encode($data);
}
else{
    $data[]="enter catagorie";
    echo json_encode($data);
}
 }    
?>