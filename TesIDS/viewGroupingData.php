<?php
    $connect = mysqli_connect("localhost", "root", "", "dbtesids");
    $i = 1;
    While($i<=12){
        $sql= "SELECT * FROM transaction
        WHERE MONTH(transactionDate) LIKE $i;
        ";
        $collect= mysqli_query($connect, $sql);
        while ($show= mysqli_fetch_array($collect)) {
            
            echo "Data ID : ".$show[id]."<br>";
            echo "Data Product ID : ".$show[productID]."<br>";
            //echo "Data Product Name : ".$p -> productName."<br>";
            //echo "Data Amount : ".$p -> amount."<br>";
            //echo "Data Customer Name : ".$p -> customerName."<br>"
            echo "Data Status : " . $collect[status] . "<br>";
            echo "Data Transaction Date : ".$p -> transactionDate."<br>";
            echo "Data Create By : ".$p -> createBy."<br>";
            echo "Data Create On : ".$p -> createOn."<br>";
            echo "<br><br>";
            # code...
        }
    }
    
    


?>