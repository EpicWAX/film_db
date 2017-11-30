<?PHP
  $route = $_GET['route'];
  if(empty($route) || isset($_GET['route']))
  {
    $route = 'home';
  }
  switch ($route)
  {
    case 'home':
    include("views/homeView.php");
    break;

    case 'film' :
    include('views/filmsView.php');
    break;

    default:
    echo "404";
  }
?>

