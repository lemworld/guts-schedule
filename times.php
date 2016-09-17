<?

require('db.inc.php');

header('Content-Type: application/json');

$routeid = htmlspecialchars($_GET["routeID"]);
$stopid = htmlspecialchars($_GET["stopID"]);

$limit = 10;  // CHANGE this to show more/fewer next stop times


$query = "SELECT * FROM route WHERE id='".$routeid."'";

$result = mysql_query($query, $mysql_link);

$routes_data = array("id" => mysql_result($result,0,"id"), "title" => mysql_result($result,0,"title"));




$query = "SELECT * FROM stops WHERE route_id='".$routeid."' AND id='".$stopid."'";

$result = mysql_query($query, $mysql_link);

$stops_data = array("id" => mysql_result($result,0,"id"), "title" => mysql_result($result,0,"title"));

date_default_timezone_set('America/New_York');
$current_date = date('Y-m-d');
$current_time = date('H:i:s');
$current_dayofweek = date('N');

$query = "SELECT * FROM times WHERE stop_id='$stopid' AND day_pattern LIKE '%$current_dayofweek%' AND time > '$current_time' ORDER BY time LIMIT $limit";
$position = 0;

while ($position < $limit) {
	
	$result = mysql_query($query, $mysql_link);

	while($row = mysql_fetch_array($result))
	{
		$times_data[$position] = intval(date('U', strtotime($current_date." ".$row['time'])));
		$position++;
	
	}
	
	$current_dayofweek = getnextdayofweek($current_dayofweek);
	$current_date = date('Y-m-d', strtotime($current_date . ' + 1 day'));
	
	$query = "SELECT * FROM times WHERE stop_id='$stopid' AND day_pattern LIKE '%$current_dayofweek%' AND time > '00:00:00' ORDER BY time LIMIT $limit";

}

$stops = array("request" => "times", "route" => $routes_data, "stop" => $stops_data, "times" => $times_data);

echo json_encode($stops);


function getnextdayofweek($current_dayofweek) {

	if ($current_dayofweek < 7) {
		return $current_dayofweek + 1;
	}
	else {
		return 1;
	}
}

?>