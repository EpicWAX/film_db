<?PHP
if(isset($_GET['route']))
{
  $route = $_GET['route'];
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

    case 'films' :
    include('controllers/filmsController.php');
    break;

    default:
    echo "404";
  }
?>

