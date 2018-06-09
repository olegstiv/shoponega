<div class="box newsletter">
	<div class="box-heading">newsletter</div>
<div class="news">
<div class="newsleft">
<span class="news-title1"><?php echo $heading_title1; ?></span>
<span class="news-title2"><?php echo $heading_title2; ?></span>
</div>
<div class="newsright">
<div class="list-unstyled">
<div>
<div class="row">
	
	<form method="post">
		<div class="form-group required">
            <label class="col-sm-2 control-label"><?php echo $text_email; ?></label>
            <div class="input-news">
              <input type="email" name="txtemail" id="txtemail" value="" placeholder="<?php echo $text_placeholder; ?>" class="form-control input-lg" />
            </div>
			<div class="subscribe-btn">
              <button type="submit" class="btn btn-default btn-lg" onclick="return subscribe();"><?php echo $text_subscribe; ?></button>  
            </div>
		</div>	
		</form>
          
</div>
</div>
</div>
</div>
</div>
</div>