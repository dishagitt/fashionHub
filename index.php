<?php
    require("header.php");
?>

<div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        <!-- <div class="offset__wrapper"> --> 

            <!-- Start Search Popap  -->

            <!-- <div class="search__area"> 
                <div class="container" >
                    <div class="row" >
                        <div class="col-md-12" >
                            <div class="search__inner">
                                <form action="#" method="get">
                                    <input placeholder="Search here... " type="text">
                                    <button type="submit"></button>
                                </form>
                                <div class="search__close__btn">
                                    <span class="search__close__btn_icon"><i class="zmdi zmdi-close"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
             </div>  -->
             <!-- End Search Popap  -->
        <!-- </div> -->
         <!-- End Offset Wrapper --> 

        <!-- Start Slider Area -->
        <div class="slider__container slider--one bg__cat--3">
            <div class="slide__container slider__activation__wrap owl-carousel">
                <!-- Start Single Slide -->
                <div class="single__slide animation__style01 slider__fixed--height">
                    <div class="container">
                        <div class="row align-items__center">
                            <div class="col-md-7 col-sm-7 col-xs-12 col-lg-6">
                                <div class="slide">
                                    <div class="slider__inner">
                                        <h2>collection 2023</h2>
                                        <h1>FASHION HUB</h1>
                                        <div class="cr__btn">
                                            <a href="#">Shop Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-sm-5 col-xs-12 col-md-5">
                                <div class="slide__thumb">
                                    <img src="images/brand/slide2.jpg" alt="slider images">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Single Slide -->
                
            </div>
        </div>
        <!-- Start Slider Area -->
        <!-- Start Category Area -->
        <section class="htc__category__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">New Arrivals</h2>
                            <p>All New Arrivals Are Shown Here</p>
                        </div>
                    </div>
                </div>
                <div class="htc__product__container">
                    <div class="row">
                        <div class="product__list clearfix mt--30">
                            <?php
                                $get_product=get_product($con,4);
                                foreach($get_product as $list){
                            ?>
                            <!-- Start Single Category -->
                            <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                                <div class="category">
                                    <div class="ht__cat__thumb">
                                        <a href="product.php?id=<?php echo $list['id'] ?>">
                                            <img src="<?php echo PRODUCT_IMAGE_SITE_PATH. $list['image'] ?>" style="height:23rem;width:20rem;" alt="product images">
                                        </a>
                                    </div>
                                   
                                    <div class="fr__product__inner">
                                        <h4><a href="product-details.html"><?php echo $list['pname'] ?></a></h4>
                                        <ul class="fr__pro__prize">
                                            <li class="old__prize"><?php echo $list['price'] ?></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Category -->
                            <?php
                                }
                            ?>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Category Area -->
        <!-- Start Product Area -->
        <section class="ftr__product__area ptb--100">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="section__title--2 text-center">
                            <h2 class="title__line">Best Seller</h2>
                            <p>All Best Selling Clothes Are Hear</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="product__wrap clearfix">
                            <?php
                                $get_product=get_product($con,4,'','','yes');
                                foreach($get_product as $list){
                            ?>
                        <!-- Start Single Category -->
                        <div class="col-md-4 col-lg-3 col-sm-4 col-xs-12">
                            <div class="category">
                                <div class="ht__cat__thumb">
                                    <a href="product.php?id=<?php echo $list['id']?>">
                                        <img src="<?php echo PRODUCT_IMAGE_SITE_PATH.$list['image']?>" style="height:23rem;width:20rem;" alt="product images">
                                    </a>
                                </div>
                                
                                <div class="fr__product__inner">
                                    <h4><a href="product-details.html"><?php echo $list['pname']?></a></h4>
                                    <ul class="fr__pro__prize">
                                        <li><?php echo $list['price']?></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Category -->
                        <?php } ?>
                        
                    </div>
                </div>
            </div>
        </section>
        <!-- End Product Area -->

<?php
    require("footer.php");
?>