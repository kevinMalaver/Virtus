<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 * @subpackage Topic
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();

// Kunena bbcode editor
$lang = JFactory::getLanguage();
$langTag = substr($lang->getTag(),0,2);
	$hasLang = false;
if (file_exists ( JPATH_COMPONENT . "/template/bootstrap/editor/lang/".$langTag.".js" )) {
	$hasLang = true;
	$wysibbOpt = '{lang: "'.$langTag.'",';
} else $wysibbOpt = '{';
$wysibbOpt.= "smilefind: '#smilie',
	traceTextarea: true,
	buttons: 'bold,italic,underline,strike,sup,sub,|,img,video,link,smilebox,attachment,|,bullist,numlist,|,fontcolor,fontsize,fontfamily,|,justifyleft,justifycenter,justifyright,|,quote,code,php,table,removeFormat',
	allButtons: {
		quote: {
			transform: {
				'<blockquote class=\"uncited\"><div>{SELTEXT}</div></blockquote>':'[quote]{SELTEXT}[/quote]',
				'<div><b>{AUTHOR} ".jText::_('COM_KUNENA_POST_WROTE').":</b><div class=\"kmsgtext-quote\">{SELTEXT}</div></div>':'[quote=\"{AUTHOR}\"]{SELTEXT}[/quote]',
				'<div id=\"POST-{POSTID}\"><b>{AUTHOR} ".jText::_('COM_KUNENA_POST_WROTE').":</b><div class=\"kmsgtext-quote\">{SELTEXT}</div></div>':'[quote=\"{AUTHOR}\" post={POSTID}]{SELTEXT}[/quote]'
			}
		},
		php:{
			title: 'php code',
			buttonText: 'php',
			transform: {
				'<code class=\"php\">{SELTEXT}</code>':'[code type=php]{SELTEXT}[/code]'
			}
		},
		attachment: {
			title: CURLANG.add_attach,
			buttonHTML: '<span class=\"fonticon ve-tlb-attach1\">\uE017</span>',
			  transform: {
				'<strong>attachment {ID[0-9]}</strong> <span>{ALTFILE}</span>':'[attachment={ID[0-9]}]{ALTFILE}[/attachment]'
			  }
		}
	}
}";
?>

<tr id="kpost-message" class="krow<?php echo 1 + $this->k^=1;?>">


	<td colspan="2" class="kcol-last kcol-editor-field">
	<?php if (!$this->config->disemoticons) : ?>
		<div id="smilie" style="display:none"><?php
		$emoticons = KunenaHtmlParser::getEmoticons(0, 1);
		foreach ( $emoticons as $emo_code=>$emo_url ) {
			echo '<img class="smiley-img" src="' . $emo_url . '" border="0" alt="' . $emo_code . ' " title="' . $emo_code . ' "style="cursor:pointer"/> ';
		}
		?>
		</div>
	<?php endif; ?>
	<script src="<?php echo juri::root() ?>components/com_kunena/template/bootstrap/editor/jquery.wysibb.js"></script>
	<?php if($hasLang) { ?>
	<script src="<?php echo juri::root().'components/com_kunena/template/bootstrap/editor/lang/'.$langTag.'.js"'?>"></script>
	<?php } ?>
	<script>
	jQuery(function($) {
		
	  $("#kbbcode-message").wysibb(<?php echo $wysibbOpt ?>);
	})
	</script>
<link rel="stylesheet" href="<?php echo juri::root() ?>components/com_kunena/template/bootstrap/editor/theme/default/wbbtheme.css" />
		<textarea class="ktxtarea required input-xxlarge" name="message" id="kbbcode-message" rows="10" cols="50" tabindex="3"><?php echo $this->escape($this->message->message); ?></textarea>

		<!-- Hidden preview placeholder -->
		<div id="kbbcode-preview" style="display: none;"></div>
		<?php if ($this->message->exists()) : ?>
		<div class="clr"> </div>
		<fieldset>
			<legend><?php echo (JText::_('COM_KUNENA_EDITING_REASON')) ?></legend>
			<input class="kinputbox" name="modified_reason" size="40" maxlength="200" type="text" value="<?php echo $this->modified_reason; ?>" />
		</fieldset>
		<?php endif; ?>
	</td>
</tr>
