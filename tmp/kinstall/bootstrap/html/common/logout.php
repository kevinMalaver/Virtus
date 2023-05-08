<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 * @subpackage Common
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();
$span = 6;
?>
<div class="kblock kpbox">
	<div class="kcontainer  collapse in" id="kprofilebox">
		<div class="kbody">
		 <div class="kprofilebox row-fluid">
		  <?php if ($this->me->getAvatarImage('welcome')) {
			$span = 5;	?>
			<div class="kprofilebox-left span1">
				<?php echo $this->me->getAvatarImage('kavatar', 'welcome'); ?>
			</div>
		  <?php } 
		  if ( !$this->moduleHtml) $span+=6;
		  ?>
			<div class="kprofileboxcnt span<?php echo $span ?>">
				<ul class="kprofilebox-link unstyled nav nav-pills">
					<?php if (!empty($this->privateMessagesLink)) : ?><li><?php echo $this->privateMessagesLink ?></li><?php endif ?>
					<?php if (!empty($this->editProfileLink)) : ?><li><?php echo $this->editProfileLink ?></li><?php endif ?>
					<?php if (!empty($this->announcementsLink)) : ?><li><?php echo $this->announcementsLink ?></li><?php endif ?>
				</ul>
				<ul class="kprofilebox-welcome unstyled">
					<li><?php echo JText::_('COM_KUNENA_PROFILEBOX_WELCOME'); ?>, <strong><?php echo $this->me->getLink() ?></strong></li>
					<li class="kms"><?php if ($this->logout->enabled()) : ?>
					<form action="<?php echo KunenaRoute::_('index.php?option=com_kunena') ?>" method="post" name="login">
						<input type="hidden" name="view" value="user" />
						<input type="hidden" name="task" value="logout" />
						[K=TOKEN]
						<input type="submit" name="submit" class="pull-right kbutton btn-mini" value="<?php echo JText::_('COM_KUNENA_PROFILEBOX_LOGOUT'); ?>" />
					</form>
					
					<?php endif; ?>
					<strong>
					<?php echo JText::_('COM_KUNENA_MYPROFILE_LASTVISITDATE'); ?>:</strong> <span title="<?php echo KunenaDate::getInstance($this->me->lastvisitDate)->toKunena('ago'); ?>"><?php echo KunenaDate::getInstance($this->me->lastvisitDate)->toKunena('date_today'); ?></span>
					
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<!-- Module position -->
			<?php if ($this->moduleHtml) : ?>
			<div class = "kprofilebox-right span6">
				<div class="kprofilebox-modul">
					<?php echo $this->moduleHtml; ?>
				</div>
			</div>
			<?php endif; ?>

		 </div>
		</div>
	</div>
</div>
