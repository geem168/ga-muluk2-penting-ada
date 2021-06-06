<?php ob_start(); ?>
<html>
<head>
  <title>Cetak PDF</title>
    
   <style>
   table {border-collapse:collapse; table-layout:fixed;width: 500px;}
   table td {word-wrap:break-word;width: 20%;}
   </style>
</head>
<body>
  
<h1 style="text-align: center;">Daftar Pelanggan</h1>
<table border="1" width="70%">
<tr>
  <th>ID</th>
  <th>Nama Pelanggan</th>
  <th>No. Telepon</th>
  <th>Alamat</th>
  <th>Email</th>
</tr>
<?php
 //Load file dbconnect.php
include "../dbconnect.php";
 
$query = "SELECT * FROM login WHERE role='Member' "; // Tampilkan semua data gambar
$sql = mysqli_query($conn, $query); // Eksekusi/Jalankan query dari variabel $query
$row = mysqli_num_rows($sql); // Ambil jumlah data dari hasil eksekusi $sql
if($row > 0){ // Jika jumlah data lebih dari 0 (Berarti jika data ada)
    while($data = mysqli_fetch_array($sql)){ // Ambil semua data dari hasil eksekusi $sql
        echo "<tr>";
        echo "<td>".$data['userid']."</td>";
        echo "<td>".$data['namalengkap']."</td>";
        echo "<td>".$data['notelp']."</td>";
        echo "<td>".$data['alamat']."</td>";
        echo "<td>".$data['email']."</td>";
        echo "</tr>";
    }
}else{  ///Jika data tidak ada
  echo "<tr><td colspan='4'>Data tidak ada</td></tr>";
}
?>
</table>
</body>
</html>
<?php
$html = ob_get_contents();
ob_end_clean();
        
require 'html2pdf/autoload.php';
$pdf = new Spipu\Html2Pdf\Html2Pdf('L','A4','en');
$pdf->WriteHTML($html);
$pdf->Output('Daftar Pelanggan.pdf', 'D');
?>