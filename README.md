
# PrestaShop BLUE CUSTOM THEME
BLUE CUSTOM THEME is a rework of "classic theme". It has been built keeping in  mind : performance, accessibility and SEO.

Main features :
- last version of Bootstrap
- lazy loading images
- offcanvas for main menu and filter menu
- less css and less js
- form accessibility and better validation
- SEO: Hn, rel prev/next for pagination...
- font performance
- better responsive

### Js file deleted (in _dev folder)
- tether.js (we use popper with last version of BS)
- velocity.js (we use slick)
- bootstrap-filestyle.min.js (BS provide a custom file input)
- drop-down.js (done with BS dropdown)
- product-miniature.js (done with css)
- product-select.js (we use slick)
- jquery.scrollbox.min.js


### New module(s)
- ps_searchbarjqauto (for use jQuery autoComplete v1.0.7 )

## SEO
- Better pagination with link rel next/prev (in templates/_partials/pagination-seo.tpl)
- name="robots" content="none" for ordered listing page
- Open Graph and JSON-LD structured data (in templates/_partials/microdata-jsonld.tpl)
- font load from Google (in templates/_partials/font.tpl)

## Compatibility
PrestaShop 1.7.3.2 to 1.7.6.x
