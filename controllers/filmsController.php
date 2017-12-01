<?php
try {
    $db = new PDO('mysql:host=localhost;dbname=filmographie', "root", "");
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
    } catch (PDOException $e) 
    {
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
    }

$fi = $db->query("SELECT * FROM film  WHERE id = $idfilm ");
$films = $fi->fetchAll();
include("views/filmsView.php"); //Attention, les fichiers sont include donc pour le serveur on est toujours au niveau d'index.php, et pas dans le dossier "controllers", donc on apelle "views/filmsView.php" et non pas "../views/filmsView.php"
?>