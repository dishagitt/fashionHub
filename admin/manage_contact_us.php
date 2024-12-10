<?php
require('top.inc.php');
$address='';
$email='';
$phone='';
$msg='';
if(isset($_GET['id']) && $_GET['id']!=''){
	$id=get_safe_value($con,$_GET['id']);
	$res=mysqli_query($con,"select * from contact_us where id='$id'");
	$check=mysqli_num_rows($res);
	if($check>0){
		$row=mysqli_fetch_assoc($res);
        $address=$row['address'];
        $email=$row['email'];
        $phone=$row['phone'];
	}else{
		header('location:contact_us.php');
		die();
	}
} 

if(isset($_POST['submit'])){
    $address=get_safe_value($con,$_POST['address']);
    $email=get_safe_value($con,$_POST['email']);
    $phone=get_safe_value($con,$_POST['phone']);
	$res=mysqli_query($con,"select * from contact_us where address='$address'");
	$check=mysqli_num_rows($res);
	if($check>0){
		if(isset($_GET['id']) && $_GET['id']!=''){
			$getData=mysqli_fetch_assoc($res);
			if($id==$getData['id']){
			
			}else{
				$msg="adress already exist";
			}
		}else{
			$msg="adress already exist";
		}
	}
	
	if($msg==''){
		if(isset($_GET['id']) && $_GET['id']!=''){
			mysqli_query($con,"update contact_us set address='$address',email='$email',phone='$phone'  where id='$id'");
		}else{
			mysqli_query($con,"insert into contact_us(address,email,phone,status) values('$address','$email','$phone','1')");
		}
		header('location:contact_us.php');
		die();
	}
}
?>
<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>Contact Us</strong><small> Form</small></div>
                        <form method="post">
							<div class="card-body card-block">
                            <div class="form-group">
									<label for="categories" class=" form-control-label">Address</label>
									<input type="text" name="address" placeholder="Enter address" class="form-control" required value="<?php echo $address?>">
								</div>
							   <div class="form-group">
									<label for="categories" class=" form-control-label">Email</label>
									<input type="text" name="email" placeholder="Enter " class="form-control" required value="<?php echo $email?>">
								</div>
                                <div class="form-group">
									<label for="categories" class=" form-control-label">Phone</label>
									<input type="text" name="phone" placeholder="Enter content" class="form-control" required value="<?php echo $phone?>">
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
         
<?php
require('footer.inc.php');
?>