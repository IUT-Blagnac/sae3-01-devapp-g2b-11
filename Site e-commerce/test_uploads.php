<form method="POST" enctype="multipart/form-data">
	<input type="file" name="limage">
	<input type="submit" name="save">
</form>

<?php

	if (isset($_POST["save"])) {
		if (!empty($_FILES["limage"])) {
			$image = $_FILES["limage"];
			// echo exec('ls -l | grep uploads');
			// echo exec('whoami');
			copy($image["tmp_name"], "uploads/45465231.png");
		}
	}
?>