/* JCE Editor - 2.3.4.2 | 09 December 2013 | http://www.joomlacontenteditor.net | Copyright (C) 2006 - 2013 Ryan Demmer. All rights reserved | GNU/GPL Version 2 or later - http://www.gnu.org/licenses/gpl-2.0.html */
(function($){var previewStyles=['fontFamily','fontSize','fontWeight','textDecoration','textTransform','color','backgroundColor'];function camelCase(str){return str.replace(/^-ms-/,"ms-").replace(/-([\da-z])/gi,function(all,letter){return letter.toUpperCase();});}
$(document).ready(function(){var init=true;$('div.styleformat-list').on('update',function(){var list=[],v="";$('div.styleformat',this).each(function(){var data={},v,p=this;if($('div.styleformat-item-title input',p).val()&&$('div.styleformat-item-element select',p).val()){$('input[type="text"], select',p).each(function(){var k=$(this).data('key'),v=$(this).val();if(v!==""){data[k]=v;}});}
if(!$.isEmptyObject(data)){list.push(data);}});if(list.length){v=JSON.stringify(list);}
if(!init){$('input[type="hidden"]',this).val(v).change();}});function updateStyles(n,string){$.each(string.split(';'),function(i,s){var kv=$.trim(s).split(':');if(kv.length>1){var k=$.trim(kv[0]),v=$.trim(kv[1]);if($.inArray(camelCase(k),previewStyles)!==-1){$(n).css(k,v);}}});}
$('input[type="text"], select',$('div.styleformat')).change(function(){$('div.styleformat-list').trigger('update');var title=$('div.styleformat-item-title input',$(this).parents('div.styleformat')),v=$(this).val();if($(this).data('key')==="element"){$(title).attr('class',"");if(/^(h[1-6]|em|strong|code|sub|sup)$/.test(v)){$(title).addClass(v);}}
if($(this).data('key')==="styles"){$(title).attr('style',"");updateStyles(title,v);}}).change();$('a.close.collapse','div.styleformat').on('click.collapse',function(e){$(this).siblings().not('.styleformat-item-title, .close').toggleClass('hide');$(this).toggleClass('icon-chevron-up icon-chevron-down');});$('div.styleformat a.close','div.styleformat-list').not('.plus, .handle, .collapse').click(function(e){if($('div.styleformat-list div.styleformat').length===1){$('input, select',this.parentNode).val("").removeAttr('style').removeAttr('class');$(this.parentNode).hide();}else{$(this.parentNode).remove();}
$('div.styleformat-list').trigger('update');e.preventDefault();});$('a.close.plus','div.styleformat-list').click(function(e){var $item=$(this).prev().clone(true).insertBefore(this).show();$('div',$item).removeClass('hide');$('a.close.collapse',$item).removeClass('icon-chevron-down').addClass('icon-chevron-up');$('input, select',$item).val("").removeAttr('style').removeAttr('class').first().focus();e.preventDefault();});$('div.styleformat-list').sortable({axis:'y',update:function(event,ui){$('div.styleformat-list').trigger('update');},handle:'a.handle',items:'div.styleformat',placeholder:"styleformat-highlight",start:function(event,ui){$(ui.placeholder).height($(ui.item).height());}});if($('div.styleformat','div.styleformat-list').length>1){$('div.styleformat div','div.styleformat-list').not('div.styleformat-item-title').addClass('hide');}
init=false;});})(jQuery);