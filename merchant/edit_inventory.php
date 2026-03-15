<?php
$id=$_GET['id'];
require '../database/dbconfig.php';

$cylinder_size=$_POST['cylinder_size'];
$gas_brand=$_POST['gas_brand'];
$price=$_POST['price'];
$quantity=$_POST['quantity'];


$edit=mysqli_query($con,"UPDATE tbl_inventory
	SET cylinder_size='$cylinder_size',
	gas_brand='$gas_brand',
	price='$price',
	quantity='$quantity'
	WHERE id='$id'");

if ($edit==true) {
?>
<script type="text/javascript">
window.top.location.href='stock.php?info=operation_successful&t=s';
</script>
<?php
}

?>