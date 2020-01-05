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
<div id="_desktop_cart" class="ml-3">
  <div class="blockcart cart-preview" data-refresh-url="{$refresh_url}" data-cartitems="{$cart.products_count}">
    <div class="shopping-cart button_cart">
      <a rel="nofollow" href="{$cart_url}">
        <img src="{$urls.base_url}themes/classic-rocket/assets/img/cart.svg" class="header-icons__cart d-none d-lg-inline-block">
        <img src="{$urls.base_url}themes/classic-rocket/assets/img/cart-mobile.svg" class="header-icons__cart cart-mobile d-block d-lg-none">
        <span class="item_count header-cart__counter d-none d-lg-block">{$cart.products_count}</span>
        <span class="item_total d-none d-lg-inline-block">{$cart.totals.total.value}</span>
      </a>
    </div>
    <div class="popup_cart">
    <ul>
      {foreach from=$cart.products item=product}
        <li>{include 'module:ps_shoppingcart/ps_shoppingcart-product-line.tpl' product=$product}</li>
      {/foreach}
    </ul>
	<div class="price_content">
		<div class="cart-subtotals">
		  {foreach from=$cart.subtotals item="subtotal"}
			<div class="price_inline">
			  <span class="label">{$subtotal.label}</span>
			  <span class="value">{$subtotal.value}</span>
			</div>
		  {/foreach}
		</div>
		<div class="cart-total price_inline">
		  <span class="label">{$cart.totals.total.label}</span>
		  <span class="value">{$cart.totals.total.value}</span>
		</div>
    </div>
	<div class="checkout">
		<a href="{$cart_url}" class="btn btn-primary">{l s='Checkout' d='Shop.Theme.Actions'}</a>
	</div>
  </div>
  </div>
</div>
