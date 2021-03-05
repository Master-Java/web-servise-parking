<#macro login path isRegisterForm>
    <#if !Session.SPRING_SECURITY_CONTEXT??>
        <form action="${path}" method="post">
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Имя пользователя:</label>
                <div class="col-sm-6">
                    <input type="text" name="name" value="<#if user??>${user.name}</#if>"
                           class="form-control ${(nameError??)?string('is-invalid', '')}"
                           placeholder="User name"/>
                    <#if nameError??>
                        <div class="invalid-feedback">
                            ${nameError}
                        </div>
                    </#if>
                </div>
            </div>
            <div class="form-group row">
                <label class="col-sm-2 col-form-label">Пароль:</label>
                <div class="col-sm-6">
                    <input type="password" name="password"
                           class="form-control ${(passwordError??)?string('is-invalid', '')}"
                           placeholder="Password"/>
                    <#if passwordError??>
                        <div class="invalid-feedback">
                            ${passwordError}
                        </div>
                    </#if>
                </div>
            </div>
            <#if isRegisterForm>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Повторите пароль:</label>
                    <div class="col-sm-6">
                        <input type="password" name="password2"
                               class="form-control ${(password2Error??)?string('is-invalid', '')}"
                               placeholder="Password"/>
                        <#if password2Error??>
                            <div class="invalid-feedback">
                                ${passwordError}
                            </div>
                        </#if>
                    </div>
                </div>
            </#if>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button class="custom-btn btn-4" type="submit"><span><#if isRegisterForm>Создать<#else>Войти</#if></span></button>
        </form>
    <#else>
        <@logout>

        </@logout>
    </#if>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button class="custom-btn btn-4" type="submit"><span>Выйти</span></button>
    </form>
</#macro>
