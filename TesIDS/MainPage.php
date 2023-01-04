<?php
    $doc = file_get_contents("viewdata.json");
    //echo $doc;

    $doc = json_decode($doc);
    // echo "<pre>";
    // print_r($doc);
    // echo "</pre>";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>

    <h1>View Detail Data</h1>
<!-- Mengeluarkan data dengan PHP dari dalam json-->
    <?php
        $penjualan = $doc->data;
        foreach($penjualan as $p){
            echo "Data ID : ".$p -> id."<br>";
            echo "Data Product ID : ".$p -> productID."<br>";
            echo "Data Product Name : ".$p -> productName."<br>";
            echo "Data Amount : ".$p -> amount."<br>";
            echo "Data Customer Name : ".$p -> customerName."<br>";
    
            if(strcmp($p->status,$doc->status[0]->id)==0){
                echo "Data Status : " . $doc->status[0]->name."<br>";
            }
            else{
            echo "Data Status : " . $doc->status[1]->name . "<br>";
            }
            echo "Data Transaction Date : ".$p -> transactionDate."<br>";
            echo "Data Create By : ".$p -> createBy."<br>";
            echo "Data Create On : ".$p -> createOn."<br>";
            echo "<br><br>";
        }
    ?>
 -->   
</body>
</html>