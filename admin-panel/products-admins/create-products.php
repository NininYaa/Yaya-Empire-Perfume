<?php require "../layouts/header.php"; ?>  
<?php require "../../config/config.php"; ?> 
<?php 


  $select = $conn->query("SELECT * FROM categories");
  $select->execute();

  $categories = $select->fetchAll(PDO::FETCH_OBJ);

  if(isset($_POST['submit'])) {
    if(empty($_POST['name']) OR empty($_POST['description']) OR empty($_POST['price'])) {
      echo "<script>alert('one or more inputs are empty');</script>";
    } else {

      $name = $_POST['name'];
      $description = $_POST['description'];
      $price = $_POST['price'];
      
      $image = $_FILES['image']['name'];
      $file = $_FILES['file']['name'];
      $category_id = $_POST['category_id'];




      $dir_image = "images/" . basename($image);
      $dir_file = "books/" . basename($file);


      $insert = $conn->prepare("INSERT INTO products (name, price, description, image, file, category_id) VALUES 
      (:name, :price, :description, :image, :file, :category_id)");
      $insert->execute([
        ":name" => $name,
        ":price" => $price,
        ":description" => $description,
        ":image" => $image,
        ":file" => $file,
        ":category_id" => $category_id,
      ]);

      if(move_uploaded_file($_FILES['image']['tmp_name'],  $dir_image) AND move_uploaded_file($_FILES['file']['tmp_name'],  $dir_file)) {
        header("location: ".ADMINURL."/products-admins/show-products.php");
      }

    }
  }

?>
       <div class="row">
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title mb-5 d-inline">Create Products</h5>
              <form method="POST" action="create-products.php" enctype="multipart/form-data">
                <!-- Email input -->
                <div class="form-outline mb-4 mt-4">
                  <label>Name</label>

                  <input type="text" name="name" id="form2Example1" class="form-control" placeholder="name" />
                </div>

                <div class="form-outline mb-4 mt-4">
                    <label>Price</label>

                    <input type="text" name="price" id="form2Example1" class="form-control" placeholder="price" />
                </div>

                <div class="form-group">
                    <label for="exampleFormControlTextarea1">Description</label>
                    <textarea name="description" placeholder="description" class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>

                

                <div class="form-outline mb-4 mt-4">
                    <label>Image</label>

                    <input type="file" name="image" id="form2Example1" class="form-control" placeholder="image" />
                </div>

               

      
                <!-- Submit button -->
                <button type="submit" name="submit" class="btn btn-primary  mb-4 text-center">create</button>

          
              </form>

            </div>
          </div>
        </div>
      </div>
<?php require "../layouts/footer.php"; ?>  
