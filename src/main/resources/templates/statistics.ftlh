<#import "parts/common.ftlh" as c>

<@c.page>
    <br><br><br><br>
    <h3>Статистика по юзерам</h3>
    <h5>Кол-во юзеров: ${countUsers}</h5>
    <a href="/statistics/users">
        <button class="custom-btn btn-4" type="submit"><span>Подробнее</span></button>
    </a>
    <br><br><br><br>
    <h3>Статистика по машинам</h3>
    <h5>Кол-во машин:  ${countCars}</h5>
    <a href="/statistics/cars">
        <button class="custom-btn btn-4" type="submit"><span>Подробнее</span></button>
    </a>
    <br><br><br><br>
    <h3>Статистика по паркингам</h3>
    <h5>Кол-во свободных мест:  ${countFreePlace}</h5>
        <a href="/statistics/parking">
        <button class="custom-btn btn-4" type="submit"><span>Подробнее</span></button>
    </a>
    <br><br><br><br>
</@c.page>