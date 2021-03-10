<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    user = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = user.getUsername()
    isAdmin = false
    >
    <#if name == "admin">
        <#assign name = "👑 admin 👑"
        isAdmin = true>
    </#if>
<#else>
    <#assign
    name = ""
    isAdmin = false
    >
</#if>