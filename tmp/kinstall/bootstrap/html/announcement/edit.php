<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 * @subpackage Announcement
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();

JHtml::_('behavior.formvalidation');
$this->document->addScriptDeclaration('// <![CDATA[
	function kunenaValidate(f) { return document.formvalidator.isValid(f); }
// ]]>');
?>
<div class="kblock kannouncement">
	<div class="kheader">
		<h2><?php echo JText::_('COM_KUNENA_ANN_ANNOUNCEMENTS') ?>: <?php echo $this->announcement->exists() ? JText::_('COM_KUNENA_ANN_EDIT') : JText::_('COM_KUNENA_ANN_ADD') ?></h2>
	</div>
	<div class="kcontainer" id="kannouncement">
		<div class="kactions"><?php echo JHtml::_('kunenaforum.link', $this->returnUrl, JText::_('COM_KUNENA_ANN_CPANEL'), JText::_('COM_KUNENA_ANN_CPANEL')) ?></div>
		<div class="kbody">
			<div class="kanndesc">
				<form action="<?php echo KunenaRoute::_('index.php?option=com_kunena&view=announcement') ?>" class="form-validate form-horizontal" method="post" name="editform" onsubmit="return kunenaValidate(this);">
					<input type="hidden" name="task" value="save" />
					<?php echo $this->displayInput('id') ?>
					<?php echo JHtml::_( 'form.token' ) ?>

				  <div class="control-group">
					<label class="control-label">
						<?php echo JText::_('COM_KUNENA_ANN_TITLE') ?>:
					</label>
					<div class="controls">
						<?php echo $this->displayInput('title', 'class="klarge input-xxlarge required"') ?>
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label">
						<?php echo JText::_('COM_KUNENA_ANN_SORTTEXT') ?>:
					</label>
					<div class="controls">
						<?php echo $this->displayInput('sdescription', 'class="ksmall input-xxlarge required" rows="20" cols="4"') ?>
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label">
						<?php echo JText::_('COM_KUNENA_ANN_LONGTEXT') ?>:
					</label>
					<div class="controls">
						<?php echo $this->displayInput('description', 'class="klarge input-xxlarge" rows="20" cols="16"') ?>
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label">
						<?php echo JText::_('COM_KUNENA_ANN_DATE') ?>:
					</label>
					<div class="controls">
						<?php echo $this->displayInput('created', 'addcreated', 'kanncreated') ?>
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label">
						<?php echo JText::_('COM_KUNENA_ANN_SHOWDATE') ?>:
					</label>
					<div class="controls">
						<?php echo $this->displayInput('showdate') ?>
					</div>
				  </div>
				  <div class="control-group">
					<label class="control-label">
						<?php echo JText::_('COM_KUNENA_ANN_PUBLISH') ?>:
					</label>
					<div class="controls">
						<?php echo $this->displayInput('published') ?>
					</div>
				  </div>
					<input name="submit" class="kbutton btn btn-primary" type="submit" value="<?php echo JText::_('COM_KUNENA_SAVE') ?>"/>
					<input onclick="window.history.back();" name="cancel" class="kbutton btn btn-default" type="button" value="<?php echo JText::_('COM_KUNENA_CANCEL') ?>"/>
				</form>
			</div>
		</div>
	</div>
</div>
