<?php
try 
{
    $db = new PDO('mysql:host=localhost;dbname=filmographie;charset=utf8', "root", "");
}
catch (PDOException $e) 
{
    print "Erreur !: " . $e->getMessage() . "<br/>";
    die();
}

if($page == 1) 
{
    $results = $db->query("SELECT * FROM Film LIMIT 0 , 8");
    $films = $results->fetchAll();
    include("views/homeView.php");
}
else 
{
    $results = $db->query("SELECT * FROM Film LIMIT 9 , 8");
    $films = $results->fetchAll();
    include("views/homeView.php");
}
    


?>