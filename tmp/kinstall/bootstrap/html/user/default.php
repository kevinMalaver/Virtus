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

<div class="kblock k-profile">
	<div class="kheader">
		<h2><span class="k-name"><?php echo JText::_('COM_KUNENA_USER_PROFILE'); ?> <?php echo $this->escape($this->name); ?></span>
		<?php if (!empty($this->editlink)) echo '<span class="kheadbtn kright">'.$this->editlink.'</span>';?></h2>
	</div>
	<div class="kcontainer">
		<div class="kbody">
			<div class="row-fluid" id ="kprofile">
						<div id="kprofile-leftcol" class="span2">
							<?php $this->displaySummary(); ?>
						</div>
						<div id="kprofile-rightcol"  class="span10">
							<?php $this->displayTab(); ?>
						</div>
			</div>
	</div>
</div>
