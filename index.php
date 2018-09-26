<?php
session_start();
$title = "Domov";
include "html_hlavicka.php";
    
?>
    <main role="main" class="container">

      <div style="text-align:center">
        <h1>Vitaj na našej stránke</h1>
        <?php
        if(!isset($_SESSION['signed_in'])){
            echo '<p class="lead">Teraz sa môžeš prihásiť alebo registrovať.</p>';
        }
        else{
            print_r($_SESSION);
            ?>
            <p class="lead">Úspešne prihásený.<br> Môžeš preskúmať náš web.</p>
          <!--  <p class="lead">Viem že táto stránka nie je dokonalá, preto je dôležité aby mi napísali každú chybu ktorú nájdete. Zanechať ju môžte tu:</p>
            <button type="button" class="btn btn-warning" name="chyba" onclick="location.href='leave_message.php';" > <i class="fas fa-bug"></i>  Nahlásiť chybu</button>
        -->
            <?php
        }
        echo "<br>";
      
        ?>
      </div>

    </main><!-- /.container -->
<?php
    include "html_pata.php";
?>

