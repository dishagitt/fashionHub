<?php
    require('connect.php');
    require('function.php');
    $cat_res=mysqli_query($con,"select * from categories where status=1 order by categories asc");
    $cat_arr=array();
    while($row=mysqli_fetch_assoc($cat_res)){
        $cat_arr[]=$row;
    }
  
    $totalProduct="";
?>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Ecommerce Fashion Website</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/core.css">
    <link rel="stylesheet" href="css/shortcode/shortcodes.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/custom.css">
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
        <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->  

    <!-- Body main wrapper start -->
    <div class="wrapper">
        <!-- Start Header Style -->
        <header id="htc__header" class="htc__header__area header--one">
            <!-- Start Mainmenu Area -->
            <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
                <div class="container">
                    <div class="row">
                        <div class="menumenu__container clearfix">
                            <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5"> 
                                <div class="logo">
                                     <a href="index.php"><img src="images/logo/logomain.png" alt="logo images" style="height:80px;width:450px;"></a>
                                </div>
                            </div>
                            <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                                <nav class="main__menu__nav hidden-xs hidden-sm">
                                    <ul class="main__menu">
                                        <li class="drop"><a href="index.php">Home</a></li>
                                        <?php
                                            foreach($cat_arr as $list){
                                                ?>
                                                 <li class="drop"><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a>
                                                <?php
                                                    $cat_id=$list['id'];
                                                    $sub_cat_res=mysqli_query($con,"select * from sub_categories where status='1' and categories_id='$cat_id'");
                                                    if(mysqli_num_rows($sub_cat_res)>0){

                                                ?>
                                                 <ul class="dropdown">
                                                    <?php
                                                    while($sub_cat_rows=mysqli_fetch_assoc($sub_cat_res)){
                                                        echo '<li><a href="categories.php?id='.$list['id'].'&sub_categories='.$sub_cat_rows['id'].'">'.$sub_cat_rows['sub_categories'].'</a></li>';
                                                    }
                                                    
                                                    ?>
                                                </ul>
                                                <?php } ?>
                                                </li>
                                                <?php
                                            }
                                        ?>
                                        <li><a href="about.php">About Us</a></li>
                                        <li><a href="contact.php">Contact Us</a></li>
                                    </ul>
                                </nav>

                                <div class="mobile-menu clearfix visible-xs visible-sm">
                                    <nav id="mobile_dropdown">
                                        <ul>
                                            <li><a href="index.php">Home</a></li>
                                            <?php
                                                foreach($cat_arr as $list){
                                            ?>
                                                 <li><a href="categories.php?id=<?php echo $list['id']?>"><?php echo $list['categories']?></a>
                                                 <?php
                                                    $cat_id=$list['id'];
                                                    $sub_cat_res=mysqli_query($con,"select * from sub_categories where status='1' and categories_id='$cat_id'");
                                                    if(mysqli_num_rows($sub_cat_res)>0){

                                                ?>
                                                 <ul class="dropdown">
                                                    <?php
                                                    while($sub_cat_rows=mysqli_fetch_assoc($sub_cat_res)){
                                                        echo '<li><a href="categories.php?id='.$list['id'].'&sub_categories='.$sub_cat_rows['id'].'">'.$sub_cat_rows['sub_categories'].'</a></li>';
                                                    }
                                                    
                                                    ?>
                                                </ul>
                                                <?php } ?>
                                                </li>
                                            <?php
                                                }
                                            ?>
                                            <li><a href="about.php">About Us</a></li>
                                            <li><a href="contact.php">contact</a></li>
                                        </ul>
                                    </nav>
                                </div>  
                            </div>
                            <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                                <div class="header__right">
                                    <div class="header__account">
                                    <?php if(isset($_SESSION['USER_LOGIN'])){
											echo '<a href="logout.php">Logout</a><a href="my_order.php">MyOrder</a>';
										}else{
											echo '<a href="login.php">Login/Register</a>';
										}
										?>            
                                        
                                    </div>
                                    <!-- <div class="htc__shopping__cart">
                                        <a class="cart__menu" href="cart.php"><i class="icon-handbag icons"></i></a>
                                        <a href="cart.php"><span class="htc__qua"><?php echo $totalProduct ?></span></a>
                                    </div> -->
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mobile-menu-area"></div>
                </div>
            </div>
