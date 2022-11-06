<!-- <?php 
 $nama = "tAA";

//  echo $nama;
//  echo "<br>";
//  echo $nama;
//  echo "<br>";
//  echo $nama;
//  echo "<br>";
//  echo $nama;
//  echo "<br>";

//perulangan for 
 $no =10;

//  for ($i=0; $i <= 5 ; $i++) { 
//     $n = $i +1;
//     echo  $n." ".$nama."<br>";
//  }

 //perulangan while 
//  $i =0;
//  $no =10;
//  while ($i <= $no) {
//     $n = $i +1;
//     echo  $n." ".$nama."<br>";
//     $i++;
//  }
//perulangan do while
// $i =0;
// $no =10;
// do {
//     $n = $i +1;
//     echo  $n." ".$nama."<br>";
//     $i++;
// } while ($i<= 10);

//data array 
$data = array('avansa', 'lamborghini', 'xenia', 'Xpander', 'rubicon');


$i =0;
for ($i=0; $i <count($data) ; $i++) { 
    # code...
    echo $data[$i]."<br>";
}

// foreach ($data as $key => $value) {
//     echo $value."<br>";
// }

//PERCABANGAN 
if ($nama == "Tara") {
    echo $nama." adalah  orang banyuwangi";

// }else {
//     echo $nama."adalah  orang Indonesia";
    
// }
} elseif ($nama == "Fafa") {
    # code...
    echo $nama."adalah  orang Indonesia";
} else {
    echo $nama."adalah  orang Jawa";
}


switch ($nama) {
    case 'Tara':
        $pesan =  $nama." adalah  orang banyuwangi";
        break;
    case 'JJj':
        $pesan = $nama." adalah  orang banyuwangi";
            break;
    
    default:
        $pesan = $nama." sari mana ya ?" ;
        break;
}
 echo $pesan;
?> -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="<?php  $_SERVER['PHP_SELF']?>" method="post">
    <label for="">Nama</label>
    <input type="text" name="nama">
    <label for="">Jumlah</label>
    <input type="text" name="No">
   <input type="submit" name="submit" value="Submit">
</form>
<?php 
if (!empty($_POST['submit'])) {
     switch ($_POST['nama']) {
        case 'Tara':
            $pesan =  $_POST['nama']." adalah  orang banyuwangi";
            break;
        case 'JJJ':
            $pesan = $_POST['nama']." adalah  orang banyuwangi";
                break;
        
        default:
        $pesan = $_POST['nama']." adalah orang mana ? ";
            break;
     }

     for ($i=0; $i <$_POST['No']; $i++) { 
        echo $pesan."<br>";
     }
}
 ?>

</body>
</html>