<?PHP
if(isset($_GET['route']))
{
  $route = $_GET['route'];
  if(preg_match('|film/[0-9]|', $route) || preg_match('|film/[0-9][0-9]|', $route))
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
    $page=1;
    include("controllers/homeController.php");
    break;

    case '1':
    $page=1;
    include("controllers/homeController.php");
    break;

    case '2':
    $page=2;
    include("controllers/homeController.php");
    break;

    case 'film' :
    include('controllers/filmsController.php');
    break;
    
    default:
    include('images/404.php');
  }
?>

