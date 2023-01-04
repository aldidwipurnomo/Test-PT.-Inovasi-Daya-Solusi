<?php
$connect = mysqli_connect("localhost", "root", "", "dbtesids");

$doc = file_get_contents("viewData.json");
$doc = json_decode($doc);
$row = $doc->data;

//Input Customer Table
foreach($row as $r){
    $sqlcustomer= "INSERT INTO Customer(id,customerName) VALUES('".$r->id."','".$r->customerName."')";
    mysqli_query($connect, $sqlcustomer);
    echo "Successfully";
}

//Input Product Table
foreach($row as $r){
    $sqlproduct= "INSERT INTO Product(productID,productName,amount) VALUES('".$r->productID."','".$r->productName."','".$r->amount."')";
    mysqli_query($connect, $sqlproduct);
    echo "Successfully";
}

//Input Transaction
foreach($row as $r){
    if(strcmp($r->status,$doc->status[0]->id)==0){
        $status = $doc->status[0]->name;
    }
    else{
        $status= $doc->status[1]->name;
    }
    $sqlTransaction= "INSERT INTO transaction (id,productID,status,transactionDate,createBy,createOn) 
    VALUES('".$r->id."','".$r->productID."','".$status."','".$r->transactionDate."','".$r->createBy."','".$r->createOn."')";
    mysqli_query($connect, $sqlTransaction);
    echo "Successfully";
}

?>