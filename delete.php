<!--<?php
//include '../dbconnect.php';

//$nama = $_GET['nama'];
//$hasil = mysqli_query($conn, "DELETE FROM komentar WHERE nama='$nama'");
//echo " <meta http=equiv='refresh' content='1;url=http://localhost/griptcloth/index.php'>"; 
//header('location:index.php');

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

?>-->

<!DOCTYPE html>
<html>
<head>
	<title>Komentar</title>
</head>
<body>
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript"></script>
<script>

    function deletecomment(id) {

       if(confirm("Are you sure you want to delete this comment?")) {

            $.ajax({
            url: "comment-delete.php",
            type: "POST",
            data: 'comment_id='+id,
            success: function(data){
                if (data)
                {
                    $("#comment-"+id).remove();
                    if($("#count-number").length > 0) {
                        var currentCount = parseInt($("#count-number").text());
                        var newCount = currentCount - 1;
                        $("#count-number").text(newCount)
                    }
                }
            }
           });
        }
     }

	$(document).ready(function() {

        $("#frmComment").on("submit", function(e) {
        		$(".error").text("");
            $('#name-info').removeClass("error");
            $('#message-info').removeClass("error");
            e.preventDefault();
            var name = $('#name').val();
            var message = $('#message').val();
            
            if(name == ""){
            		$('#name-info').addClass("error");
            }
            if(message == ""){
            		$('#message-info').addClass("error");
            }
            $(".error").text("required");
            if(name && message){
                	$("#loader").show();
            		$("#submit").hide();
            	 	$.ajax({
                
                 type:'POST',
                 url: 'comment-add.php',
                 data: $(this).serialize(),
                 success: function(response)
                    {
						$("#frmComment input").val("");
						$("#frmComment textarea").val("");
                     	$('#response').prepend(response);

                         if($("#count-number").length > 0) {
                             var currentCount = parseInt($("#count-number").text());
                             var newCount = currentCount + 1;
                             $("#count-number").text(newCount)
                         }
                         $("#loader").hide();
                 		$("#submit").show();
                     }
                	});
			}
		});
     });
    </script>
</body>
</html>