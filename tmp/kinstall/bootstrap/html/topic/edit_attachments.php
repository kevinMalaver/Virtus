<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 * @subpackage Topic
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();
?>
<div>
	<div class="kmsgattach well">
		<ul class="kfile-attach-editing kfile-attach unstyled">
		<?php foreach($this->attachments as $attachment) : ?>
			<li class="kattachment-old" data-id="<?php echo $attachment->id ?>">
				<span class="attach-icon"></span>
				<span>
					<input type="hidden" name="attachments[<?php echo $attachment->id ?>]" value="<?php echo $this->escape($attachment->filename) ?>" />
					<input type="checkbox" name="attachment[<?php echo $attachment->id ?>]" checked="checked" value="<?php echo $attachment->id ?>" />
					<button type="button" class="kattachment-insert btn-mini btn btn-info" style="display: none;"><?php echo  JText::_('COM_KUNENA_EDITOR_INSERT'); ?></button>
				</span>
				<?php echo $attachment->getThumbnailLink(); ?>

				<span>
					<span class="kfilename"><?php echo $this->escape($attachment->filename); ?></span>
					<span><?php echo '('.number_format(intval($attachment->size)/1024,0,'',',').'KB)'; ?></span>
				</span>
			</li>
		<?php endforeach; ?>
		</ul>
	</div>
</div>
