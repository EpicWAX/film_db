<?PHP
if(isset($_GET['route']))
{
  $route = $_GET['route'];
  if(empty($route))
  {
    $route = 'home';
  }
  switch ($route)
  {
    case 'home':
    include("views/homeView.php");
    break;

    default:
    include("controllers/".$route.'filmsController.php');
  }
}
else 
{
  include('controllers/homeController.php');
}
?>

