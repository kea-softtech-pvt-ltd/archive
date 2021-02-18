<style>
.breadcrumb {
  text-transform: capitalize;
}
</style>
<ol class="breadcrumb">
	<li class="breadcrumb-item active">

		{assign var="uri" value=$smarty.server.REQUEST_URI|pathinfo}

		{assign var="exploded" value="/"|explode:$uri["dirname"]}

		<a href="http://{$smarty.server.HTTP_HOST}"></a>

		{foreach from=$exploded item=element}

 			{if $element != ""} {/if}

		{/foreach}
		
		<a href="#">{$element|replace:'-':' '}</a> / <a href="#"> {$uri["filename"]|replace:'-':' '}</a>
	</li>
</ol>

