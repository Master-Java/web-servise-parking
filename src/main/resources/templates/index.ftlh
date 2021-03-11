<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>Это наш проект про паркинг</h2>
    <br>
    <#if Session.SPRING_SECURITY_CONTEXT??>
    <a href="/index/reservation/Green">"Зелёный" паркинг</a>
    <br>
    <a href="/index/reservation/Yellow">"Жёлтый" паркинг</a>
    <br>
    <a href="/index/reservation/Red">"Красный" паркинг</a>
    </#if>
    <br>
    <br>
</@c.page>