{# ================================================================
Chrome Manifest File for Favicon configuration

Author:  Carsten Witt, Germania KG

Variables in this template:
- app_name
- base_url
- theme_color
- display

Web App Manifest file documentation:
https://developer.mozilla.org/en-US/docs/Web/Manifest

For newer/better favicon configurations, check out this tool:
http://realfavicongenerator.net/favicon_checker

Element documentation:
- name:        https://developer.mozilla.org/en-US/docs/Web/Manifest#name
- icons:       https://developer.mozilla.org/en-US/docs/Web/Manifest#icons
- display:     https://developer.mozilla.org/en-US/docs/Web/Manifest#display
- theme_color: https://developer.mozilla.org/en-US/docs/Web/Manifest#theme_color

================================================================= #}
{
	"name": "{{ app_name }}",
	"icons": [
		{
			"src": "{{ base_url|escape }}\/android-chrome-192x192.png",
			"sizes": "192x192",
			"type": "image\/png"
		},
		{
			"src": "{{ base_url|escape }}\/android-chrome-512x512.png",
			"sizes": "512x512",
			"type": "image\/png"
		}
	],
	"theme_color": "{{ theme_color }}",
	"display": "{{ display }}"
}

