<?

require('db.inc.php');

header('Content-Type: application/json');

$query = "SELECT * FROM route ORDER BY title";

$result = mysql_query($query, $mysql_link);
$position = 0;

while($row = mysql_fetch_array($result))
{
	$routes_data[$position] = array("id" => $row['id'], "title" => $row['title']);
	$position++;

}

$routes = array("request" => "routes", "routes" => $routes_data);

echo json_encode($routes);

?>