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
?>
<div id="ktop">
	<div id="ktopmenu">
		<div id="ktab"><?php echo $this->getMenu() ?></div>
		<span class="ktoggler fltrt pull-right"><a 
	class="ktoggler icon icon-minus-circle close" title="<?php echo JText::_('COM_KUNENA_TOGGLER_COLLAPSE') ?>" data-toggle="collapse" data-target="#kprofilebox"></a></span>
		<div class="clearfix"></div>
	</div>
</div>
