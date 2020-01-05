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
{block name='header_banner'}
  <div class="header-banner">
      {hook h='displayBanner'}
  </div>
{/block}

{block name='header_nav'}
  <nav class="header-nav">
    <div class="container header__container">
      <div class="row visible--desktop displayNav1">
        <div class="col-md-6">
            {* {hook h='displayNav1'} *}

            <a href="#" class="header-top__left"><strong>Potrebujete poradiť?</strong></a>
            <a href="#" class="header-top__left"><img src="{$urls.base_url}themes/classic-rocket/assets/img/mail.svg" class="header-icons mr-1"> info@cbdzone.sk <strong>(24/7)</strong></a>
            <a href="#" class="header-top__left"><img src="{$urls.base_url}themes/classic-rocket/assets/img/tel.svg" class="header-icons mr-1"> 0915 421 066 <strong>(10:00 - 18:00)</strong></a>
            
        </div>
        <div class="col-md-6 displayNav2 right-nav">
            <a href="#" class="header-top__left mb-dva">Informácie o nákupe</a>
            <a href="#" class="header-top__left mb-dva">Blog</a>
            <a href="#" class="header-top__left mb-dva">O nás</a>
            <a href="#" class="header-top__left mb-dva">Kontakt</a>

            {hook h='displayNav2'}
        </div>
      </div>
      <div class="visible--mobile header--mobile no-gutters">
        <div class="col-4">
          <button id="menu-icon" class="btn" data-toggle="modal" data-target="#mobile_top_menu_wrapper">
            <i class="material-icons d-inline hamburger-menu">&#xE5D2;</i>
          </button>
        </div>
        <div class="col-4">
          <div class="top-logo" id="_mobile_logo"></div>
        </div>
        <div class="col-4 mobile-user right-nav">
          <div id="_mobile_user_info"></div>
          <div id="_mobile_cart" class="mobile-cart"></div>
        </div>

      </div>
    </div>
  </nav>
{/block}

{block name='header_top'}
  <div class="header-top">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-3 visible--desktop" id="_desktop_logo">
          <a href="{$urls.base_url}" class="mobile-logo d-block d-md-none">
            <img class="logo img-responsive" src="{$urls.base_url}themes/sumba/assets/img/heart.svg" alt="{$shop.name}">
            <div class="mobile-logo__popis">
              <span class="tracking-in-expand">CBDPortal.sk</span>
            </div>
          </a>
          <a href="{$urls.base_url}" class="pc-logo d-none d-md-flex">
            <img class="logo img-responsive heartbeat" src="{$urls.base_url}themes/sumba/assets/img/heart.svg" alt="{$shop.name}">
            <div class="pc-logo__popis">
              <span class="tracking-in-expand">CBDPortal.sk</span>
              <span class="tracking-in-expand2">Najlepsie CBD na celom internete</span>
            </div>
          </a>
        </div>
        <div class="col-md-9 col-sm-12 displayTop position-relative">
            {hook h='displayTop'}
        </div>
      </div>
    </div>
    <div class="d-none d-lg-block">
      <div class="header-menu">
        <div class="container"></div>
      </div>
    </div>
  </div>
    {hook h='displayNavFullWidth'}
{/block}
