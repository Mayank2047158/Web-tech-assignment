<html>
<body>
Today's date <?php echo $_REQUEST["cur_date"]; ?><br>
Your name: <?php echo $_REQUEST["name"]; ?><br>
<?php
if(isset($_POST['formattend']) )
{
  $varPresent = $_POST['present'];
  $varabsent = $_POST['absent'];
  $varleave = $_POST['Leave'];
  $errorMessage = "";
}?>

</body>
</html>
