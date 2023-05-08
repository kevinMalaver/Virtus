<?php
/**
 * Kunena Component
 * @package Kunena.Template.Bootstrap
 * @subpackage User
 *
 * @copyright (C) 2008 - 2015 Kunena Team. All rights reserved.
 * @license http://www.gnu.org/copyleft/gpl.html GNU/GPL
 * @link http://www.kunena.org
 **/
defined ( '_JEXEC' ) or die ();
?>

<div class="kblock">
	<div class="kheader">
		<span class="ktoggler"><a class="ktoggler icon icon-minus-circle close" title="<?php echo JText::_('COM_KUNENA_TOGGLER_COLLAPSE') ?>" data-toggle="collapse" data-target="#searchuser_tbody"></a></span>
		<h2><span><?php printf(JText::_('COM_KUNENA_USRL_REGISTERED_USERS'), $this->app->getCfg('sitename'), intval($this->total));?></span></h2>
	</div>
	<div class="kcontainer  collapse in" id="searchuser_tbody">
		<div class="kbody">
			<div class="userlist-jump pull-right">
				<?php $this->displayForumjump(); ?>
			</div>
			<div class="search-user">
				<form action="<?php echo KunenaRoute::_('index.php?option=com_kunena&view=user&layout=list') ?>" name="usrlform" method="post" class="form-horizontal">
					<input type="hidden" name="view" value="user" />
					<?php echo JHtml::_( 'form.token' ); ?>

					<input id="kusersearch" type="search" name="search" class="inputbox autosuggest" placeholder="<?php echo $this->escape(JText::_('COM_KUNENA_USRL_SEARCH')); ?>" />
					<button class="btn btn-default" title="<?php echo JText::_('COM_KUNENA_USRL_SEARCH'); ?>"><span class="icon icon-search"></span></button>
				</form>
			</div>
		</div>
	</div>
</div>
<div class="kblock">
	<div class="kheader">
		<span class="ktoggler"><a class="ktoggler icon icon-minus-circle close" title="<?php echo JText::_('COM_KUNENA_TOGGLER_COLLAPSE') ?>" data-toggle="collapse" data-target="#userlist-tbody"></a></span>
		<h2><span><?php echo JText::_('COM_KUNENA_USRL_USERLIST'); ?></span></h2>
	</div>
	<div class="kcontainer  collapse in" id="userlist-tbody">
		<div class="kbody">
			<form action="<?php echo KunenaRoute::_('index.php?option=com_kunena&view=user&layout=list') ?>" method="post" id="kuserlist-form" name="kuserlist-form">
				<input type="hidden" name="filter_order" value="<?php echo $this->state->get('list.ordering'); ?>" />
				<input type="hidden" name="filter_order_Dir" value="<?php echo $this->state->get('list.direction'); ?>" />
				<?php echo JHtml::_( 'form.token' ); ?>

				<table class="table table-hover table-striped table-condensed">
					<tr class="ksth userlist">
						<th class="frst" style="width:1%"> # </th>

						<?php if ($this->config->userlist_online) : ?>
						<th><?php echo JText::_('COM_KUNENA_USRL_ONLINE'); ?></th>
						<?php endif; ?>

						<?php if ($this->config->userlist_avatar) : ?>
						<th><?php echo JText::_('COM_KUNENA_USRL_AVATAR'); ?></th>
						<?php endif; ?>

						<?php if ($this->config->username) : ?>
						<th class="usersortable"><?php echo JHtml::_( 'kunenagrid.sort', 'COM_KUNENA_USERNAME', 'username', $this->state->get('list.direction'), $this->state->get('list.ordering'), '', '', 'kuserlist-form'); ?></th>
						<?php else : ?>
						<th class="usersortable"><?php echo JHtml::_( 'kunenagrid.sort', 'COM_KUNENA_REALNAME', 'name', $this->state->get('list.direction'), $this->state->get('list.ordering'), '', '', 'kuserlist-form'); ?></th>
						<?php endif; ?>

						<?php if ($this->config->userlist_posts) : ?>
						<th class="usersortable"><?php echo JHtml::_( 'kunenagrid.sort', 'COM_KUNENA_USRL_POSTS', 'posts', $this->state->get('list.direction'), $this->state->get('list.ordering'), '', '', 'kuserlist-form'); ?></th>
						<?php endif; ?>

						<?php if ($this->config->userlist_karma) : ?>
						<th class="usersortable"><?php echo JHtml::_( 'kunenagrid.sort', 'COM_KUNENA_USRL_KARMA', 'karma', $this->state->get('list.direction'), $this->state->get('list.ordering'), '', '', 'kuserlist-form'); ?></th>
						<?php endif; ?>

						<?php if ($this->config->userlist_email) : ?>
						<th class="usersortable"><?php echo JHtml::_( 'kunenagrid.sort', 'COM_KUNENA_USRL_EMAIL', 'email', $this->state->get('list.direction'), $this->state->get('list.ordering'), '', '', 'kuserlist-form'); ?></th>
						<?php endif; ?>

						<?php if ($this->config->userlist_joindate) : ?>
						<th class="usersortable"><?php echo JHtml::_( 'kunenagrid.sort', 'COM_KUNENA_USRL_JOIN_DATE', 'registerDate', $this->state->get('list.direction'), $this->state->get('list.ordering'), '', '', 'kuserlist-form'); ?></th>
						<?php endif; ?>

						<?php if ($this->config->userlist_lastvisitdate) : ?>
						<th class="usersortable"><?php echo JHtml::_( 'kunenagrid.sort', 'COM_KUNENA_USRL_LAST_LOGIN', 'lastvisitDate', $this->state->get('list.direction'), $this->state->get('list.ordering'), '', '', 'kuserlist-form'); ?></th>
						<?php endif; ?>

						<?php if ($this->config->userlist_userhits) : ?>
						<th class="usersortable" style="width:1%"><?php echo JHtml::_( 'kunenagrid.sort', 'COM_KUNENA_USRL_HITS', 'uhits', $this->state->get('list.direction'), $this->state->get('list.ordering'), '', '', 'kuserlist-form'); ?></th>
						<?php endif; ?>
					</tr>

					<?php
					$i=1;

					foreach ($this->users as $user) :
						$evenodd = $i % 2;
						$nr = $i + $this->state->get('list.start');
						$i++;

						if ($evenodd == 0) {
							$usrl_class="row1";
						}
						else {
							$usrl_class="row2";
						}

						$profile=KunenaFactory::getUser(intval($user->id));
						$uslavatar=$profile->getAvatarImage('usl_avatar', 'list');
						if ($user->lastvisitDate == "0000-00-00 00:00:00") {
							$lastvisitDate = $this->getLastvisitdate($user->registerDate);
						} else {
							$lastvisitDate = $this->getLastvisitdate($user->lastvisitDate);
						}
					?>

					<tr class="k<?php echo $usrl_class ;?>">
						<td class="kcol-first"><?php echo $nr; ?></td>

						<?php if ($this->config->userlist_online) : ?>
						<td class="kcol-mid">
							<span class="kicon-button kbuttononline-<?php echo $profile->isOnline('yes', 'no') ?>"><span class="icon icon-circle online-<?php echo $profile->isOnline('yes', 'no') ?>"></span> <span><?php echo $profile->isOnline(JText::_('COM_KUNENA_ONLINE'), JText::_('COM_KUNENA_OFFLINE')); ?></span></span>
						</td>
						<?php endif; ?>

						<?php if ($this->config->userlist_avatar) : ?>
						<td class="kcol-mid"><?php echo !empty($uslavatar) ? $profile->getLink($uslavatar) : '&nbsp;' ?></td>
						<?php endif; ?>

						<td class="kcol-mid"><?php echo $profile->getLink(); ?></td>

						<?php if ($this->config->userlist_posts) : ?>
						<td class="kcol-mid"><?php echo intval($user->posts); ?></td>
						<?php endif; ?>

						<?php if ($this->config->userlist_karma) : ?>
						<td class="kcol-mid"><?php echo intval($user->karma); ?></td>
						<?php endif; ?>

						<?php if ($this->config->userlist_email) : ?>
						<td class="kcol-mid"><?php echo $user->email ? JHtml::_('email.cloak', $user->email) : '' ?></td>
						<?php endif; ?>

						<?php if ($this->config->userlist_joindate) : ?>
						<td class="kcol-mid" title="<?php echo KunenaDate::getInstance($user->registerDate)->toKunena('ago') ?>"><?php echo KunenaDate::getInstance($user->registerDate)->toKunena('datetime_today') ?></td>
						<?php endif; ?>

						<?php if ($this->config->userlist_lastvisitdate) : ?>
						<td class="kcol-mid" title="<?php echo KunenaDate::getInstance($lastvisitDate)->toKunena('ago') ?>"><?php echo KunenaDate::getInstance($lastvisitDate)->toKunena('datetime_today') ?></td>
						<?php endif; ?>

						<?php if ($this->config->userlist_userhits) : ?>
						<td class="kcol-mid"><?php echo intval($profile->uhits) ?></td>
						<?php endif; ?>
					</tr>
					<?php endforeach; ?>
				</table>
			</form>
			<form action="<?php echo KunenaRoute::_('index.php?option=com_kunena&view=user&layout=list') ?>" name="usrlform" method="post" onsubmit="return false;">
				<?php echo JHtml::_( 'form.token' ); ?>

				<table class="table table-striped" id="kuserlist-bottom">
					<tr>
						<td>
							<div class="pagination">
								<?php
								echo $this->getPagination(7);
								?>
							</div>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</div>

<?php $this->displayWhoIsOnline(); ?>

