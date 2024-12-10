<?php
require('top.inc.php');
$categories_id='';
$pname='';
$size='';
$price='';
$image='';
$short_desc	='';
$description	='';
$best_seller='';

$msg='';
$image_required='required';
if(isset($_GET['id']) && $_GET['id']!=''){
	$image_required='';
	$id=get_safe_value($con,$_GET['id']);
	$res=mysqli_query($con,"select * from product where id='$id'");
	$check=mysqli_num_rows($res);
	if($check>0){
		$row=mysqli_fetch_assoc($res);
		$categories_id=$row['categories_id'];
		$pname=$row['pname'];
		$size=$row['size'];
		$price=$row['price'];
		$short_desc=$row['short_desc'];
		$description=$row['description'];
		$best_seller=$row['best_seller'];
	}else{
		header('location:product.php');
		die();
	}
}

if(isset($_POST['submit'])){
	$categories_id=get_safe_value($con,$_POST['categories_id']);
	$pname=get_safe_value($con,$_POST['pname']);
	$size=get_safe_value($con,$_POST['size']);
	$price=get_safe_value($con,$_POST['price']);
	$short_desc=get_safe_value($con,$_POST['short_desc']);
	$description=get_safe_value($con,$_POST['description']);
	$best_seller=get_safe_value($con,$_POST['best_seller']);
			if(isset($_GET['id']) && $_GET['id']!='')
			{
				if($_FILES['image']['name']!=''){
					$image=rand(111111111,999999999).'_'.$_FILES['image']['name'];
					move_uploaded_file($_FILES['image']['tmp_name'],PRODUCT_IMAGE_SERVER_PATH.$image);
					$update_sql="update product set categories_id='$categories_id',pname='$pname',size='$size',price='$price',image='$image',short_desc='$short_desc',description='$description',best_seller='$best_seller' where id='$id'";
				}
				else
				{
					$update_sql="update product set categories_id='$categories_id',pname='$pname',size='$size',price='$price',image='$image',short_desc='$short_desc',description='$description',best_seller='$best_seller' where id='$id'";
				}
				mysqli_query($con,$update_sql);
				header('location:product.php');
				//mysqli_query($con,"update product set categories_id='$categories_id',name='$name',mrp='$mrp',price='$price',
				//qty='$qty',short_desc='$short_desc',description='$description',meta_title='$meta_title',meta_desc='$meta_desc',meta_keyword='$meta_keyword' where id='$id'");
			}
			else
			{
				$image=rand(111111111,999999999).'_'.$_FILES['image']['name'];
				move_uploaded_file($_FILES['image']['tmp_name'],PRODUCT_IMAGE_SERVER_PATH.$image);
				mysqli_query($con,"insert into product(categories_id,pname,size,price,image,short_desc,description,best_seller,status) values('$categories_id','$pname','$size','$price','$image','$short_desc','$description','$best_seller',1)");
				header('location:product.php');
			}
		}
?>
<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Product</strong><small> Form</small></div>
                        <form method="post" enctype="multipart/form-data">
							<div class="card-body card-block">
							   <div class="form-group">
									<label for="categories" class=" form-control-label">Categories</label>
									<select class="form-control" name="categories_id" id="categories_id" onchange="get_sub_cat('')">
										<option>Select Category</option>
										<?php
										$res=mysqli_query($con,"select id,categories from categories order by categories asc");
										while($row=mysqli_fetch_assoc($res)){
											if($row['id']==$categories_id){
												echo "<option selected value=".$row['id'].">".$row['categories']."</option>";
											}else{
												echo "<option value=".$row['id'].">".$row['categories']."</option>";
											}
											
										}
										?>
									</select>
								</div>
								<div class="form-group">
									<label for="categories" class=" form-control-label">Sub Categories</label>
									<select class="form-control" name="sub_categories_id" id="sub_categories_id" required>
										<option>Select Sub Category</option>
										
									</select>
								</div>
								<div class="form-group">
									<label for="categories" class=" form-control-label">Product Name</label>
									<input type="text" name="pname" placeholder="Enter product name" class="form-control" required value="<?php echo $pname?>">
								</div>

								<div class="form-group">
									<label for="categories" class=" form-control-label">Size</label>
                                    <select class="form-control" name="size" required>
										<option value="null">Select Size</option>
                                        <option value="M">M</option>
                                        <option value="L">L</option>
										<option value="XL">XL</option>
                                        <option value="XXL">XXL</option>
									</select>
									
								</div>

								<div class="form-group">
									<label for="categories" class=" form-control-label">Best Seller</label>
									<select class="form-control" name="best_seller" required>
										<option value="">Select</option>
										<?php
											if($best_seller==1){
												echo '<option value="1" selected>Yes</option>
													  <option value="0">No</option>';
											}else if($best_seller==0){
												echo '<option value="1">Yes</option>
													  <option value="0" selected>No</option>';
											}else{
												echo '<option value="1">Yes</option>
													  <option value="0" selected>No</option>';
											}	
										?>
									</select>
								</div>
								
								
								<div class="form-group">
									<label for="categories" class=" form-control-label">Price</label>
									<input type="text" name="price" placeholder="Enter product price" class="form-control" required value="<?php echo $price?>">
								</div>
								
								<div class="form-group">
									<label for="categories" class=" form-control-label">Image</label>
									<input type="file" name="image" class="form-control" <?php echo  $image_required ?>>
								</div>
								
								<div class="form-group">
									<label for="categories" class=" form-control-label">Short Description</label>
									<textarea name="short_desc" placeholder="Enter product short description" class="form-control" required><?php echo $short_desc?></textarea>
								</div>
								
								<div class="form-group">
									<label for="categories" class=" form-control-label">Description</label>
									<textarea name="description" placeholder="Enter product description" class="form-control" required><?php echo $description?></textarea>
								</div>
								

								
								
							   <button id="payment-button" name="submit" type="submit" class="btn btn-lg btn-info btn-block">
							   <span id="payment-button-amount">Submit</span>
							   </button>
							   <div class="field_error"><?php echo $msg?></div>
							</div>
						</form>
                     </div>
                  </div>
               </div>
            </div>
         </div>

		 <script>
			function get_sub_cat(sub_cat_id){
				var categories_id=jQuery('#categories_id').val();
				jQuery.ajax({
					url:'get_sub_cat.php',
					type:'post',
					data:'categories_id='+categories_id+'&sub_cat_id='+sub_cat_id,
					success:function(result){
						jQuery('#sub_categories_id').html(result);
					}
				});
			}
			
		 </script>
         
<?php

require('footer.inc.php');
?>

<script>
			<?php
				if(isset($_GET['id'])){
			?>
			get_sub_cat('<?php echo $sub_categories_id?>');
			<?php } ?>
</script>