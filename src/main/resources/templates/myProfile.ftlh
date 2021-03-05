<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <h2>Мой профиль</h2>
    <table modelattribute="thisUser">
        <tr>
            <th>Пользователь: ${name}</th>
        </tr>
        <tr>
            <td>Имя:</td>
            <td>${thisUser.userDetails.name}</td>
        </tr>
        <tr>
            <td>Фамилия:</td>
            <td>${thisUser.userDetails.surname}</td>
        </tr>
        <tr>
            <td>Отчество:</td>
            <td>${thisUser.userDetails.patronymic}</td>
        </tr>
        <tr>
            <td>Возраст:</td>
            <td>${thisUser.userDetails.age}</td>
        </tr>
        <tr>
            <td>Телефон:</td>
            <td>${thisUser.userDetails.phone}</td>
        </tr>
        <tr>
            <td>Email:</td>
            <td>${thisUser.userDetails.email}</td>
        </tr>
        <tr>
            <td>Город:</td>
            <td>${thisUser.userDetails.city}</td>
        </tr>
        <tr>
            <td>Страна:</td>
            <td>${thisUser.userDetails.country}</td>
        </tr>
        <tr>
            <td>Дата регистрации:</td>
            <td>${thisUser.userDetails.registrationDate}</td>
        </tr>
    </table>
    <a href="/my_profile/edit">
        <button class="custom-btn btn-4" type="submit"><span>Редактировать</span></button>
    </a>
</@c.page>