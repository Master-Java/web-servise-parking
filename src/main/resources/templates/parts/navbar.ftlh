<#import "login.ftlh" as l>
<#include "security.ftlh">

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/">Главная</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Галерея</a>
            </li>
            <#if Session.SPRING_SECURITY_CONTEXT??>
                <li class="nav-item">
                    <a class="nav-link" href="/myProfile">Мой профиль</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/myCars">Мои машины</a>
                </li>
            </#if>
            <li class="nav-item">
                <a class="nav-link" href="/price">Цены</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/address">Наши адреса</a>
            </li>
        </ul>
        <div class="navbar-text mr-3">
            ${name}
        </div>
        <#if !springMacroRequestContext.requestUri?contains("/registration")&&!springMacroRequestContext.requestUri?contains("/login")>
            <#if Session.SPRING_SECURITY_CONTEXT??>
                <@l.logout />
            <#else>
                <a href="/login">
                    <button class="btn btn-primary" type="submit">Войти</button>
                </a>
            </#if>
        </#if>
    </div>
</nav>