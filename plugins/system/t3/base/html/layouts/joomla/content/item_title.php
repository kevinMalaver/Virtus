<?php
/**
 * @package     Joomla.Site
 * @subpackage  Layout
 *
 * @copyright   Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.
 * @license     GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;

// Create a shortcut for params.
$item = $displayData['item'];
$params = $displayData['params'];
$title_tag = $displayData['title-tag'];
$canEdit = $params->get('access-edit');
if (empty ($item->catslug)) {
  $item->catslug = $item->category_alias ? ($item->catid.':'.$item->category_alias) : $item->catid;
}
$url = JRoute::_(ContentHelperRoute::getArticleRoute($item->slug, $item->catslug));
$uri = JUri::getInstance();
$prefix = $uri->toString(array('scheme', 'host', 'port'));
	$timePublishDown = $item->publish_down != null ? $item->publish_down : '';
	$timePublishUp = $item->publish_up != null ? $item->publish_up : '';
?>

<header class="article-header clearfix">
	<<?php echo $title_tag; ?> class="article-title" itemprop="name">
		<?php if ($params->get('link_titles')) : ?>
			<a href="<?php echo $url ?>" itemprop="url" title="<?php echo htmlentities($item->title); ?>">
				<?php echo $this->escape($item->title); ?></a>
		<?php else : ?>
			<?php echo $this->escape($item->title); ?>
			<meta itemprop="url" content="<?php echo $prefix.$url ?>" />
		<?php endif; ?>
	</<?php echo $title_tag; ?>>

	<?php if ($item->state == 0) : ?>
		<span class="label label-warning"><?php echo JText::_('JUNPUBLISHED'); ?></span>
	<?php endif; ?>
	<?php if (strtotime($timePublishUp) > strtotime(JFactory::getDate())) : ?>
		<span class="label label-warning"><?php echo JText::_('JNOTPUBLISHEDYET'); ?></span>
	<?php endif; ?>
	<?php if ((strtotime($timePublishDown) < strtotime(JFactory::getDate())) && $item->publish_down != JFactory::getDbo()->getNullDate()) : ?>
		<span class="label label-warning"><?php echo JText::_('JEXPIRED'); ?></span>
	<?php endif; ?>
</header>
