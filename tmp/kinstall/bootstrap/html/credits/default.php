<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 * @subpackage Credits
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();
?>
<div class="kblock kcredits">
	<div class="kheader">
		<h2><span><?php echo JText::_('COM_KUNENA_TEMPLATE_CREDIT'); ?></span></h2>
	</div>
	<div class="kcreditsheader">
		<img src="<?php echo $this->ktemplate->getImagePath('icons/studio42-48x48.png');?>" alt="Studio 42" class="pull-left" style="margin-left: 18px;margin-right: 18px;" />
		<div class="kcredits-intro"><?php echo JText::_('COM_KUNENA_TEMPLATE_BOOTSTRAP_CREDIT');?></div>
		<div class="clearfix"></div>
	</div>
	<div class="kheader">
		<h2><span><?php echo JText::_('COM_KUNENA_CREDITS_PAGE_TITLE'); ?></span></h2>
	</div>
	<div class="kcontainer">
		<div class="kbody">
			<div class="kcreditsheader">
				<img src="<?php echo $this->ktemplate->getImagePath('icons/kunena-logo-48-white.png');?>" alt="Kunena" class="pull-left" style="margin-left: 18px;margin-right: 18px;" />
				<div class="kcredits-intro"><?php echo $this->intro; ?></div>
				<div class="clearfix"></div>
			</div>
			<div class="kcredits-language">
				<ul class="kteam nav nav-list">
					<?php foreach ($this->memberList as $member) : ?>
					<li class="credits-teammember">
						<a href="<?php echo $member['url'] ?>" target="_blank" rel="nofollow"><?php echo $this->escape($member['name']) ?> <span class="label label-info pull-right"> <?php echo $member['title'] ?></span></a>
					</li>
					<?php endforeach ?>
				</ul>
			</div>
			<div class="kcredits-language well">
				<?php echo $this->thanks ?>
			</div>
			<div class="kcredits-more">
				<div>
					<?php echo JText::_('COM_KUNENA_CREDITS_GO_BACK') ?>
					<a href="javascript:window.history.back()" title="<?php echo JText::_('COM_KUNENA_CREDITS_GO_BACK') ?>"><?php echo JText::_('COM_KUNENA_USER_RETURN_B') ?></a>
				</div>
			</div>
			<div class="kfooter"><?php echo JText::_('COM_KUNENA_COPYRIGHT');?> &copy; 2008 - 2015 <a href = "http://www.kunena.org" target = "_blank">Kunena</a>, <?php echo JText::_('COM_KUNENA_LICENSE');?>: <a href = "http://www.gnu.org/copyleft/gpl.html" target = "_blank">GNU GPL</a></div>


		</div>


	</div>
</div>
