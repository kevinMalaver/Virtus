<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 * @subpackage User
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();
?>
<form action="<?php echo KunenaRoute::_('index.php?option=com_kunena') ?>" method="post" name="kuserform" class="form-validate" enctype="multipart/form-data">
	<input type="hidden" name="view" value="user" />
	<input type="hidden" name="task" value="save" />
	<input type="hidden" name="userid" value="<?php echo $this->user->id ?>" />
	<?php echo JHtml::_( 'form.token' ); ?>

<div id="kprofile-edit">
	<ul class="nav nav-tabs">
	  <li class="active"><a href="#edit_user" data-toggle="tab"><?php echo JText::_('COM_KUNENA_PROFILE_EDIT_USER'); ?></a></li>
	  <li><a href="#edit_profile" data-toggle="tab"><?php echo JText::_('COM_KUNENA_PROFILE_EDIT_PROFILE'); ?></a></li>
	  <?php if ($this->editavatar) : ?>
		<li><a href="#edit_avatar" data-toggle="tab"><?php echo JText::_('COM_KUNENA_PROFILE_EDIT_AVATAR'); ?></a></li>
	  <?php endif; ?>
	  <li><a href="#edit_settings" data-toggle="tab"><?php echo JText::_('COM_KUNENA_PROFILE_EDIT_SETTINGS'); ?></a></li>
	</ul>
	<div class="tab-content">
	  <div class="tab-pane active" id="edit_user"><?php $this->displayEditUser(); ?></div>
	  <div class="tab-pane" id="edit_profile"><?php $this->displayEditProfile(); ?></div>
	  <?php if ($this->editavatar) : ?>
		<div class="tab-pane" id="edit_avatar"><?php $this->displayEditAvatar(); ?></div>
	  <?php endif; ?>
	  <div class="tab-pane" id="edit_settings"><?php $this->displayEditSettings(); ?></div>
	</div>
	<div class="kbutton-container">
		<button class="kbutton ks validate" type="submit"><?php echo JText::_('COM_KUNENA_SAVE'); ?></button>
		<input type="button" name="cancel" class="kbutton" value="<?php echo (' ' . JText::_('COM_KUNENA_CANCEL') . ' ');?>"
			onclick="window.history.back();"
			title="<?php echo (JText::_('COM_KUNENA_EDITOR_HELPLINE_CANCEL'));?>" />
	</div>
</div>
</form>
