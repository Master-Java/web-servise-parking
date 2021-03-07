<#macro page>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Паркинг</title>
        <link rel="stylesheet" href="/static/css/style.css">

        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
              integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
              crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
              integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
              crossorigin="anonymous">
    </head>
    <body>
    <div class="page-for-parking">
        <main class="main-parking">
            <#include "navbar.ftlh">
            <div class="container mt-5">
                <#nested>
            </div>
        </main>
        <footer class="footer-parking">

            <div class="footer-nav">
                <a class="footer-link" href="/index">Главная</a>
                <a class="footer-link" href="/gallery">Галерея</a>
                <a class="footer-link" href="/price">Цены</a>
                <a class="footer-link" href="/address">Наши адреса</a>
            </div>
            <div class="logo-parking">
                <h1 class="logo">Parking</h1>
            </div>
            <div class="contact">
                <ul>
                    <li class="whatsapp"><a href="#"><i class="fa fa-whatsapp fa-2x" aria-hidden="true"></i></a></li>
                    <li class="google"><a href="#"><i class="fa fa-google fa-2x" aria-hidden="true"></i></a></li>
                    <li class="instagram"><a href="#"><i class="fa fa-instagram fa-2x" aria-hidden="true"></i></a></li>
                    <li class="twitter"><a href="#"><i class="fa fa-twitter fa-2x" aria-hidden="true"></i></a></li>
                    <li class="facebook"><a href="#"><i class="fa fa-facebook fa-2x" aria-hidden="true"></i></a></li>
                </ul>
            </div>
        </footer>
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
                crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
                integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
                crossorigin="anonymous"></script>
    </div>
    </body>
    </html>
</#macro>