<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
	<title>Ethereum Node Monitor</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
    <link rel="stylesheet" href="assets/css/main.css" />
    <!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
    <!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
</head>
<body>

<!-- Wrapper -->
<div id="wrapper">

    <!-- Header -->
    <header id="header">
        <h1>Ethereum Node Monitor</h1>
        <p>Служебный модуль MePhorce для работы с нодой блокчейна эфириум</p>
        <h2 class="error">${error}</h2>
    </header>

    <!-- Main -->
    <div id="main">

        <!-- Content -->
        <section class="main">
            <h3>Версия клиента эфириума: <b>${clientVersion}</b> </h3>
        </section>
        <section class="main">
            <h3>Адрес текущего аккаунта: <b>${address}</b></h3>
        </section>
        <section class="main">
            <h3>Баланс текущего аккаунта в wei: <b>${balance}</b></h3>
            <h3>Баланс текущего аккаунта в eth: <b>${balanceInETH}</b></h3>
        </section>

    </div>

    <!-- Footer -->
    <footer id="footer">
        <#--<section>-->
            <#--<h2>Aliquam sed mauris</h2>-->
            <#--<p>Sed lorem ipsum dolor sit amet et nullam consequat feugiat consequat magna adipiscing tempus etiam dolore veroeros. eget dapibus mauris. Cras aliquet, nisl ut viverra sollicitudin, ligula erat egestas velit, vitae tincidunt odio.</p>-->
            <#--<ul class="actions">-->
                <#--<li><a href="#" class="button">Learn More</a></li>-->
            <#--</ul>-->
        <#--</section>-->
        <p class="copyright">&copy; 2017 <a href="http://kolesow.me" target="_blank">Vlad Kolesov</a> . Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
    </footer>

</div>

<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrollex.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/skel.min.js"></script>
<script src="assets/js/util.js"></script>
<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
<script src="assets/js/main.js"></script>


</body>
<script src="js/app.js"></script>
</html>