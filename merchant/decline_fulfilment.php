<?php
$order_id=$_GET['order_id'];
$quantity=$_GET['quantity'];
$inventory_id=$_GET['inventory_id'];
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);
require '../database/dbconfig.php';

$confirm=mysqli_query($con,"UPDATE tbl_orders
	SET order_status='5'
	WHERE id='$order_id'");


if ($confirm==true) {
$inventory=mysqli_query($con,"SELECT * FROM tbl_inventory WHERE id='$inventory_id'");
while ($rowinv=$inventory->fetch_assoc()) {
$old_quantity=$rowinv['quantity'];
}
}

$new_quantity=$old_quantity+$quantity;

$editquantity=mysqli_query($con,"UPDATE tbl_inventory
	SET quantity='$new_quantity'
	WHERE id='$inventory_id'");



if ($editquantity==true) {
?>
<script type="text/javascript">
	window.top.location.href='history.php?info=declined&t=w';
</script>
<?php
}
?>