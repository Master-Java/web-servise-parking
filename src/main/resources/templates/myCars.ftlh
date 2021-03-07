<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>Тут мои машины</h2>
    <form method="post" action="/cars">
        <label for="username">Госномер машины</label>
        <input type="text" pattern="[АВЕКМНОРСТУХ]{1}[0-9]{3}[АВЕКМНОРСТУХ]{2} [0-9]{2,3}" class="form-control" maxlength="10" id="number" name="number">

        <label for="username">Бренд</label>
        <select id="cars" id="brand" name="brand" class="form-control">
            <option value="Volvo">Volvo</option>
            <option value="Saab">Saab</option>
            <option value="Opel">Opel</option>
            <option value="Audi">Audi</option>
        </select>

        <label for="username">С какого числа </label>
        <input type="date" class="form-control" min="${now}" max="${max}" maxlength="15" id="dateForRented" name="dateForRented" value="${now}">

        <label for="username">Отчество</label>
        <input type="text" class="form-control" maxlength="20" id="patronymic" name="patronymic">






        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
        <button class="custom-btn btn-4" type="submit"><span>Сохранить</span></button>
    </form>
</@c.page>