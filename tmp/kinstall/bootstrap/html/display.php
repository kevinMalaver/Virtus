<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();
?>
<div id="Kunena" class="layout container-fluid">
<?php
if ($this->ktemplate->params->get('displayMenu', 1)) {
	$this->displayMenu ();
}
$this->displayLoginBox ();
$this->displayBreadcrumb ();

// Display current view/layout
$this->displayLayout();

$this->displayBreadcrumb ();
$this->displayFooter ();
?>
</div>
