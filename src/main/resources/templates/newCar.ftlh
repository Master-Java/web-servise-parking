<#import "parts/common.ftlh" as c>

<@c.page>
    <h2>Добавление новой машины</h2>
    <br>
    <br>
    <form method="post" action="/cars/new">
        <label for="number">Госномер машины</label>
        <input type="text" pattern="[АВЕКМНОРСТУХ]{1}[0-9]{3}[АВЕКМНОРСТУХ]{2} ([0-9]{2}||[0-9]{3})" title="Правильный формат - 1ХХХ11 11(1)"
               class="form-control" maxlength="10" id="number" name="number" required>
        <label for="username">Бренд</label>
        <select id="brand" name="brand" class="form-control" required>
            <option value="Audi">Audi</option> <option value="BMW">BMW</option><option value="Chery">Chery</option>
            <option value="Chevrolet">Chevrolet</option> <option value="Citroen">Citroen</option><option value="Daewoo">Daewoo</option>
            <option value="Ford">Ford</option> <option value="Haval">Haval</option><option value="Honda">Honda</option>
            <option value="Hyundai">Hyundai</option> <option value="Infiniti">Infiniti</option><option value="Jaguar">Jaguar</option>
            <option value="Kia">Kia</option> <option value="Land Rover">Land Rover</option><option value="Lexus">Lexus</option> <option value="LADA">LADA</option>
            <option value="MINI">MINI</option> <option value="Mazda">Mazda</option><option value="Mercedes-Benz">Mercedes-Benz</option>
            <option value="Mitsubishi">Mitsubishi</option> <option value="Nissan">Nissan</option><option value="Opel">Opel</option>
            <option value="Peugeot">Peugeot</option> <option value="Porsche">Porsche</option><option value="Renault">Renault</option>
            <option value="Skoda">Skoda</option> <option value="SsangYong">SsangYong</option><option value="Subaru">Subaru</option>
            <option value="Suzuki">Suzuki</option> <option value="Toyota">Toyota</option><option value="Volkswagen">Volkswagen</option>
            <option value="Volvo">Volvo</option> <option value="ГАЗ">ГАЗ</option><option value="Mercedes-Benz">УАЗ</option>
        </select>
        <label for="power">Лошадиных сил</label>
        <input type="number" title="Минимум 1 л/с, максимально 999 л/с" min="1" max="999"
               class="form-control" maxlength="3" id="power" name="power" required>
        <label for="category">Категория</label>
        <select id="category" name="category" class="form-control">
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="C">C</option>
            <option value="D">D</option>
            <option value="M">M</option>
        </select>
        <label for="yearOfIssue">Гoд выпуска</label>
        <input type="number" min="1950" max="${todayYear}" class="form-control" maxlength="3" id="yearOfIssue" name="yearOfIssue" required>
        <label for="environmental">Еврокласс</label>
        <select id="environmental" name="environmental" class="form-control">
            <option value="Евро-1">Евро-1</option>
            <option value="Евро-2">Евро-2</option>
            <option value="Евро-3">Евро-3</option>
            <option value="Евро-4">Евро-4</option>
            <option value="Евро-5">Евро-5</option>
        </select>
        <input name="${_csrf.parameterName}" value="${_csrf.token}" type="hidden">
        <button class="custom-btn btn-4" type="submit"><span>Сохранить</span></button>
    </form>
</@c.page>