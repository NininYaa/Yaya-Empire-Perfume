<?php require "includes/header.php"; ?>
<?php require "config/config.php"; ?>



<?php


    $rows = $conn->query("SELECT * FROM products WHERE status = 1");
    $rows->execute();

    $allRows = $rows->fetchAll(PDO::FETCH_OBJ);


?>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-4">
                    <a href="#">
                        <img src="images/logos.png" alt="ad" class="img-fluid">
                    </a>
                </div>
                
            </div>
        </div>




            

<h1 style="font-family:Arial, sans-serif; text-align:center">ALL PRODUCTS</h1>
        <div class="row mt-5">
            <?php foreach($allRows as $products) : ?>
                <div class="col-lg-4 col-md-5 col-sm-10 offset-md-0 offset-sm-4 mb-4">
                    <div class="card" >
                        <img height="350px" class="card-img-top" src="images/<?php echo $products->image; ?>">
                        <div class="card-body" >
                            <h5 class="d-inline"><b><?php echo $products->name; ?></b> </h5>
                            <h5 class="d-inline"><div class="text-muted d-inline">(RM<?php echo $products->price; ?>/item)</div></h5>
                            <p><?php echo substr($products->description, 0, 120); ?> </p>
                            <a href="<?php echo APPURL; ?>/shopping/single.php?id=<?php echo $products->id; ?>"  class="btn btn-primary w-100 rounded my-2"> More <i class="fas fa-arrow-right"></i> </a>      
        
                        </div>
                    </div>
                </div>
                <br>
            <?php endforeach; ?>
           
         </div>

<?php require "includes/footer.php"; ?>

            <style>


            </style>