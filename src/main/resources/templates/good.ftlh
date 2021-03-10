<#import "parts/common.ftlh" as c>

<@c.page>
    <br><br><br><br><br><br>
    <h3 align="center">Вы успешно забронировали место ${parking.getPlaceName()} в паркинге ${parking.getParkingName()}</h3>
    <h3 align="center">Для своей машины с номером - ${parking.getCar().getNumber()}</h3>
    <h1 id="gogo" align="center"></h1>
    <script>
        timedInfo();
        function timedInfo() {
            setTimeout(a13, 0)
            setTimeout(a12, 250)
            setTimeout(a11, 500)
            setTimeout(a10, 750)
            setTimeout(a9, 1000)
            setTimeout(a8, 1250)
            setTimeout(a7, 1500)
            setTimeout(a6, 1750)
            setTimeout(a5, 2000)
            setTimeout(a4, 2250)
            setTimeout(a3, 2500)
            setTimeout(a2, 2750)
            setTimeout(a1, 3000)
        }
        function a1() {
            document.getElementById("gogo").innerHTML = "🏠🏎💨............";
        }
        function a2() {
            document.getElementById("gogo").innerHTML = "🏠.🏎💨...........";
        }
        function a3() {
            document.getElementById("gogo").innerHTML = "🏠..🏎💨..........";
        }
        function a4() {
            document.getElementById("gogo").innerHTML = "🏠...🏎💨.........";
        }
        function a5() {
            document.getElementById("gogo").innerHTML = "🏠....🏎💨........";
        }
        function a6() {
            document.getElementById("gogo").innerHTML = "🏠.....🏎💨.......";
        }
        function a7() {
            document.getElementById("gogo").innerHTML = "🏠......🏎💨......";
        }
        function a8() {
            document.getElementById("gogo").innerHTML = "🏠.......🏎💨.....";
        }
        function a9() {
            document.getElementById("gogo").innerHTML = "🏠........🏎💨....";
        }
        function a10() {
            document.getElementById("gogo").innerHTML = "🏠.........🏎💨...";
        }
        function a11() {
            document.getElementById("gogo").innerHTML = "🏠..........🏎💨..";
        }
        function a12() {
            document.getElementById("gogo").innerHTML = "🏠...........🏎💨.";
        }
        function a13() {
            document.getElementById("gogo").innerHTML = "🏠............🏎💨";
        }
        setTimeout(function () {
            window.location.href = '/cars';
        }, (3 * 1000)+290);
    </script>
</@c.page>