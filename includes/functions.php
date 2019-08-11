<?

//takes a dollar sign
  $user = "root";
  $pass = "root"; //this should be a blank string for windows machines
  $host = "localhost";
  $db = "db_cooperinfo"; //whatever uyou called your database

  $conn = mysqli_connect ($host, $user, $pass, $db);
  mysqli_set_charset($conn, 'utf8');

  if (!conn) {
    echo "something broke... no soup for you!";
    exit;
  }

// echo "connected!";

  $myQuery = "SELECT * FROM mainmodel";
  $result = mysqli_query($conn, $myQuery);
  //this is going to kick back some result

  $rows = array(); //this is to see the results all at once

  while($row = mysqli_fetch_assoc($result)) {
    $rows[] = $row;
  }

  //var_dump($rows);
  //echo json_encode($rows);

  //get a single row (one result) using a query parameter
  if (isset($_GET['carModel'])) { //see if theres a parameter called carModel
    $car = $_GET['carModel'];

    $myQuery = "SELECT * FROM mainmodel WHERE model = '$car'";
    $result = mysqli_query($conn, $myQuery);

    $row = mysqli_fetch_assoc($result);

    echo json_encode($row);
  }

  if (isset($_GET['getVideos'])) { //see if theres a parameter called carModel

    $myQuery = "SELECT * FROM video";

    $result = mysqli_query($conn, $myQuery);
    $rows = array();

    while($row = mysqli_fetch_assoc($result)) {
      $rows[] = $row;
    }

    echo json_encode($rows);
  }
?>
