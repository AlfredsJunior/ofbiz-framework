<#--

Copyright 2001-2006 The Apache Software Foundation

Licensed under the Apache License, Version 2.0 (the "License"); you may not
use this file except in compliance with the License. You may obtain a copy of
the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations
under the License.
-->

<div class="boxtop">
    <div class="boxhead-right" align="right">
        <a href="<@ofbizUrl>emptycart</@ofbizUrl>" class="buttontext">${uiLabelMap.OrderClearOrder}</a>
        <#if (shoppingCart.size() > 0)>
        <a href="javascript:document.cartform.submit()" class="buttontext">${uiLabelMap.OrderRecalculateOrder}</a>
        <a href="javascript:removeSelected();" class="buttontext">${uiLabelMap.OrderRemoveSelected}</a>
        <#else>
        <span class="buttontextdisabled">${uiLabelMap.OrderRecalculateOrder}</span>
        <span class="buttontextdisabled">${uiLabelMap.OrderRemoveSelected}</span>
        </#if>
        <#if shoppingCart.getOrderType() == "PURCHASE_ORDER">
            <#if shoppingCart.getOrderPartyId() == "_NA_" || (shoppingCart.size() = 0)>
                <span class="buttontextdisabled">${uiLabelMap.OrderFinalizeOrder}</span>
            <#else>
                <a href="<@ofbizUrl>finalizeOrder?finalizeMode=purchase&finalizeReqCustInfo=false&finalizeReqShipInfo=false&finalizeReqOptions=false&finalizeReqPayInfo=false</@ofbizUrl>" class="buttontext">${uiLabelMap.OrderFinalizeOrder}</a>
            </#if>
        <#else>
            <#if shoppingCart.size() = 0>
            <span class="buttontextdisabled">${uiLabelMap.OrderQuickFinalizeOrder}</span>
            <span class="buttontextdisabled">${uiLabelMap.OrderFinalizeOrderDefault}</span>
            <span class="buttontextdisabled">${uiLabelMap.OrderFinalizeOrder}</span>
            <#else>
            <a href="<@ofbizUrl>quickcheckout</@ofbizUrl>" class="buttontext">${uiLabelMap.OrderQuickFinalizeOrder}</a>
            <a href="<@ofbizUrl>finalizeOrder?finalizeMode=default</@ofbizUrl>" class="buttontext">${uiLabelMap.OrderFinalizeOrderDefault}</a>
            <a href="<@ofbizUrl>finalizeOrder?finalizeMode=init</@ofbizUrl>" class="buttontext">${uiLabelMap.OrderFinalizeOrder}</a>
            </#if>
        </#if>
    </div>
    <div class="boxhead-left">
        &nbsp;${uiLabelMap.CommonCreate}
        <#if shoppingCart.getOrderType() == "PURCHASE_ORDER">
            ${uiLabelMap.OrderPurchaseOrder}
        <#else>
            ${uiLabelMap.OrderSalesOrder}
        </#if>
    </div>
    <div class="boxhead-fill">&nbsp;</div>
</div>

