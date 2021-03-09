<!doctype html>
<html>
<style>
div .carouselExampleControls {
    max-width: 100px;
}
</style>
	{include file='administrator/common/header.tpl'}
	<body cz-shortcut-listen="true" class="fixed-nav sticky-footer" id="page-top">	
		{include file='administrator/common/sidebar.tpl'}			
		<div class="content-wrapper">
			<div class="container-fluid">
				{include file='administrator/common/top-bar.tpl'}
                <div class="box_general">
			<div class="header_box">
				<h2 class="d-inline-block">Banner List</h2>
            
                <div class="actions">
                    <a class="btn_1 medium" href="{$adminroot}/banner/add" > Add new banner</a>
                </div>
			</div>
			<div class="list_general">
				<ul>
					{foreach from=$bannerArray key=k item=v}
					<li>
					<div id="carouselExampleControls{$v['id']}" class="carousel slide carouselExampleControls" data-ride="carousel">
							<div class="carousel-inner">
							{$imagearray = explode(',',$v['image'])}
							
							{foreach from=$imagearray key=index item=image name=count}
							
								<div class="carousel-item {if $smarty.foreach.count.index == 0} active {/if}">
								<img class="d-block w-100" style="height:80px" src="{SITE_URL}/administrator/source/upload/banner/{$image}" alt="First slide">
								</div>
								
							{/foreach}
							</div>
							<a class="carousel-control-prev" href="#carouselExampleControls{$v['id']}" role="button" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="carousel-control-next" href="#carouselExampleControls{$v['id']}" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
							</div>
						<h4>{$v['title']}</h4>
						<ul class="booking_details">	
							<!--<li><strong> Title </strong> : {$v['title']}</li>-->
						</ul>
						
						<ul class="buttons">
							<a class="btn_1" href="{$adminroot}/banner/edit?id={$v['id']}" ><i class="fa fa-fw fa-edit"></i>Edit</a>	
							<li><a href="{$adminroot}/banner/delete?id={$v['id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-times-circle-o"></i> Cancel</a></li>	
							<li><a href="{$adminroot}/banner/view?id={$v['id']}" class="btn_1 gray delete"><i class="fa fa-fw fa-eye"></i> View </a></li>
						</ul>
					</li>
					{/foreach}
				</ul>
			</div>
		</div>
            </div>
   	    </div>
    <!-- /.container-wrapper-->

    {include file='administrator/common/footer.tpl'}
    {include file='administrator/common/scripts.tpl'}	
</body>
</html>