<div id="Tab_Category_Slider" class="category_tab box">
	<div class="tabs">
	<div class="box-heading"><?php echo $heading_title; ?></div>
		<ul class="nav nav-tabs">
			<?php $cnt=0; foreach($categories as $category) { echo $category['category_tab']; } ?>
        </ul>
		<div class="tab-content">
			<?php foreach($categories as $category) { echo $category['category_div'];?>
			<?php if($category['category_id'] != $category['target_category_id']) { ?>
				<div id="tab_spinner"></div>
			<?php } else { ?>
			<div class="owl-carousel owl-demo-tabcate">
			<?php foreach ($products as $product) { ?>
				  <div class="item text-center">
	  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<div class="product-block product-thumb transition">
	  <div class="product-block-inner">
	  	
			
			<div class="image">
										<?php if ($product['thumb_swap']) { ?>
										<a href="<?php echo $product['href']; ?>">
										<img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive reg-image"/>
										<img class="img-responsive hover-image" src="<?php echo $product['thumb_swap']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>"/>
										</a>
										<?php } else {?>
										<a href="<?php echo $product['href']; ?>">
										<img src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" class="img-responsive"/></a>
										<?php } ?>
										
										<?php if (!$product['special']) { ?>       
										<?php } else { ?>
										<span class="saleicon sale">Sale</span>         
										<?php } ?>
											
										</div>
      	 <div class="product-details">

		
		<div class="caption">
		<h4 class="name"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a></h4>
											
	<?php if ($product['price']) { ?>
	<p class="price">
												  <?php if (!$product['special']) { ?>
												  <?php echo $product['price']; ?>
												  <?php } else { ?>
												  
												  <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
												   <span class="percentsaving"><?php echo $product['percentsaving']; ?>%</span>
												  <?php } ?>
												  <?php if ($product['tax']) { ?>
												  <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
												  <?php } ?>
												</p>
	 <?php } ?>		
	 <?php /*?><?php if ($product['rating']) { ?><?php */?>
	 <div class="rating">
	 <?php for ($i = 1; $i <= 5; $i++) { ?>
	<?php if ($product['rating'] < $i) { ?>
	<span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
	<?php } else { ?>
		<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
	<?php } ?>
	<?php } ?>
	</div>
	<?php /*?><?php } ?><?php */?>
	<div class="button-group">
	<button type="button" class="addtocart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
	<button class="wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
	<button class="compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
	<div class="quickview-button" data-toggle="tooltip" title="<?php echo $quick_view; ?>"> <a class="quickbox" href="<?php echo $product['quick']; ?>"><i class="fa fa-eye" aria-hidden="true"></i></a></div>
	</div>
	</div>
		
	  </div>
  	</div>
	</div>
	  </div>
	 </div>
	  		<?php } ?>
	  		</div>
			  <?php } ?>
 			</div>
			<?php } ?>
		</div>  
</div>
</div>

<script type="text/javascript"><!--
$('#Tab_Category_Slider .owl-demo-tabcate').owlCarousel({
      items: 5,
	navigation: true,
	navigationText: ['<span class="left"><a class="fa prev fa-arrow-left">&nbsp;</a></span>', '<span class="right"><a class="fa next fa-arrow-right">&nbsp;</a></span>'],
	pagination: false,
	transitionStyle : "fade",
	itemsCustom : [
        [0, 1],
        [379, 2],
        [549, 3],
        [767, 3],
        [979, 3],
		[1024, 4],
        [1200, 4],
		[1450, 5],
      ]
  });
function <?php echo $rand_str; ?>loadAjaxData(category_id) {
	var unavailabledates = <?php echo json_encode($setting); ?>;
	var dataToSend = {'category_id' : category_id, 'setting' : unavailabledates } ;
	$.ajax({
		type: 'POST',
		data: dataToSend,
		url: '<?php echo HTTP_SERVER;?>index.php?route=extension/module/category_tab/ajaxloaddata',
		beforeSend: function() {
		  $("#<?php echo $rand_str;?>").html('<div style="text-align:center;"></div>');
		  //http://www.bigtravelsghana.com/img/images/ajax-loader.gif
	   },
		success: function (data) {
			$('#Tab_Category_Slider').replaceWith(data);
			$('#Tab_Category_Slider .owl-demo-tabcate').owlCarousel({
				items: 5,
				navigation: true,
				navigationText: ['<span class="left"></span>', '<span class="right"></span>'],
				pagination: false,
				transitionStyle : "fade",
				itemsCustom : [
					[0, 1],
					[379, 2],
					[549, 3],
					[767, 3],
					[979, 3],
					[1024, 4],
					[1200, 4],
					[1450, 5],
				 ]
			});
			//alert(data);
		}
	});
}
--></script>
<script type="text/javascript">
	// Can also be used with $(document).ready()
	$(document).ready(function() {		
	  $("#tab_spinner").fadeOut("slow");
	});	
</script>

<!-- ======= Quick view JS ========= -->
<script> 

function quickbox(){
 if ($(window).width() > 767) {
		$('.quickview-button').magnificPopup({
			type:'iframe',
			delegate: 'a',
			preloader: true,
			tLoading: 'Loading image #%curr%...',
		});
 }	
}
jQuery(document).ready(function() {quickbox();});
jQuery(window).resize(function() {quickbox();});

</script>