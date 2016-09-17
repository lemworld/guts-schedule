<?

require('db.inc.php');

header('Content-Type: application/json');

$routeid = htmlspecialchars($_GET["routeID"]);


$query = "SELECT * FROM route WHERE id='".$routeid."'";

$result = mysql_query($query, $mysql_link);

$routes_data = array("id" => mysql_result($result,0,"id"), "title" => mysql_result($result,0,"title"));




$query = "SELECT * FROM stops WHERE route_id='".$routeid."'";

$result = mysql_query($query, $mysql_link);
$position = 0;

while($row = mysql_fetch_array($result))
{
	$stops_data[$position] = array("id" => $row['id'], "title" => $row['title']);
	$position++;

}

$stops = array("request" => "stops", "route" => $routes_data, "stops" => $stops_data);

echo json_encode($stops);

?>