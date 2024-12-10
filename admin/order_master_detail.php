<?php
require('top.inc.php');

$order_id=get_safe_value($con,$_GET['id']);
if(isset($_POST['update_order_status'])){
   $update_order_status=$_POST['update_order_status']; 
   mysqli_query($con, "update `order`set order_status='$update_order_status' where id='$order_id'");
}

?>
<div class="content pb-0">
	<div class="orders">
	   <div class="row">
		  <div class="col-xl-12">
			 <div class="card">
				<div class="card-body">
				   <h4 class="box-title">Order Detail</h4>
				</div>
				<div class="card-body--">
				   <div class="table-stats order-table ov-h">
                   <table class="table">
                   <thead>
                         <tr>
                            <th class="product-thumbnail">Customer Name</th>
                            <th class="product-thumbnail">Product Name</th>
                            <th class="product-thumbnail">Product Image</th>
                            <th class="product-price">Price</th>
                            <th class="product-price">Total Price</th>
                        </tr>
                    </thead>
                    <tbody>
                    <?php
                     
                        $res=mysqli_query($con,"select distinct(order_detail.id),order_detail.*,product.pname,product.image,`order`.address,`order`.city,`order`.pincode,users.cname from order_detail,product,`order`,users where order_detail.order_id='$order_id' and order_detail.product_id=product.id and order.id=order_detail.order_id and users.id=order.user_id");
                        //"SELECT `order_detail`.*,product.name,product.image from `order_detail`,product,`order` 
                       // WHERE `order_detail`.order_id='$order_id' and product.id=`order_detail`.product_id");
                        $total_price=0;
                        while($row=mysqli_fetch_assoc($res)){
                        $address=$row['address'];
                        $city=$row['city'];
                        $pincode=$row['pincode'];
                        $total_price=$row['price'];
                        
                    ?>
                        <tr>
                            <td class="product-name"><?php echo $row['cname']?></td>
                            <td class="product-name"><?php echo $row['pname']?></td>
                            <td class="product-name"> <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$row['image']?>"></td>
                            <td class="product-name"><?php echo $row['price']?></td>
                            <td class="product-name"><?php echo $row['price']?></td>
                                               
                        </tr>
                    <?php } ?>
                       
                    </tbody>
                    </table>
                    <div id="address_details">
                        <strong>Address </strong> 
                        <?php echo $address?>,   <?php echo $city?>,   <?php echo $pincode?><br/><br/>
                        <strong>Order Status</strong> 
                        <?php 
                        
                           $res=mysqli_query($con,"select `order`.*,`order_status`.name as order_status_str from `order`,`order_status` 
                           where `order`.id='$order_id' and `order_status`.id=`order`.order_status");
                           while($row=mysqli_fetch_assoc($res))
                    
                            echo $row['order_status_str'];
                        ?>

                        <div>
                            <form method="post">
                            <select class="form-control" name="update_order_status">
										<option>Select Status</option>
										<?php
										$res=mysqli_query($con,"select * from order_status");
										while($row=mysqli_fetch_assoc($res)){
											if($row['id']==$categories_id){
												echo "<option selected value=".$row['id'].">".$row['name']."</option>";
											}else{
												echo "<option value=".$row['id'].">".$row['name']."</option>";
											}
											
										}
										?>
									</select>
                                    <input type="submit"  class="form-control" href="order_master.php"/>
                            </form>
                        </div>
                    </div>
				   </div>
				</div>
			 </div>
		  </div>
	   </div>
	</div>
</div>
<?php
require('footer.inc.php');
?>