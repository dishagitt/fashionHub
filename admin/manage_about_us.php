<?php
require('top.inc.php');
$content='';
$msg='';
if(isset($_GET['id']) && $_GET['id']!=''){
	$id=get_safe_value($con,$_GET['id']);
	$res=mysqli_query($con,"select * from about_us where id='$id'");
	$check=mysqli_num_rows($res);
	if($check>0){
		$row=mysqli_fetch_assoc($res);
        $content=$row['content'];
	}else{
		header('location:about_us.php');
		die();
	}
} 

if(isset($_POST['submit'])){
    $content=get_safe_value($con,$_POST['content']);
	$res=mysqli_query($con,"select * from about_us where content='$content'");
	$check=mysqli_num_rows($res);
	if($check>0){
		if(isset($_GET['id']) && $_GET['id']!=''){
			$getData=mysqli_fetch_assoc($res);
			if($id==$getData['id']){
			
			}else{
				$msg="Content already exist";
			}
		}else{
			$msg="Content already exist";
		}
	}
	
	if($msg==''){
		if(isset($_GET['id']) && $_GET['id']!=''){
			mysqli_query($con,"update about_us set content='$content' where id='$id'");
		}else{
			mysqli_query($con,"insert into about_us(content,status) values('$content','1')");
		}
		header('location:about_us.php');
		die();
	}
}
?>
<div class="content pb-0">
            <div class="animated fadeIn">
               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-header"><strong>About Us</strong><small> Form</small></div>
                        <form method="post">
							<div class="card-body card-block">
                                <div class="form-group">
									<label for="categories" class=" form-control-label">Content</label>
									<input type="textarea" name="content" placeholder="Enter content" class="form-control" required value="<?php echo $content?>">
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