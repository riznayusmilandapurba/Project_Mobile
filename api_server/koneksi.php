<?php

$koneksi = mysqli_connect("localhost", "root", "", "appkamus");

if($koneksi){

	// echo "Database berhasil konek";
	
} else {
	echo "gagal Connect";
}

?>