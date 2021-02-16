<!doctype html>
<html>
	{include file='widgets/header.tpl'}
	<body class="homepage" cz-shortcut-listen="true">
    <div id="preloader" class="Fixed">
      <div data-loader="circle-side"></div>
    </div>
    <!-- /Preload-->
    
    <div id="page">	
      {include file='widgets/nav-bar.tpl' active='home'}
      {include file='modules/home/home.tpl'}
      {include file='widgets/footer.tpl'}
      {include file='widgets/scripts.tpl'}
      <div id="toTop"></div>
    </div>
	</body>
</html>