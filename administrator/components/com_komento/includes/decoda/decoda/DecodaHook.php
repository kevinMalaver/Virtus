<?php
/**
* @package		Komento
* @copyright	Copyright (C) 2010 - 2020 Stack Ideas Sdn Bhd. All rights reserved.
* @license		GNU/GPL, see LICENSE.php
* Komento is free software. This version may have been modified pursuant
* to the GNU General Public License, and as distributed it includes or
* is derivative of works licensed under the GNU General Public License or
* other free or open source software licenses.
* See COPYRIGHT.php for copyright notices and details.
*/
defined('_JEXEC') or die('Unauthorized Access');

/**
 * DecodaHook
 *
 * A hook allows you to inject functionality during certain events in the parsing cycle.
 *
 * @author      Miles Johnson - http://milesj.me
 * @copyright   Copyright 2006-2011, Miles Johnson, Inc.
 * @license     http://opensource.org/licenses/mit-license.php - Licensed under The MIT License
 * @link        http://milesj.me/code/php/decoda
 */

abstract class KtDecodaHook extends KtDecodaAbstract {

	/**
	 * Process the content after the parsing has finished.
	 *
	 * @access public
	 * @param string $content
	 * @return string
	 */
	public function afterParse($content) {
		return $content;
	}

	/**
	 * Process the content before the parsing begins.
	 *
	 * @access public
	 * @param string $content
	 * @return string
	 */
	public function beforeParse($content) {
		return $content;
	}

	/**
	 * Add any filter dependencies.
	 *
	 * @access public
	 * @param Decoda $decoda
	 * @return void
	 */
	public function setupFilters(KtDecoda $decoda) {
		return;
	}

}
