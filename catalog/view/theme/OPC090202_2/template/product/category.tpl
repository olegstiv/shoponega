<?php echo $header; ?>
<div class="container ">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>
      <h2 class="page-title"><?php echo $heading_title; ?></h2>
      <?php if ($thumb || $description) { ?>
      <div class="row category_thumb">
        <?php if ($thumb) { ?>
        <div class="col-sm-2 category_img"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" title="<?php echo $heading_title; ?>" class="img-thumbnail" /></div>
        <?php } ?>
        <?php if ($description) { ?>
        <div class="col-sm-10 category_description"><?php echo $description; ?></div>
        <?php } ?>
      </div>     
      <?php } ?>
       <?php if ($categories) { ?>
      <h3 class="refine-search"><?php echo $text_refine; ?></h3>
      <div class="row">
        <div class="col-sm-12 category_list">
          <ul>
            <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <?php } ?>
      <?php if ($products) { ?>
     
      <div class="category_filter">
        <div class="col-md-4 btn-list-grid">
          <div class="btn-group">
		  	<button type="button" id="grid-view" class="btn btn-default grid" data-toggle="tooltip" title="<?php echo $button_grid; ?>"><i class="fa fa-th"></i></button>
            <button type="button" id="list-view" class="btn btn-default list" data-toggle="tooltip" title="<?php echo $button_list; ?>"><i class="fa fa-th-list"></i></button>
          </div>
        </div>
		<div class="compare-total"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
		<div class="pagination-right">
		 <div class="sort-by-wrapper">
			<div class="col-md-2 text-right sort-by">
			  <label class="control-label" for="input-sort"><?php echo $text_sort; ?></label>
			</div>
			<div class="col-md-3 text-right sort">
			  <select id="input-sort" class="form-control" onchange="location = this.value;">
				<?php foreach ($sorts as $sorts) { ?>
				<?php if ($sorts['value'] == $sort . '-' . $order) { ?>
				<option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
				<?php } ?>
				<?php } ?>
			  </select>
			</div>
		 </div>
		 <div class="show-wrapper">
			<div class="col-md-1 text-right show">
			  <label class="control-label" for="input-limit"><?php echo $text_limit; ?></label>
			</div>
			<div class="col-md-2 text-right limit">
			  <select id="input-limit" class="form-control" onchange="location = this.value;">
				<?php foreach ($limits as $limits) { ?>
				<?php if ($limits['value'] == $limit) { ?>
				<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
				<?php } else { ?>
				<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
				<?php } ?>
				<?php } ?>
			  </select>
			</div>
		</div>
      </div>
	  </div>
	  
      <div class="row cat_prod">
        <?php foreach ($products as $product) { ?>
        <div class="product-layout product-list col-xs-12">
          <div class="product-block product-thumb">
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
				
            <div class="product-details grid">
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
			
			<div class="product-details list">
			<div class="caption">
			<h4 class="name"><a href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a></h4>
			<?php if ($product['rating']) { ?>
			<div class="rating">
			<?php for ($i = 1; $i <= 5; $i++) { ?>
			<?php if ($product['rating'] < $i) { ?>
			<span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
			<?php } else { ?>
			<span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
			<?php } ?>
			<?php } ?>
			</div>
			<?php } ?>
			<p class="desc"><?php echo $product['description']; ?></p>
			<div class="button-group">
			<button class="wishlist" type="button" data-toggle="tooltip" title="<?php echo $button_wishlist; ?>" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_wishlist; ?></span></button>
			<button class="compare" type="button" data-toggle="tooltip" title="<?php echo $button_compare; ?>" onclick="compare.add('<?php echo $product['product_id']; ?>');"><span><?php echo $button_compare; ?></span></button>
			<div class="quickview-button" data-toggle="tooltip" title="<?php echo $quick_view; ?>"> <a class="quickbox" href="<?php echo $product['quick']; ?>"></a></div>
			</div>
			</div>
			<div class="list-right">
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
			
			<button type="button" class="addtocart" onclick="cart.add('<?php echo $product['product_id']; ?>');"><span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
			
			</div>
			</div>
			
			</div>
          </div>
        </div>
        <?php } ?>
      </div>
       <div class="pagination-wrapper">
			<div class="col-sm-6 text-left page-link"><?php echo $pagination; ?></div>
			<div class="col-sm-6 text-right page-result"><?php echo $results; ?></div>
	   </div>     
      <?php } ?>
      <?php if (!$categories && !$products) { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>

