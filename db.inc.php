<?

$db_host = "";
$db_name = "guts_schedule";
$db_user = "";
$db_password = "";


$mysql_link = mysql_connect($db_host, $db_user, $db_password); 
mysql_select_db($db_name, $mysql_link);
$errormsg = "";

?>