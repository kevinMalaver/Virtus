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

$this->cache = false;
$direction = $this->state->get('profile.direction');
$this->displayTemplateFile('topic', 'default', "profile_{$direction}");
