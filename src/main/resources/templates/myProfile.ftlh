<#import "parts/common.ftlh" as c>
<#include "parts/security.ftlh">

<@c.page>
    <h2>Мой профиль</h2>
    <table modelattribute="thisUser" class="myTable">
        <tr>
            <th>Пользователь:</th>
            <td>${name}</td>
        </tr>
        <tr>
            <th>Имя:</th>
            <td>${thisUser.userDetails.name}</td>
        </tr>
        <tr>
            <th>Фамилия:</th>
            <td>${thisUser.userDetails.surname}</td>
        </tr>
        <tr>
            <th>Отчество:</th>
            <td>${thisUser.userDetails.patronymic}</td>
        </tr>
        <tr>
            <th>Возраст:</th>
            <td>${thisUser.userDetails.age}</td>
        </tr>
        <tr>
            <th>Телефон:</th>
            <td>${thisUser.userDetails.phone}</td>
        </tr>
        <tr>
            <th>Email:</th>
            <td>${thisUser.userDetails.email}</td>
        </tr>
        <tr>
            <th>Город:</th>
            <td>${thisUser.userDetails.city}</td>
        </tr>
        <tr>
            <th>Country:</th>
            <td>${thisUser.userDetails.country}</td>
        </tr>
        <tr>
            <th>Дата регистрации:</th>
            <td>${thisUser.userDetails.registrationDate}</td>
        </tr>
    </table>
    <a href="/profile/edit">
        <button class="custom-btn btn-4" type="submit"><span>Редактировать</span></button>
    </a>
</@c.page>