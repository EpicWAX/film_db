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
    <!-- Custom styles for this template -->
    <link href="css/1-col-portfolio.css" rel="stylesheet">
  </head>
  <body style="padding-top: 3%">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#"><img src="images/lion.jpg" style="width:50px;" class="lion">Allo Lions</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="..">Home
                <span class="sr-only">(current)</span>
              </a>
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
      <!-- Page Heading -->
    <?php foreach($films as $key => $film)
    {
     echo '<h1 class="my-3">'.$film['film_name'].'</h1><br/>';
    }
    ?>
    <h3 class="my-2">Genre</h3>
    <?php
    foreach($genres as $genre)
    {
      echo $genre['genre'].' ,';
    }
    ?>
    <section class="row">
    <figure class="col-md-7">
    <?php foreach($films as $key => $film) 
      {
        echo '<img class="img-fluid rounded mb-3 mb-md-0" src="'.$film['picture'].'" alt="image" style="height:800px;width:600px;">';
      }
     ?>
    </figure>
    <article class="col-md-5 my-auto">
    <h2> Synopsis </h2>
    <?php
    foreach($films as $key => $film) 
    {
      echo "<p style='font-size:1.5em;'>".$film['synopsi']."</p><br/><h2>Réalisateur</h2>";
      echo "<p style='font-size:1.2em;'>".$film['realisateur']."</p><br/><h2>Années</h2>";
      echo "<p style='font-size:1.2em;'>".$film['annee']."<br/><h2>Acteurs</h2>";
      foreach($acteurs as $key => $acteur)
      {
      echo "<p style='font-size:1.2em;'>".$acteur['first_name']." ".$acteur['last_name']."</p>";
      }
    }
    ?>
    </article>
    </section>
    </div>
    <!-- /.container -->
    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">WWLions &copy;2017</p>
      </div>
      <!-- /.container -->
    </footer>
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	</body>
</html>