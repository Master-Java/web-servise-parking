<#import "parts/common.ftlh" as c>

<@c.page>
    <h3 class="panel-title">Login with Username and Password</h3>
    <#if logout>
        <div class="alert alert-info" role="alert">You've been logged out successfully.</div>
    </#if>
    <#if error>
        <div class="alert alert-danger" role="alert">Invalid Username or Password!</div>
    </#if>

    <form method="post">
        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
        <label for="username">Username</label>
        <input type="text" class="form-control" id="username" placeholder="Username" name="username">
        <br>
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" placeholder="Password" name="password">
        <br>
        <button type="submit" class="btn btn-default">Log in</button>
    </form>
    <br>
    <a href="/registration">
        <button type="submit" class="btn btn-default">Регистрация</button>
    </a>
</@c.page>