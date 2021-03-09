<#import "parts/common.ftlh" as c>

<@c.page>
    <h1>Бронь мест для паркинга ${name}</h1>
    <br><br>
    <#if cars??>
        <form method="post" action="/index/reservation">
            <label for="placeName">Выберите место в паркинге ${name}</label>
            <select class="form-control" id="placeName" name="placeName" required>
                <#list place as parking1>
                    <#if parking1.isFree()>
                        <option value="${parking1.getId()}">${parking1.getPlaceName()}</option>
                    </#if>
                </#list>
            </select>

            <label for="сarId">Выберите свою машину</label>
            <select class="form-control" id="сarId" name="сarId" required>
                <#list cars as car>
                    <#if car.isRent()>
                        <option value="${car.getId()}">${car.getBrand()} --- ${car.getNumber()}
                            --- ${car.getPower()} л/с</option>
                    </#if>
                </#list>
            </select>

            <label for="dateFor">Выберите на какой срок хотите арендовать</label>
            <select class="form-control" id="dateFor" name="dateFor" required>
                <option value="1">1 месяц</option>
                <option value="2">2 месяца</option>
                <option value="3">3 месяца</option>
                <option value="4">4 месяца</option>
                <option value="5">5 месяцев</option>
                <option value="6">6 месяцев</option>
                <option value="9">9 месяцев</option>
                <option value="12">1 год</option>
                <option value="18">1,5 года</option>
                <option value="24">2 года</option>
                <option value="36">3 года</option>
            </select>
            <br>
            <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
            <button class="custom-btn btn-4" type="submit"><span>Забронировать</span></button>
        </form>
    <#else>
        <h2>У вас нет машин, поэтому вы не можете забронировать место</h2>
        <br>
        <h3>Вот ссылка на добавление новой машины</h3>
        <a href="/cars/new">
            <button class="custom-btn btn-4" type="submit"><span>Добавить</span></button>
        </a>
    </#if>
    <br><br><br><br>
</@c.page>