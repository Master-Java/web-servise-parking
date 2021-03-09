<#import "parts/common.ftlh" as c>

<@c.page>
    <h1>Мои машины</h1>
    <br><br>
    <#list cars as car>
        <table>
            <h4>
                Машина №${car?index + 1}
            </h4>
            <tr>
                <th>Марка</th><th>Номер</th><th>Мощность</th><th>Категория</th><th>Год выпуска</th><th>Бронь?</th>
            </tr>
            <tr>
                <td>${car.getBrand()}</td><td>${car.getNumber()}</td><td>${car.getPower()} л/с</td>
                <td>${car.getCategory()}</td><td>${car.getEnvironmental()}</td><td><#if car.isRent()>❌<#else>✔️</#if></td>
            </tr>
        </table>
        <br>
    </#list>
    <br><br>
    <a href="/cars/new">
        <button class="custom-btn btn-4" type="submit"><span>Новая</span></button>
    </a>
    <br><br><br><br>
</@c.page>