<?php
header('Content-type: text/xml');
header('Pragma: public');
header('Cache-control: private');

include("koneksi.php");

echo "<?xml version=\"1.0\" encoding=\"utf-8\"?>";
echo "<markers>";
$sql="select * from pariwisata";
$query=mysqli_query($koneksi,$sql) or die(mysqli_error());
while ($data=mysqli_fetch_array($query)) {
	echo "<marker id_pariwisata='".$data['id_pariwisata']."' nama_pariwisata='".$data['nama_pariwisata']."'  alamat='".$data['alamat']."' lat='".$data['lat']."' long='".$data['long']."'/>";
}
echo "</markers>";