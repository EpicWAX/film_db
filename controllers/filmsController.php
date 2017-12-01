<?php
try {
    $db = new PDO('mysql:host=localhost;dbname=filmographie;charset=utf8', "root", "");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    } catch (PDOException $e) 
    {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
    }

$fi = $db->query("SELECT * FROM film  WHERE id = $idfilm ");
$films = $fi->fetchAll();
$ac = $db->query("SELECT * FROM acteurs JOIN film_acteurs ON acteurs.id =  film_acteurs.id_acteurs WHERE film_acteurs.id = $idfilm");
$acteurs = $ac->fetchAll();
$fr = $db->query("SELECT * FROM genre JOIN film_genre ON genre.id =  film_genre.id_genre WHERE film_genre.id = $idfilm");
$genres = $fr->fetchAll();
include("views/filmsView.php"); //Attention, les fichiers sont include donc pour le serveur on est toujours au niveau d'index.php, et pas dans le dossier "controllers", donc on apelle "views/filmsView.php" et non pas "../views/filmsView.php"
?>