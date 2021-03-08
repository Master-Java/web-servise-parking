<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>Тут мои машины</h2>
    <form method="post" action="/cars">
        <label for="number">Госномер машины</label>
        <input type="text" pattern="[АВЕКМНОРСТУХ]{1}[0-9]{3}[АВЕКМНОРСТУХ]{2} [0-9]{2,3}" class="form-control" maxlength="10" id="number" name="number">

        <label for="username">Бренд</label>
        <select id="brand" name="brand" class="form-control">
            <option value="Volvo">Volvo</option>
            <option value="Saab">Saab</option>
            <option value="Opel">Opel</option>
            <option value="Audi">Audi</option>
        </select>

<#--        <label for="dateForRented">С какого числа </label>-->
<#--        <input type="date" class="form-control" min="${now}" max="${max}" maxlength="15" id="dateForRented" name="dateForRented" value="${now}">-->

        <label for="power">Лошадиных сил</label>
        <input type="number" min="0" max="999" class="form-control" maxlength="3" id="power" name="power">

        <label for="category">Категория</label>
        <select id="category" name="category" class="form-control">
            <option value="Volvo">A</option>
            <option value="Saab">B</option>
            <option value="Opel">C</option>
            <option value="Audi">D</option>
            <option value="Audi">M</option>
        </select>

        <label for="yearOfIssue">ГОд выпуска</label>
        <input type="number" min="1950" max="${todayYear}" class="form-control" maxlength="3" id="yearOfIssue" name="yearOfIssue">

        <label for="environmental">Еврокласс</label>
        <select id="environmental" name="environmental" class="form-control">
            <option value="Volvo">Евро-1</option>
            <option value="Saab">Евро-2</option>
            <option value="Opel">Евро-3</option>
            <option value="Audi">Евро-4</option>
            <option value="Audi">Евро-5<option>
        </select>



        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
        <button class="custom-btn btn-4" type="submit"><span>Сохранить</span></button>
    </form>
</@c.page>