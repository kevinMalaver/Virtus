<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 * @subpackage Category
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();
?>
<?php if (!empty ($this->categoryButtons)) : ?>
<td class="klist-actions-forum">
	<div class="kmessage-buttons-row text-right"><?php echo implode(' ', $this->categoryButtons) ?></div>
</td>
<?php endif ?>
