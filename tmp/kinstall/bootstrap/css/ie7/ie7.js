/* To avoid CSS expressions while still supporting IE 7 and IE 6, use this script */
/* The script tag referencing this file must be placed before the ending body tag. */

/* Use conditional comments in order to target IE 7 and older:
	<!--[if lt IE 8]><!-->
	<script src="ie7/ie7.js"></script>
	<!--<![endif]-->
*/

(function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'editor\'">' + entity + '</span>' + html;
	}
	var icons = {
		'icon-user': '&#xf007;',
		'icon-film': '&#xf008;',
		'icon-check': '&#xf00c;',
		'icon-close': '&#xf00d;',
		'icon-remove': '&#xf00d;',
		'icon-times': '&#xf00d;',
		'icon-trash-o': '&#xf014;',
		'icon-font': '&#xf031;',
		'icon-bold': '&#xf032;',
		'icon-italic': '&#xf033;',
		'icon-text-height': '&#xf034;',
		'icon-align-left': '&#xf036;',
		'icon-align-center': '&#xf037;',
		'icon-align-right': '&#xf038;',
		'icon-image': '&#xf03e;',
		'icon-photo': '&#xf03e;',
		'icon-picture-o': '&#xf03e;',
		'icon-map-marker': '&#xf041;',
		'icon-tint': '&#xf043;',
		'icon-question-circle': '&#xf059;',
		'icon-eye-slash': '&#xf070;',
		'icon-credit-card': '&#xf09d;',
		'icon-chain': '&#xf0c1;',
		'icon-link': '&#xf0c1;',
		'icon-floppy-o': '&#xf0c7;',
		'icon-save': '&#xf0c7;',
		'icon-bars': '&#xf0c9;',
		'icon-navicon': '&#xf0c9;',
		'icon-reorder': '&#xf0c9;',
		'icon-list-ul': '&#xf0ca;',
		'icon-list-ol': '&#xf0cb;',
		'icon-strikethrough': '&#xf0cc;',
		'icon-underline': '&#xf0cd;',
		'icon-table': '&#xf0ce;',
		'icon-comment-o': '&#xf0e5;',
		'icon-quote-right': '&#xf10e;',
		'icon-code': '&#xf121;',
		'icon-question': '&#xf128;',
		'icon-superscript': '&#xf12b;',
		'icon-subscript': '&#xf12c;',
		'icon-youtube': '&#xf167;',
		'icon-female': '&#xf182;',
		'icon-male': '&#xf183;',
		'icon-hand-o-up': '&#xf0a6;',
		'icon-user-plus': '&#xf234;',
		'icon-user-times': '&#xf235;',
		'0': 0
		},
		els = document.getElementsByTagName('*'),
		i, c, el;
	for (i = 0; ; i += 1) {
		el = els[i];
		if(!el) {
			break;
		}
		c = el.className;
		c = c.match(/icon-[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
}());
