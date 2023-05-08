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

JHtml::_('behavior.calendar');
// JHtml::_('behavior.tooltip');
?>
<div id="kprofile-rightcoltop">
	<div class="kprofile-rightcol2">
<?php
	$this->displayTemplateFile('user', 'default', 'social');
?>
<div class="clearfix"></div>
	</div>
	<div class="kprofile-rightcol1">
		<ul class="unstyled">
			<li><span class="kicon-profile kicon-profile-location"></span> <strong><?php echo JText::_('COM_KUNENA_MYPROFILE_LOCATION'); ?>:</strong> <?php echo $this->locationlink; ?></li>
			<!--  The gender determines the suffix on the span class- gender-male & gender-female  -->
			<li><span class="kicon-profile kicon-profile-<?php echo $this->genderclass; ?>"></span> <strong><?php echo JText::_('COM_KUNENA_MYPROFILE_GENDER'); ?>:</strong> <?php echo $this->gender; ?></li>
			<li class="bd"><span class="kicon-profile kicon-profile-birthdate"></span> <strong><?php echo JText::_('COM_KUNENA_MYPROFILE_BIRTHDATE'); ?>:</strong> <span title="<?php echo KunenaDate::getInstance($this->profile->birthdate)->toKunena('ago', 'GMT'); ?>"><?php echo KunenaDate::getInstance($this->profile->birthdate)->toKunena('date', 'GMT'); ?></span>
			<!--  <a href="#" title=""><span class="bday-remind"></span></a> -->
			</li>
		</ul>
	</div>
</div>

<div class="clrline"></div>
<div id="kprofile-rightcolbot">
	<div class="kprofile-rightcol2">
		<?php if ($this->email || !empty($this->profile->websiteurl)): ?>
			<ul class="unstyled">
				<?php if ($this->email): ?>
					<li><span class="kicon-profile kicon-profile-mail"></span><?php echo $this->email; ?></li>
				<?php endif; ?>
				<?php if (!empty($this->profile->websiteurl)): ?>
					<?php // FIXME: we need a better way to add http/https ?>
					<li><span class="kicon-profile kicon-profile-website"></span><a href="<?php echo $this->escape($this->websiteurl); ?>" target="_blank"><?php echo KunenaHtmlParser::parseText(trim($this->profile->websitename) ? $this->profile->websitename : $this->websiteurl); ?></a></li>
				<?php endif; ?>
			</ul>
		<?php endif;?>
	</div>
	<div class="kprofile-rightcol1">
		<h4><?php echo JText::_('COM_KUNENA_MYPROFILE_SIGNATURE'); ?></h4>
		<div class="kmsgsignature"><div><?php echo $this->signatureHtml ?></div></div>
	</div>

</div>

<div class="clrline"></div>

<div id="kprofile-tabs">
	<ul class="nav nav-tabs">
		<?php $active=' class="active"';
		if($this->showUserPosts) : ?>
			<li <?php echo $active ?>><a href="#USERPOSTS" data-toggle="tab"><?php echo JText::_('COM_KUNENA_USERPOSTS'); ?></a></li>
		<?php $active="";endif; ?>
		<?php if ($this->showSubscriptions) :?>
			<li <?php echo $active ?>><a href="#SUBSCRIPTION" data-toggle="tab"><?php echo JText::_('COM_KUNENA_SUBSCRIPTIONS'); ?></a></li>
		<?php $active="";endif; ?>
		<?php if ($this->showFavorites) : ?>
			<li <?php echo $active ?>><a href="#FAVORITES" data-toggle="tab"><?php echo JText::_('COM_KUNENA_FAVORITES'); ?></a></li>
		<?php $active="";endif; ?>
		<?php if($this->showThankyou) : ?>
			<li <?php echo $active ?>><a href="#THANK_YOU" data-toggle="tab"><?php echo JText::_('COM_KUNENA_THANK_YOU'); ?></a></li>
		<?php $active="";endif; ?>
		<?php if ($this->showUnapprovedPosts): ?>
			<li <?php echo $active ?>><a href="#MESSAGE_ADMINISTRATION" data-toggle="tab"><?php echo JText::_('COM_KUNENA_MESSAGE_ADMINISTRATION'); ?></a></li>

		<?php $active="";endif; ?>
		<?php if ($this->showAttachments): ?>
			<li <?php echo $active ?>><a href="#MANAGE_ATTACHMENTS" data-toggle="tab"><?php echo JText::_('COM_KUNENA_MANAGE_ATTACHMENTS'); ?></a></li>

		<?php $active="";endif;?>
		<?php if ($this->showBanManager): ?>
			<li <?php echo $active ?>><a href="#BAN_BANMANAGER" data-toggle="tab"><?php echo JText::_('COM_KUNENA_BAN_BANMANAGER'); ?></a></li>
		<?php $active="";endif;?>
		<?php if ($this->showBanHistory):?>
			<li <?php echo $active ?>><a href="#BAN_BANHISTORY" data-toggle="tab"><?php echo JText::_('COM_KUNENA_BAN_BANHISTORY'); ?></a></li>
		<?php $active="";endif;?>
		<?php if ($this->showBanUser) : ?>
			<li <?php echo $active ?>><a href="#BAN_EDIT" data-toggle="tab"><?php echo $this->banInfo->id ? JText::_('COM_KUNENA_BAN_EDIT') : JText::_('COM_KUNENA_BAN_NEW' ); ?></a></li>
		<?php endif;?>
	</ul>
	<div class="tab-content">
		<?php $active=" active";
			if($this->showUserPosts) : ?>
			<div class="tab-pane<?php echo $active ?>" id="USERPOSTS"><?php $this->displayUserPosts(); ?></div>
		<?php $active="";
		endif; ?>
		<?php if ($this->showSubscriptions) :?>
			<div class="tab-pane<?php echo $active ?>" id="SUBSCRIPTION">
				<?php $this->displayCategoriesSubscriptions(); ?>
				<?php $this->displaySubscriptions(); ?>
			</div>
		<?php $active="";
		endif; ?>
		<?php if ($this->showFavorites) : ?>
			<div class="tab-pane<?php echo $active ?>" id="FAVORITES"><?php $this->displayFavorites(); ?></div>
		<?php $active="";
		endif; ?>
		<?php if($this->showThankyou) : ?>
			<div class="tab-pane<?php echo $active ?>" id="THANK_YOU">
			<?php $this->displayGotThankyou(); ?>
			<?php $this->displaySaidThankyou(); ?>
			</div>
		<?php $active="";
		endif; ?>
		<?php if ($this->showUnapprovedPosts): ?>
			<div class="tab-pane<?php echo $active ?>" id="MESSAGE_ADMINISTRATION"><?php $this->displayUnapprovedPosts(); ?></div>
		<?php $active="";
		endif; ?>
		<?php if ($this->showAttachments): ?>
			<div class="tab-pane<?php echo $active ?>" id="MANAGE_ATTACHMENTS"><?php $this->displayAttachments(); ?></div>
		<?php $active="";
		endif; ?>
		<?php if ($this->showBanManager): ?>
			<div class="tab-pane<?php echo $active ?>" id="BAN_BANMANAGER"><?php $this->displayBanManager(); ?></div>
		<?php $active="";
		endif; ?>
		<?php if ($this->showBanHistory):?>
			<div class="tab-pane<?php echo $active ?>" id="BAN_BANHISTORY"><?php $this->displayBanHistory(); ?></div>
		<?php $active="";
		endif; ?>
		<?php if ($this->showBanUser) : ?>
			<div class="tab-pane<?php echo $active ?>" id="BAN_EDIT"<?php $this->displayBanUser(); ?></div>
		<?php 
		endif; ?>
	</div>
</div>
