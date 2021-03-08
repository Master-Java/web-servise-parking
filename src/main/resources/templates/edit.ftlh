<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>Редактировать профиль</h2>
    <form method="post" action="/profile/edit" modelattribute="thisUserDetails">
        <label for="username">Имя</label>
        <input type="text" class="form-control" maxlength="15" id="name" name="name" value="${thisUserDetails.name}">

        <label for="surname">Фамилия</label>
        <input type="text" class="form-control" maxlength="20" id="surname" name="surname" value="${thisUserDetails.surname}">

        <label for="patronymic">Отчество</label>
        <input type="text" class="form-control" maxlength="20" id="patronymic" name="patronymic" value="${thisUserDetails.patronymic}">

        <label for="age">Возраст</label>
        <input type="number" class="form-control" id="age" name="age" value="${thisUserDetails.age}" min="0" max="155" required>

        <label for="phone">Телефон</label>
        <input type="text" class="form-control" maxlength="12" id="phone" name="phone" value="${thisUserDetails.phone}">

        <label for="email">Email</label>
        <input type="email" class="form-control" maxlength="30" id="email" name="email" value="${thisUserDetails.email}">

        <label for="city">Город</label>
        <input type="text" class="form-control" maxlength="40" id="city" name="city" value="${thisUserDetails.city}">

        <label for="country">Страна</label>
        <input class="form-control" list="allCountry" maxlength="40" id="country" name="country" value="${thisUserDetails.country}">
        <datalist id="allCountry">
            <option value="Россия">
            <option value="Сша">
            <option value="Китай">
            <option value="Германия">
            <option value="Франция">
            <option value="Финляндия">
        </datalist>
        <br>
        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
        <button class="custom-btn btn-4" type="submit"><span>Сохранить</span></button>
    </form>
    <br><br><br><br><br><br><br><br><br><br><br>
</@c.page>