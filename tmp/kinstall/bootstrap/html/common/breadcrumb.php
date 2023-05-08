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

$item = array_shift($this->pathway);
?>

<?php if ($item) : ?>
<div class="kblock kpathway">
	<div class="kcontainer">
		<div class="ksectionbody">
			<ul class = "kforum-pathway breadcrumb">
				<li class="path-element-first"><a href="<?php echo $item->link ?>"><?php echo $item->name ?></a></li>
				<?php foreach($this->pathway as $item) : ?>
				<li><span class="divider">/</span></li>
				<li><a href="<?php echo $item->link ?>"><?php echo $item->name ?></a></li>
				<?php endforeach; ?>
			</ul>
		</div>
	</div>
</div>
<?php endif ?>