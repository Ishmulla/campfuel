<?php
$stock_id=$_GET['id'];

echo $stock_id;
require '../database/dbconfig.php';

$delete=mysqli_query($con,"DELETE FROM tbl_inventory WHERE id='$stock_id'");
if ($delete==true) {
?>
<script type="text/javascript">
window.top.location.href='stock.php?info=operation_successful&t=s';
</script>
<?php
}
?>