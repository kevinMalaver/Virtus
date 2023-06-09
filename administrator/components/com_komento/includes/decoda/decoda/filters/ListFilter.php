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
defined( '_JEXEC' ) or die( 'Unauthorized Access' );

/**
 * ListFilter
 *
 * Provides tags for ordered and unordered lists.
 *
 * @author      Miles Johnson - http://milesj.me
 * @copyright   Copyright 2006-2011, Miles Johnson, Inc.
 * @license     http://opensource.org/licenses/mit-license.php - Licensed under The MIT License
 * @link        http://milesj.me/code/php/decoda
 */

class ListFilter extends DecodaFilter {

	/**
	 * Supported tags.
	 *
	 * @access protected
	 * @var array
	 */
	protected $_tags = array(
		'olist' => array(
			'tag' => 'ol',
			'type' => self::TYPE_BLOCK,
			'allowed' => self::TYPE_BOTH,
			'lineBreaks' => self::NL_REMOVE,
			'children' => array('li'),
			'html' => array(
				'class' => 'decoda-olist'
			)
		),
		'list' => array(
			'tag' => 'ul',
			'type' => self::TYPE_BLOCK,
			'allowed' => self::TYPE_BOTH,
			'lineBreaks' => self::NL_REMOVE,
			'children' => array('li'),
			'html' => array(
				'class' => 'decoda-list'
			)
		),
		'li' => array(
			'tag' => 'li',
			'type' => self::TYPE_BLOCK,
			'allowed' => self::TYPE_BOTH,
			'parent' => array('olist', 'list')
		)
	);

}
