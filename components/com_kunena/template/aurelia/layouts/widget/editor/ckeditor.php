<?php

/**
 * Kunena Component
 *
 * @package         Kunena.Template.Aurelia
 * @subpackage      Layout.Widget
 *
 * @copyright       Copyright (C) 2008 - 2023 Kunena Team. All rights reserved.
 * @license         https://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link            https://www.kunena.org
 **/

defined('_JEXEC') or die();

use Joomla\CMS\Language\Text;
use Kunena\Forum\Libraries\Html\KunenaParser;
use Kunena\Forum\Libraries\Route\KunenaRoute;

$this->wa->registerAndUseScript('ckeditor', 'media/kunena/core/js/ckeditor.js');
$this->doc->addScriptOptions('com_kunena.ckeditor_config', $this->template->params->get('ckeditorcustomprefixconfigfile') . 'ckeditor_config.js');
$this->doc->addScriptOptions('com_kunena.ckeditor_buttons_configuration', $this->template->params->get('editorButtons'));
$this->doc->addScriptOptions('com_kunena.ckeditor_subfolder', Joomla\CMS\Uri\Uri::root(true));
$this->doc->addScriptOptions('com_kunena.ckeditor_skiname', $this->template->params->get('nameskinckeditor'));

// $this->getAllowedtoUseLinksImages();

// $this->addScript('edit.js');

// Echo $this->subLayout('Widget/Datepicker');

// Load caret.js always before atwho.js script and use it for autocomplete, emojiis...
/*
$this->addScript('jquery.caret.js');
$this->addScript('jquery.atwho.js');
$this->addStyleSheet('jquery.atwho.css');*/

$topictemplate = !$this->config->pickup_category;
$this->doc->addScriptOptions('com_kunena.ckeditor_emoticons', json_encode(KunenaParser::getEmoticons(0, 1, 0)));
?>
<script>
    function localstorage() {
        localStorage.getItem("copyKunenaeditor");
    }

    function localstorageremove() {
        localStorage.removeItem("copyKunenaeditor");
    }
</script>

<textarea class="span12" name="message" id="message" rows="12" tabindex="7"
          placeholder="<?php echo Text::_('COM_KUNENA_ENTER_MESSAGE') ?>"><?php if (!empty($this->message->getCategory()->topictemplate) && !$this->message->getTopic()->first_post_id && $topictemplate) {
                echo $this->message->getCategory()->topictemplate;
                       }

                       if (!empty($this->message->message)) {
                           echo $this->escape($this->message->message);
                       } ?>
</textarea>

<input type="hidden" name="nb_options_allowed" id="nb_options_allowed"
       value="<?php echo $this->config->pollNbOptions; ?>"/>

<!-- Hidden preview placeholder -->
<div class="controls" id="kbbcode-preview" style="display: none;"></div>

<!-- end of Bootstrap modal to be used with bbcode editor -->
<div class="control-group">
    <div class="controls">
        <input type="hidden" id="kurl_emojis" name="kurl_emojis"
               value="<?php echo KunenaRoute::_('index.php?option=com_kunena&view=topic&layout=listemoji&format=raw') ?>"/>
        <input type="hidden" id="kemojis_allowed" name="kemojis_allowed"
               value="<?php echo $this->config->disableEmoticons ? 0 : 1 ?>"/>
    </div>
</div>
