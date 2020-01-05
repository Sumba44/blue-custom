{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Academic Free License 3.0 (AFL-3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * https://opensource.org/licenses/AFL-3.0
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   https://opensource.org/licenses/AFL-3.0 Academic Free License 3.0 (AFL-3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}
<!doctype html>
<html lang="{$language.iso_code}">

  <head>
    {block name='head'}
      {include file='_partials/head.tpl'}
    {/block}
  </head>

  <body id="{$page.page_name}" class="{$page.body_classes|classnames}">

    {block name='hook_after_body_opening_tag'}
      {hook h='displayAfterBodyOpeningTag'}
    {/block}

    <main>
      {block name='product_activation'}
        {include file='catalog/_partials/product-activation.tpl'}
      {/block}

      <header id="header" class="l-header">
        {block name='header'}
          {include file='_partials/header.tpl'}
        {/block}
      </header>

      {block name='notifications'}
        {include file='_partials/notifications.tpl'}
      {/block}

         {if $page.page_name == 'index'}
			
          <div class="pos-slider__video--wrapper">
            <video autoplay loop="true" id="vid" class="pos-slider__video" autoplay muted>
              <source type="video/mp4" src="{$urls.base_url}themes/sumba/assets/video/v2.mp4">
            </video>				
            <div class="container">
              <div class="pos-slider__desc">
                <h1 class="pos-slider__heading">Legalizácia CBD na Slovensku</h1>
                <div class="pos-slider__divider"></div>
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy</p>
                <p class="pos-slider__readmore"><a href="#" class="readmore_btn">Viac info</a></p>
              </div>
            </div>
          </div>

        <section>
          <div class="container home__categories__wrap">
            <div class="home__categories">
              <img src="/themes/classic-rocket/assets/img/oil.jpg" class="home__categories__img">
              <p class="h3 home__categories__title">CBD Šišky</p>
              <p class="text-mute">Oleje su vyrobené z najlepších surovín.</p>
            </div>
            <div class="home__categories">
              <img src="/themes/classic-rocket/assets/img/oil.jpg" class="home__categories__img">
              <p class="h3 home__categories__title">CBD Oleje</p>
            </div>
            <div class="home__categories">
              <img src="/themes/classic-rocket/assets/img/oil.jpg" class="home__categories__img">
              <p class="h3 home__categories__title">CBD Hašiš</p>
            </div>
            <div class="home__categories">
              <img src="/themes/classic-rocket/assets/img/oil.jpg" class="home__categories__img">
              <p class="h3 home__categories__title">CBD Pre zvieratá</p>
            </div>
            <div class="home__categories">
              <img src="/themes/classic-rocket/assets/img/oil.jpg" class="home__categories__img">
              <p class="h3 home__categories__title">CBD Vape</p>
            </div>
            <div class="home__categories">
              <img src="/themes/classic-rocket/assets/img/oil.jpg" class="home__categories__img">
              <p class="h3 home__categories__title">Fajčiajrske potreby</p>
            </div>
          </div>
        </section>
      {/if}


        {block name='wrapper'}
        <section id="wrapper" class="{block name='layoutWrapperClass'}l-wrapper{/block}">
        {hook h="displayWrapperTop"}

          {block name='breadcrumb'}
            {include file='_partials/breadcrumb.tpl'}
          {/block}
            <div class="row">
          {block name="left_column"}
            <div id="left-column" class="left-column col-12 col-md-4 col-lg-3">
              {* {if $page.page_name == 'product'}
                {hook h='displayLeftColumnProduct'}
              {else} *}
                {hook h="displayLeftColumn"}
              {* {/if} *}
            </div>
          {/block}

          {block name="content_wrapper"}
            <div id="content-wrapper" class="center-column{block name='contentWrapperClass'}left-column right-column col-md-8 col-lg-9{/block}">
              {hook h="displayContentWrapperTop"}
              {block name="content"}
                <p>Hello world! This is HTML5 Boilerplate.</p>
              {/block}
              {hook h="displayContentWrapperBottom"}
            </div>
          {/block}

          {block name="right_column"}
            <div id="right-column" class="right-column col-12 col-md-4 col-lg-3">
              {if $page.page_name == 'product'}
                {hook h='displayRightColumnProduct'}
              {else}
                {hook h="displayRightColumn"}
              {/if}
            </div>
          {/block}
        </div>
        {hook h="displayWrapperBottom"}
      </section>
        {/block}

      <footer id="footer" class="l-footer">
        {block name="footer"}
          {include file="_partials/footer.tpl"}
        {/block}
      </footer>

    </main>
    {block name='offcanvas_modals'}
        {* offcanvas search filter *}
        <div class="modal fade" id="offcanvas_search_filter" tabindex="-1" role="dialog" data-modal-hide-mobile>
            <div class="modal-dialog modal-dialog__offcanvas modal-dialog__offcanvas--right" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div id="_mobile_search_filters_wrapper"></div>
                    </div>
                    <div class="modal-footer">
                    <button class="btn_close-filter btn btn-outline-success btn-block ok" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                        <i class="material-icons rtl-no-flip">&#xE876;</i>
                        {l s='OK' d='Shop.Theme.Actions'}
                    </button>
                    </div>
                </div>
            </div>
        </div>
        {* end search filter *}
        {* offcanvas menu *}
        <div class="modal fade" id="mobile_top_menu_wrapper" tabindex="-1" role="dialog" data-modal-hide-mobile>
            <div class="modal-dialog modal-dialog__offcanvas" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="{l s='Close' d='Shop.Theme.Global'}">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="js-top-menu top-menu-mobile" id="_mobile_top_menu"></div>
                        <div class="js-top-menu-bottom">
                            <div id="_mobile_currency_selector"></div>
                            <div id="_mobile_language_selector"></div>
                            <div id="_mobile_contact_link"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {* end offcanvas menu *}
    {/block}
    {block name='javascript_bottom'}
      {include file="_partials/javascript.tpl" javascript=$javascript.bottom}
    {/block}

    {block name='hook_before_body_closing_tag'}
      {hook h='displayBeforeBodyClosingTag'}
    {/block}
  </body>

</html>
