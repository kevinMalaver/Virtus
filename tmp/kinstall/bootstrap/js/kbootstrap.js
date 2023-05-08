/**
 * Kunena Component
 * @package Kunena.Template.Blue_Eagle
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/

/* Javascript file for debugging Mootools conflicts */
jQuery( function ($) {
	var $ = jQuery,kunena = $('#Kunena'),$attach = $('#kattachment-id'), $new,attachNum =1;
	$('.usersortable a').data('placement','bottom');
	$('#ktopmenu ul.menu').addClass('nav nav-tabs');
	kunena.find('.kbutton').addClass('btn btn-default');
	kunena.find('.kheader').addClass('page-header');
	kunena.find('.kmessage-left img,#kprofile-tabs .atachements-preview img').each( function(){
		var $img = $(this);
		$img.attr("data-src", $img.attr("src")).addClass("kgallery").parent().removeAttr("rel");
	});

	kunena.lightGallery({
	  selector:"img.kgallery",
	  exThumbImage:"data-src"
	}); 

	// show qreply form
	$('.kqreply').click( function(){
		$('.kreply-form').hide();
		var $this = $(this), formid = '#'+this.id+"_form";
			Wisywig($(formid));
		return false;
	});
	// show qreply form
	$('#kchecktask').click( function(){
		if($(this).val() ==='move') {
			$('#kchecktarget').attr('disabled',false);
		} else $('#kchecktarget').attr('disabled','disable');

		return false;
	});
	
	/* Logic for bulkactions */
	$('input.kcheckall').click( function(e){
		var $this = $(this), toggle = $this.is(':checked') ? 'checked' : false;
		$(this).closest('form').find('input.kcheck').attr('checked',toggle);
	});
	kunena.find('a,.kicon-profile,.editlinktip').bstooltip();
	kunena.find('.kattachment-old .kattachment-insert').show().click(function(){
		var $li = $(this).closest('li'),id = $li.data('id'), name = $li.find('.kfilename').text();
			 $('#kbbcode-message').execCommand('attachment',{id: id,altfile:name});
	});
	if($attach.length) {
		$attach.delegate( "a.kbutton", "click", function() {
			var $this = $(this);
			if ($(this).hasClass('kattachment-remove')) $this.closest('.kattachment-id-container').remove();
			else if ($(this).hasClass('kattachment-insert')) {
				
				//$('#kbbcode-message').execCommand('attachment',{id: id,altfile:name});
				console.log('TODO');
			}
			return false;
		});
		$new = $('.kattachment-id-container').clone(true);
		$new.find('.kfile-input').attr('name','kattachment1');
		$new.appendTo('#kattachment-id');
		$('.kattachment-id-container').eq(0).hide();
		$('.kfile-input').change(function(){
			//get file name
			var $this = $(this); fileName = $this.val().split(/\\/).pop(),$container = $this.closest('.kattachment-id-container');
			attachNum++;
			//get file extension
			// var fileExt = 'customfile-ext-' + fileName.split('.').pop().toLowerCase();
			//update the feedback
			$container.find('.kfile-input-textbox').text(fileName);
			$container.find('a').show();
			$new = $('.kattachment-id-container').eq(0).clone(true).show();
			$new.find('.kfile-input').attr('name','kattachment'+attachNum);
			$new.appendTo('#kattachment-id');
			
		});
	}
	$('#postform').submit(function(){
		if ( typeof document.formvalidator != "undefined" || document.formvalidator.isValid(f)) {
			return true;
		}
		return false;
	});
});
// if ( !!(window.addEventListener) )
// window.addEventListener("DOMContentLoaded", kbootstrap)
// else // MSIE
// window.attachEvent("onload", kbootstrap)