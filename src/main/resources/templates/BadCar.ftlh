<#import "parts/common.ftlh" as c>

<@c.page>
    <h1 align="center">Машина с таким номером уже есть в нашей базе</h1>
    <h2 id="gogo" align="center">Вы попадёте обратно через 3 секунды</h2>
    <script>
        timedInfo();
        function timedInfo() {
            setTimeout(one, 0)
            setTimeout(two, 1000)
            setTimeout(three, 2000)
            setTimeout(four, 3000)
        }
        function one() {
            document.getElementById("gogo").innerHTML = "Вы попадёте обратно через 3 секунды";
        }
        function two() {
            document.getElementById("gogo").innerHTML = "Вы попадёте обратно через 2 секунды";
        }
        function three() {
            document.getElementById("gogo").innerHTML = "Вы попадёте обратно через 1 секунду";
        }
        function four() {
            document.getElementById("gogo").innerHTML = "Вы попадёте обратно через 0 секунд";
        }
        setTimeout(function () {
            window.location.href = '/cars/new';
        }, (3 * 1000)+250);
    </script>
</@c.page>