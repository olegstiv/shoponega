<footer>

  <div id="footer" class="container">
  <div class="row">
	<div class="footer-blocks">
	  <?php echo $footerleft; ?>
	  <?php if ($informations) { ?>
      <div id="info" class="col-sm-3 column">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
		  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
		   <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
        </ul>
      </div>
      <?php } ?>
	  
	  
	  <div id="extra-link" class="col-sm-3 column">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li> 
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li> 
		  <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
		 <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
        </ul>
      </div>
	  
	  
	  <div id="account_link" class="col-sm-3 column">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li> 
		  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
		  <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
		  <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li> 
		  <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li> 
        </ul>
      </div>
	
 
   <?php echo $footerright; ?> 
  

	 
	  </div>
	
    </div>
    <!--<hr>-->
	
  </div>
  <div class="bottomfooter">
        <div class="container">
		 <div class="row">
        <ul class="list-unstyled">
			 <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>          	
         	 <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
			  <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
           	<li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
			<li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
			 <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
			 <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
		<p class="powered"><?php echo $powered; ?></p> 

		</div>
      </div>  
	</div>

</footer>

<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//--> 

<!-- Theme created by Welford Media for OpenCart 2.0 www.welfordmedia.co.uk -->

</body></html>