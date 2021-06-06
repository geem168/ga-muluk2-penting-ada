<?php
include '../dbconnect.php';

$komentar = $_GET['komentar'];
$hasil = mysqli_query($conn, "DELETE FROM komentar WHERE komentar='$komentar'");
echo " <meta http=equiv='refresh' content='1;url=http://belibukugue.epizy.com/admin/komentar.php'>"; 
header('location:komentar.php');

/*if(isset($_POST["delete"])){
    $kode = $_POST['nama'];
    $q2 = mysqli_query($conn, "delete from komentar where nama='$kode'");
    if($q2){
        echo "Berhasil Hapus";
        	header('location:komentar.php');
    } else {
        echo "Gagal Hapus";
    }
}*/

?>