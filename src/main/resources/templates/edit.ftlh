<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>Редактировать профиль</h2>
    <form method="post" action="/my_profile/edit" modelattribute="thisUserDetails">
        <label for="username">Имя</label>
        <input type="text" class="form-control" id="name" name="name" value="${thisUserDetails.name}">
        <br>
        <label for="username">Фамилия</label>
        <input type="text" class="form-control" id="surname" name="surname" value="${thisUserDetails.surname}">
        <br>
        <label for="username">Отчество</label>
        <input type="text" class="form-control" id="patronymic" name="patronymic" value="${thisUserDetails.patronymic}">
        <br>
        <label for="username">Возраст</label>
        <input type="number" class="form-control" id="age" name="age" value="${thisUserDetails.age}" min="0" max="155"
               required>
        <br>
        <label for="username">Телефон</label>
        <input type="text" class="form-control" id="phone" name="phone" value="${thisUserDetails.phone}">
        <br>
        <label for="username">Email</label>
        <input type="email" class="form-control" id="email" name="email" value="${thisUserDetails.email}">
        <br>
        <label for="username">Город</label>
        <input type="text" class="form-control" id="city" name="city" value="${thisUserDetails.city}">
        <br>
        <label for="username">Страна</label>
        <br>
        <input class="form-control"list="allCountry" id="country" name="country" value="${thisUserDetails.country}">
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
        <button type="submit" class="btn btn-default">Редактировать</button>
    </form>
</@c.page>