<?PHP
if(isset($_GET['route']))
{
  $route = $_GET['route'];
  if(preg_match('|film/[0-9][0-9]|', $route) || preg_match('|film/[0-9]|', $route))
  {
    $route = explode( '/', $route);
    $idfilm = $route[1];
    include('controllers/filmsController.php');
    die();
  }

}
  if(empty($route) || !isset($_GET['route']))
  {
    $route = 'home';
  }
  switch ($route)
  {
    case 'home':
    include("controllers/homeController.php");
    break;

    case 'film' :
    include('controllers/filmsController.php');
    break;

    default:
    echo "404";
  }
?>

