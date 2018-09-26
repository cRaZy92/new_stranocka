<?php
session_start();

if(!isset($_SESSION['signed_in']))
{    
    include "chyba_prihlasenia.php";
    die;
}
    $titulok="Učivo";
    include "html_hlavicka.php";
    include "body_start.php";
?>

    <h1>Učivo</h1>
    <div class="container">
      
      <p>Tu si môžete vybrať učivo, ktorému sa chcete venovať:</p>
      <form method="post">
        <p><select name="ucivo">
            <!--<option value="sql_databazy">Základné SQL príkazy pre prácu z databázou [ENG]</option>
            <option value="php_databazy">Základné PHP príkazy pre prácu z databázou [ENG]</option>  -->     
            <option value="part_1">1. Informácie okolo nás [WIP]</option>
            <option value="part_2">2. Internet a informačná spoločnosť [WIP]</option>
            <option value="part_3">3. Počítačové systémy a operačný systém [WIP]</option>
            <option value="part_4">4. Aplikačný softvér [WIP]</option>
            <option value="part_5">5. Algoritmizácia , Programovanie [WIP]</option>
            <option value="part_6">6. Hardvér (Hardware) [WIP]</option>
            <option value="part_7">7. Počítačové siete a Internet [WIP]</option>
            <option value="part_8">8. Informačné a Databázové Systémy [WIP]</option>
            <option value="part_9">9. Rastrový a Vektorový grafický editor [WIP]</option>
            <option value="part_10">10. Tvorba webu [WIP]</option>
            </select></p>
            
            <input type="submit" name="ok" value="Zobraziť učivo" class="btn btn-success">
    </form>
            <footer>Good luck :P </footer>
      
    </div>

<?php
if(isset($_POST['ok'])){

$vyber=$_POST['ucivo'];

switch($vyber){
    case "sql_databazy":
    include_once "content_sql_databazy.php";
    break;
    case "php_databazy":
    include_once "content_php_databazy.php";
    break;
}
}

include "body_end.php";
include "html_pata.php";
?>