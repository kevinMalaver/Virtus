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

$this->document->addScriptDeclaration('// <![CDATA[
var kunena_anonymous_name = "'.JText::_('COM_KUNENA_USERNAME_ANONYMOUS', true).'";
// ]]>');


if ($this->category->headerdesc) : ?>
	<div id="kforum-head" class="<?php echo isset ( $this->category->class_sfx ) ? ' kforum-headerdesc' . $this->escape($this->category->class_sfx) : '' ?>">
		<?php echo KunenaHtmlParser::parseBBCode ( $this->category->headerdesc ) ?>
	</div>
<?php endif ?>

<?php
	$this->displayPoll();
	$this->displayModulePosition( 'kunena_poll' );
	$this->displayTopicActions();
?>

<div class="kblock">
	<div class="kheader">
		<h2><span><?php echo JText::_('COM_KUNENA_TOPIC') ?> <?php echo $this->escape($this->topic->subject) ?></span></h2>
		<?php $this->displayModulePosition( 'kunena_topictitle' ); ?>
		<?php if ($this->usertopic->favorite) : ?><div class="kfavorite"></div><?php endif ?>
		<?php if (!empty($this->keywords)) : ?><div class="kkeywords"><?php echo JText::sprintf('COM_KUNENA_TOPIC_TAGS', $this->escape($this->keywords)) ?></div><?php endif ?>
	</div>
	<div class="kcontainer">
		<div class="kbody"><?php $this->displayMessages() ?></div>
	</div>
</div>
<?php $this->displayTopicActions(); ?>

<div class="kcontainer klist-bottom">
	<div class="kbody">
		<div class="kmoderatorslist-jump fltrt pull-right">
				<?php $this->displayForumJump (); ?>
		</div>
		<?php if (!empty ( $this->moderators ) ) : ?>
		<div class="klist-moderators">
				<?php
				echo '' . JText::_('COM_KUNENA_MODERATORS') . ": ";
				$modlinks = array();
				foreach ( $this->moderators as $moderator) {
					$modlinks[] = $moderator->getLink ();
				}
				echo implode(', ', $modlinks);
				?>
		</div>
		<?php endif; ?>
		<div class="clearfix"></div>
	</div>
</div>

<?php
if ($this->quickreply) {
	// Kunena bbcode editor
	$lang = JFactory::getLanguage();
	$langTag = substr($lang->getTag(),0,2);
		$hasLang = false;
	if (file_exists ( JPATH_COMPONENT . "/template/bootstrap/editor/lang/".$langTag.".js" )) {
		$hasLang = true;
		$wysibbOpt = '{lang: "'.$langTag.'",';
	} else $wysibbOpt = '{';
	$wysibbOpt.= "smilefind: '#smilie',
		buttons: 'bold,italic,underline,strike,sup,sub,|,img,video,link,smilebox,|,bullist,numlist,|,fontcolor,fontsize,fontfamily,|,justifyleft,justifycenter,justifyright,|,quote,code,php,table,removeFormat',
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
			}
		}
	}"; ?>
	<script src="http://cdn.wysibb.com/js/jquery.wysibb.min.js"></script>
	<?php if($hasLang) { ?>
	<script src="<?php echo juri::root().'components/com_kunena/template/bootstrap/editor/lang/'.$langTag.'.js"'?>"></script>
	<?php } ?>
	<script>
	function Wisywig($parent) {
		$parent.show();
		// if($parent.find('.wysibb').length() == 0) {
			$parent.find("textarea").wysibb(<?php echo $wysibbOpt ?>);
		// }
	}
	</script>
	<link rel="stylesheet" href="http://cdn.wysibb.com/css/default/wbbtheme.css" />
	<?php
}