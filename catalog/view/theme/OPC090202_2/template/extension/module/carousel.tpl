<div id="carousel-<?php echo $module; ?>" class="box">
	<div class="box-heading">Brands</div>
	<div class="customNavigation">
		<a class="prev fa"></a>
		<a class="next fa"></a>
	</div>
<div class="box-content">
  <div class="product-carousel" id="module-<?php echo $module; ?>-carousel">
    <?php foreach ($banners as $banner) { ?>
    	<div class="slider-item">
		<div class="product-block">
		<div class="product-block-inner">
			<?php if ($banner['link']) { ?>
   <a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" /></a>
    <?php } else { ?>
    <img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" />
    <?php } ?>
		</div></div></div>
		
    <?php } ?>
	
  </div>
  <?php echo $rightbrand; ?> 
  </div>
</div>

<span class="module_default_width" style="display:none; visibility:hidden"></span>