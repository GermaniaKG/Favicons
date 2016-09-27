{# ================================================================
Favicon configuration, inspired by RealFaviconGenerator

Author:  Carsten Witt, Germania KG

Usage in Twig Template:

	{% include 'favicons.website.tpl' with {
	   'app_url':     '/app',
	   'base_url':    '/path/to/static',
	   'theme_color': '#ffffff',
	   'icon_color':  '#e21e79'
	} only %}

Variables in this templates
- base_url     URL from where favicons should be loaded
- app_url      Optional, defaults to base_url.
						   Useful when manifest.json and browserconfig.xml
						   are located on the www domain.
- theme_color  Optional, defaults to white.
							 Applies to both tile and/or theme color
- icon_color   Color for Safaris Pinned Tabs Feature
- cache_bust   Optional

For newer/better favicon configurations, check out this tool:
http://realfavicongenerator.net/favicon_checker

Links:
- Chrome theme color:      	https://developers.google.com/web/updates/2014/11/Support-for-theme-color-in-Chrome-39-for-Android
- Chrome Web App Manifest: 	https://developer.mozilla.org/en-US/docs/Web/Manifest
- Microsoft browserconfig: 	https://msdn.microsoft.com/en-us/library/dn320426(v=vs.85).aspx
- Safari Pinnes Tabs:      	https://developer.apple.com/library/content/documentation/AppleApplications/Reference/SafariWebContent/pinnedTabs/pinnedTabs.html
================================================================= #}
{% set cache_bust_param = cache_bust ? "?v=" ~ cache_bust : "" %}

	<link rel="apple-touch-icon" sizes="180x180" href="{{ base_url }}/apple-touch-icon.png{{ cache_bust_param }}">
	<link rel="icon" type="image/png" href="{{ base_url }}/favicon-32x32.png{{ cache_bust_param }}" sizes="32x32">
	<link rel="icon" type="image/png" href="{{ base_url }}/favicon-16x16.png{{ cache_bust_param }}" sizes="16x16">
{# Chrome Manifest File #}
	<link rel="manifest" href="{{ app_url }}/manifest.json{{ cache_bust_param }}">
{# Safari Pinned Tabs #}
	<link rel="mask-icon" href="{{ base_url }}/safari-pinned-tab.svg{{ cache_bust_param }}" color="{{ icon_color }}">
{# The most classic #}
	<link rel="shortcut icon" href="{{ base_url }}/favicon.ico{{ cache_bust_param }}">
{# Windows 8 Tiles #}
{# <meta name="application-name" content="My App"> #}
	<meta name="msapplication-TileColor" content="{{ theme_color }}">
	<meta name="msapplication-TileImage" content="{{ base_url }}/mstile-144x144.png{{ cache_bust_param }}">
{# Microsoft Browser configuration #}
	<meta name="msapplication-config" content="{{ app_url }}/browserconfig.xml{{ cache_bust_param }}">
{# Chrome theme color #}
	<meta name="theme-color" content="{{ theme_color }}">
