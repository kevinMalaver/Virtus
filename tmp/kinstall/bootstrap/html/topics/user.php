<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 * @subpackage Topics
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();

$this->displayAnnouncement ();
?>
<!-- Module position: kunena_announcement -->
<?php $this->displayModulePosition ( 'kunena_announcement' ) ?>
<table class="klist-actions table">
	<tr>
		<td class="klist-actions-info-all">
			<strong><?php echo intval($this->total) ?></strong>
			<?php echo JText::_('COM_KUNENA_TOPICS')?>
		</td>

		<td class="klist-jump-all visible-desktop"><?php $this->displayForumJump () ?></td>

		<td class="klist-pages-all"><div class="pagination"><?php echo $this->getPagination ( 5 ); ?></div></td>
	</tr>
</table>

<?php $this->displayTemplateFile('topics', 'user', 'embed'); ?>

<table class="klist-actions table">
	<tr>
		<td class="klist-actions-info-all">
			<strong><?php echo intval($this->total) ?></strong>
			<?php echo JText::_('COM_KUNENA_TOPICS')?>
		</td>
		<td class="klist-pages-all"><div class="pagination"><?php echo $this->getPagination ( 5 ); ?></div></td>
	</tr>
</table>

<?php
$this->displayWhoIsOnline ();
$this->displayStatistics ();
?>
