<?php
include"dbconnect.php";

$as=mysqli_query($conn,"select * from komentar order by id desc");
while($sr=mysqli_fetch_array($as)) {
	?>
	<p><?=$sr['tanggal'];?>
	<br><b><?=$sr['nama'];?></b>
	<br><?=$sr['email'];?>
	<br><?=$sr['komentar'];?>

	<br />
	<br />

<?php
}
?>
<hr>