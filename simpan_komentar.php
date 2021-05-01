<?php
include 'dbconnect.php';

$nama = ($_POST['nama']);
$email = ($_POST['email']);
$komentar = ($_POST['komentar']);
$tanggal = (gmdate("d/m/y", time ()+60*60*7));
$post = ($_POST['post']);

if($_POST['post']) {
	$as = mysqli_query($conn, "insert into komentar values('','$nama','$email','$komentar','$tanggal')");
	if($as) {
		?>
		<script>
		document.location="index.php";
		</script>
	<?php
	}else{
		?>
		<script>
		alert('gagal posting');
		document.location="index.php";
		</script>
	<?php
	}
}
?>


