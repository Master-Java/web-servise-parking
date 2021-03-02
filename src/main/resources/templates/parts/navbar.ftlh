<#import "login.ftlh" as l>
<#include "security.ftlh">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/index">Главная</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/gallery">Галерея</a>
            </li>
            <#if Session.SPRING_SECURITY_CONTEXT??>
                <li class="nav-item">
                    <a class="nav-link" href="/my_profile">Мой профиль</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/my_cars">Мои машины</a>
                </li>
            </#if>
            <li class="nav-item">
                <a class="nav-link" href="/price">Цены</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/address">Наши адреса</a>
            </li>
<#--            <#if !springMacroRequestContext.requestUri?contains("/index")>-->
<#--            <li class="nav-item">-->
<#--                <a class="nav-link" href="#" onclick="history.back();return false;">Назад</a>-->
<#--            </li>-->
<#--            </#if>-->
        </ul>
        <#if !springMacroRequestContext.requestUri?contains("/registration")&&!springMacroRequestContext.requestUri?contains("/login")>
            <#if Session.SPRING_SECURITY_CONTEXT??>
                <div class="navbar-text mr-3">
                    ${name}
                </div>
                <@l.logout />
            <#else>
                <a href="/login">
                    <button class="btn btn-primary" type="submit">Войти</button>
                </a>
            </#if>
        </#if>
    </div>
</nav>