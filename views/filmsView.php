<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Film_db by juliedi, brimas59, RollonDaim, EpicWAX, NinjaRetroGaming</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="css/portfolio-item.css" rel="stylesheet">
  </head>
  <body style="padding-top: 3%">
	<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">ALLO Lions</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="home">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Services</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Contact</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Page Content -->
    <div class="container">

    <!-- Portfolio Item Heading -->
    <h1 class="my-4"><?php foreach($films as $key => $film) 
    {
    echo $film['film_name'];
    }
    ?>
    </h1>
     
    <!-- Portfolio Item Row -->
    <div class="row">

      <div class="col-md-8">
        <img class="img-fluid" src="<?=$film['picture']?>" alt="">
      </div>

      <div class="col-md-4">
        <h3 class="my-3">L'histoire</h3>
        <p>

<?php foreach($films as $key => $film) 
{
  echo $film['synopsi'];
}
?>
        </p>

        <h3 class="my-3">Plus d'information : </h3>
        <div class="Réalisateur">
<?php foreach($films as $key => $film) 
{
  echo "Réalisé par : ".$film['realisateur'];
}
?>
        </div>
        <div class="Datesortie">
        <?php foreach($films as $key => $film) 
        {
          echo "Année de sortie : ".$film['annee'];
        }
        ?>
        </div>
      </div>
    <div class="actors">
    
    </div>
    <footer>
        <div>WWLions &copy; 2017</div>
    </footer>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	</body>
</html>