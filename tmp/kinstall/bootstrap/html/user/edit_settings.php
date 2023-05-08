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

<div class="kblock keditsettings">
	<div class="kheader">
		<h2><span><?php echo JText::_('COM_KUNENA_PROFILE_EDIT_SETTINGS_TITLE'); ?></span></h2>
	</div>
	<div class="kcontainer">
		<div class="kbody">
		<table class="table" id="kflattable">
			<tbody>
				<?php $i=1; foreach ($this->settings as $setting) : ?>
				<tr class="krow<?php echo (++$i & 1)+1 ?>">
					<td class="kcol-first"><?php echo $setting->label ?></td>
					<td class="kcol-mid">
						<?php echo $setting->field ?>
					</td>
				</tr>
				<?php endforeach ?>
			</tbody>
		</table>
		</div>
	</div>
</div>
