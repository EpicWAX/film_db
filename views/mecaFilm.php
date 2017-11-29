	<?php foreach ($films as $key => $film): ?>			
      <div class="row">
        <div class="col-md-7">
          <a href="#">
            <img class="img-fluid rounded mb-3 mb-md-0" src="<?=$film['picture']?>" alt="image">
          </a>
        </div>
        <div class="film<?=$key+1?> col-md-5">
		  <h2>Film n°<?=$key+1?></h2>
		  <h3><?=$film['film_name']?></h3>
          <p><?=$film['synopsi']?></p>
          <a class="btn btn-primary" href="#">Voir affiche</a>
        </div>
      </div>
      <!-- /.row -->
      <hr>
	<?php endforeach ?>