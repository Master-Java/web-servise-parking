<#import "parts/common.ftlh" as c>

<@c.page>
    <h3 class="panel-title">Войдите используя имя и пароль</h3>
    <#if logout>
        <div class="alert alert-info" role="alert">Вы вышли из аккаунта</div>
    </#if>
    <#if error>
        <div class="alert alert-danger" role="alert">Неверный пароль или логин</div>
    </#if>

    <form method="post">
        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
        <label for="username">Логин</label>
        <input type="text" class="form-control" id="username" placeholder="Username" name="username">
        <br>
        <label for="password">Пароль</label>
        <input type="password" class="form-control" id="password" placeholder="Password" name="password">
        <br>
        <button class="custom-btn btn-4" type="submit"><span>Войти</span></button>
    </form>
    <br>
    <a href="/registration">
        <button class="custom-btn btn-4" type="submit"><span>Регистрация</span></button>
    </a>
</@c.page>