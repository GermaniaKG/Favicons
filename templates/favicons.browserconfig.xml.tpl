{# ================================================================
Microsoft Browser configuration schema reference
for Favicon configuration, inspired by RealFaviconGenerator

Author:  Carsten Witt, Germania KG

Variables in this template:
- base_url
- theme_color

Microsoft Browser configuration schema reference:
- https://msdn.microsoft.com/en-us/library/dn320426(v=vs.85).aspx
- https://msdn.microsoft.com/en-us/library/dn320426(v=vs.85).aspx#specifying_tile_images_and_assets

For newer/better favicon configurations, check out this tool:
http://realfavicongenerator.net/favicon_checker
================================================================= #}
{% set cache_bust_param = cache_bust ? "?v=" ~ cache_bust : "" %}
<?xml version="1.0" encoding="utf-8"?>
<browserconfig>
  <msapplication>
    <tile>
      <square70x70logo src="{{ base_url }}/mstile-70x70.png{{ cache_bust_param }}"/>
      <square150x150logo src="{{ base_url }}/mstile-150x150.png{{ cache_bust_param }}"/>
      <square310x310logo src="{{ base_url }}/mstile-310x310.png{{ cache_bust_param }}"/>
      <wide310x150logo src="{{ base_url }}/mstile-310x150.png{{ cache_bust_param }}"/>
      <TileColor>{{ theme_color }}</TileColor>
    </tile>
  </msapplication>
</browserconfig>
