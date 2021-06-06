<?php
include '../dbconnect.php';

$namalengkap = $_GET['namalengkap'];
$hasil = mysqli_query($conn, "DELETE FROM login WHERE namalengkap='$namalengkap'");
echo " <meta http=equiv='refresh' content='1;url=http://belibukugue.epizy.com/admin/customer.php'>"; 
header('location:customer.php');

/*if(isset($_POST["delete"])){
    $kode = $_POST['namalengkap'];
    $q2 = mysqli_query($conn, "delete from login where namalengkap='$kode'");
    if($q2){
        echo "Berhasil Hapus";
        	header('location:customer.php');
    } else {
        echo "Gagal Hapus";
    }
}*/

?>