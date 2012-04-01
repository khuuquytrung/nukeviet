<!-- BEGIN: main -->
<table id="checkchmod" cellspacing="0" summary="summary" style="width: 100%;">
	<tr>
		<th scope="col" abbr="{LANG.update_info_backage}" class="nobg" style="width:380px">{LANG.update_info_backage}</th>
		<th scope="col">{LANG.update_value}</th>
	</tr>
	<tr>
		<th scope="col" class="spec text_normal">{LANG.update_release_date}</th>
		<td><span class="highlight_green">{RELEASE_DATE}</span></td>
	</tr>
	<tr>
		<th scope="col" class="specalt text_normal">{LANG.update_author}</th>
		<td><span class="highlight_green">{CONFIG.author}</span></td>
	</tr>
	<tr>
		<th scope="col" class="spec text_normal">{LANG.update_to_version}</th>
		<td><span class="highlight_green">{CONFIG.to_version}</span></td>
	</tr>
	<tr>
		<th scope="col" class="specalt text_normal">{LANG.update_to_version_support}</th>
		<td><span class="highlight_green">{ALLOW_OLD_VERSION}</span></td>
	</tr>
	<tr>
		<th scope="col" class="spec text_normal">{LANG.update_website_support}</th>
		<td><span class="highlight_green"><a href="{CONFIG.support_website}" title="{CONFIG.support_website}" target="_blank">{CONFIG.support_website}</a></span></td>
	</tr>
	<tr>
		<th scope="col" class="specalt text_normal">{LANG.update_auto_type}</th>
		<td><span class="highlight_green">{UPDATE_AUTO_TYPE}</span></td>
	</tr>
</table>
<table id="checkchmod" cellspacing="0" summary="summary" style="width: 100%;">
	<tr>
		<th scope="col" abbr="{LANG.update_version_current}" class="nobg" style="width:380px">{LANG.update_version_current}</th>
		<th scope="col">{LANG.update_value}</th>
	</tr>
	<tr>
		<th scope="col" class="spec text_normal">{LANG.update_version_current_name}</th>
		<td><span class="highlight_green">{DATA.current_version}</span></td>
	</tr>
	<tr>
		<th scope="col" class="specalt text_normal">{LANG.update_ability}</th>
		<td><span class="highlight_green">{DATA.ability}</span></td>
	</tr>
</table>
<!-- BEGIN: canupdate -->
<div class="infook">
	{LANG.update_info_start}
</div>
<ul class="control_t fr">
	<li><span class="next_step"><a
		href="{NV_BASE_SITEURL}install/update.php?step=2">{LANG.next_step}</a></span>
	</li>
</ul>
<!-- END: canupdate -->
<!-- BEGIN: cannotupdate -->
<div class="infoerror" id="infodetectedupg">
	{LANG.update_cannot_start}.<br />
	<strong><a class="delete_update_backage" href="{URL_DELETE}" title="{LANG.update_package_delete}">{LANG.update_package_delete}</a></strong>
	<script type="text/javascript">
	$(document).ready(function(){
		$('.delete_update_backage').click(function(){
			if( confirm( nv_is_del_confirm[0] ) ){
				$('#infodetectedupg').append('<div id="dpackagew"><img src="{NV_BASE_SITEURL}images/load_bar.gif" alt="Waiting..."/></div>');
				$.get( $(this).attr('href') , function(e){
					$('#dpackagew').remove()
					if( e == 'OK' ){
						window.location = '{URL_RETURN}';
					}else{
						alert(e);
					}
				});
			}
			return !1;
		});
	});
	</script>
</div>
<!-- END: cannotupdate -->
<!-- END: main -->