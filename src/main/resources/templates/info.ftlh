<#import "parts/common.ftlh" as c>

<@c.page>
    <#if users??>
        <table>
            <tr align="center">
                <th colspan="11">Юзеры</th>
            </tr>
            <tr align="center">
                <th>Логин</th>
                <th>Имя</th>
                <th>Фамилия</th>
                <th>Отчество</th>
                <th>Возраст</th>
                <th>Телефон</th>
                <th>Email</th>
                <th>Город</th>
                <th>Страна</th>
                <th>Дата регистрации</th>
                <th>Сколько потратил</th>
            </tr>
            <#list users as user>
                <tr align="center">
                    <td>${user.getName()}</td>
                    <td>${user.getUserDetails().getName()}</td>
                    <td>${user.getUserDetails().getSurname()}</td>
                    <td>${user.getUserDetails().getPatronymic()}</td>
                    <td>${user.getUserDetails().getAge()}</td>
                    <td>${user.getUserDetails().getPhone()}</td>
                    <td>${user.getUserDetails().getEmail()}</td>
                    <td>${user.getUserDetails().getCity()}</td>
                    <td>${user.getUserDetails().getCountry()}</td>
                    <td>${user.getUserDetails().getRegistrationDate()}</td>
                    <td>${user.getUserDetails().getMoney()} $$$</td>
                </tr>
            </#list>
        </table>
    </#if>

    <#if cars??>
        <table>
            <tr align="center">
                <th colspan="10">Машины</th>
            </tr>
            <tr align="center">
                <th>Id машины</th>
                <th>Номер</th>
                <th>Бронь?</th>
                <th>Владелец</th>
                <th>До какого бронь</th>
                <th>Бренд</th>
                <th>Мощь</th>
                <th>Категория</th>
                <th>Год сборки</th>
                <th>Класс</th>
            </tr>
            <#list cars as car>
                <tr align="center">
                    <td>${car.getId()}</td>
                    <td>${car.getNumber()}</td>
                    <td><#if car.isRent()>❌<#else>✔️</#if></td>
                    <td>${car.getMyUser().getName()}</td>
                    <td>${car.getDateForRented()}</td>
                    <td>${car.getBrand()}</td>
                    <td>${car.getPower()}</td>
                    <td>${car.getCategory()}</td>
                    <td>${car.getYearOfIssue()}</td>
                    <td>${car.getEnvironmental()}</td>
                </tr>
            </#list>
        </table>
    </#if>

    <#if parking??>
        <#list parking1 as park>
            <#assign index = 15>
            <table>
                <tr>
                    <th colspan="15">
                        Parking <#if park?index==0>Green</#if><#if park?index==1>Yellow</#if><#if park?index==2>Red</#if></th>
                </tr>
                <tr>
                    <#list park as place>
                    <#if place?index%15==0>
                        </tr>
                        <tr>
                        <td>   ${place.getPlaceName()} - <#if place.isFree()>✔️<#else>❌</#if></td>
                    <#else>
                        <td>   ${place.getPlaceName()} - <#if place.isFree()>✔️<#else>❌</#if></td>
                    </#if>
                    </#list>
                </tr>
            </table>
            <br>
        </#list>
        <br><br><br><br><br>
        <table>
            <tr align="center">
                <th colspan="7">Паркинги</th>
            </tr>
            <tr>
                <th>Id места</th>
                <th>Имя места</th>
                <th>Имя паркинга</th>
                <th>Свободно?</th>
                <th>До какого свободно</th>
                <th>Цена</th>
                <th>Id машины</th>
            </tr>
            <#list parking as p>
                <tr>
                    <td>${p.getId()}</td>
                    <td>${p.getPlaceName()}</td>
                    <td>${p.getParkingName()}</td>
                    <td><#if p.isFree()>✔️<#else>❌</#if></td>
                    <td>${p.getDateForRented()}</td>
                    <td>${p.getPrice()}</td>
                    <td><#if p.getCar()??>${p.getCar().getId()}<#else></#if></td>
                </tr>
            </#list>
        </table>
    </#if>


</@c.page>