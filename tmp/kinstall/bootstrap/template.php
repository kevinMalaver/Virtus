<?php
/**
* Kunena Component
* @package Kunena.Template.Bootstrap
*
* @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
* @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
* @link http://www.kunena.org
**/
defined( '_JEXEC' ) or die();

class KunenaTemplateBootstrap extends KunenaTemplate {
	// Try to find missing files from the following parent templates:
	protected $default = array('bootstrap');
	protected $css_compile = false;
	protected $userClasses = array(
		'kwho-',
		'admin'=>'kwho-admin',
		'globalmod'=>'kwho-globalmoderator',
		'moderator'=>'kwho-moderator',
		'user'=>'kwho-user',
		'guest'=>'kwho-guest',
		'banned'=>'kwho-banned',
		'blocked'=>'kwho-blocked'
	);
	// public $categoryIcons = array('kreadforum', 'kunreadforum');
	public $categoryIcons = array('icon-folder-open', 'icon-folder-close');

	public function initialize() {
		KunenaFactory::loadLanguage('com_kunena.tpl_bootstrap');

		// Enable legacy mode
		KunenaTemplateLegacy::load();

		require_once JPATH_SITE. '/' . $this->getFile('initialize.php');
		$this->addStyleSheet ( 'css/kunena.bootstrap.css' );

		// Toggler language strings
		JFactory::getDocument()->addScriptDeclaration('// <![CDATA[
var kunena_toggler_close = "'.JText::_('COM_KUNENA_TOGGLER_COLLAPSE', true).'";
var kunena_toggler_open = "'.JText::_('COM_KUNENA_TOGGLER_EXPAND', true).'";
// ]]>');

	}

	public function getButton($link, $name, $scope, $type, $id = null) {
		$types = array('communication'=>'comm', 'user'=>'user', 'moderation'=>'mod', 'permanent'=>'mod');
		$names = array('unsubscribe'=>'subscribe', 'unfavorite'=>'favorite icon-heart', 'unsticky'=>'sticky icon-pin', 'unlock'=>'lock icon-unlock', 'lock'=>'lock icon-locked', 'create'=>'newtopic icon-new',
				'quickreply'=>'icon-forward-2', 'reply'=>' icon-pencil-2', 'quote'=>'quote icon-quote', 'edit'=>'edit icon-edit', 'permdelete'=>'delete icon-remove',
				'flat'=>'layout-flat', 'threaded'=>'layout-threaded', 'indented'=>'layout-indented',
				'list'=>'icon-forward-2',
				'delete'=>'icon-delete',
				'sticky'=>'sticky icon-pin',
				'favorite'=>'favorite icon-heart',
				'markread'=>'markread icon-ok');

		$text = JText::_("COM_KUNENA_BUTTON_{$scope}_{$name}");
		$title = JText::_("COM_KUNENA_BUTTON_{$scope}_{$name}_LONG");
		if ($title == "COM_KUNENA_BUTTON_{$scope}_{$name}_LONG") $title = '';
		if ($id) $id = 'id="'.$id.'"';

		if (isset($types[$type])) $type = $types[$type];
		if ($name == 'quickreply') $type .= ' kqreply';
		if (isset($names[$name])) $name = $names[$name];

		return <<<HTML
<a $id class="kicon-button kbutton{$type} btn-left btn btn-primary btn-mini" href="{$link}" rel="nofollow" title="{$title}">
	<span class="{$name}"></span> <span>{$text}</span>
</a>
HTML;
	}

	public function getIcon($name, $title='') {
		return '<span class="icon '.$name.'" title="'.$title.'"></span>';
	}

	public function getImage($image, $alt='') {
		return '<img src="'.$this->getImagePath($image).'" alt="'.$alt.'" />';
	}
	//$template->getRankPath($rank->rank_image, true);
	public function getRankPath($filename='', $url = false) {
		$filename = substr_replace($filename,"png",-3);
		return $this->getFile($filename, $url, 'images/ranks', 'media/kunena/ranks');
	}
}
