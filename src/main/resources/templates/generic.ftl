<!DOCTYPE HTML>

<html>
<head>
	<title>Ethereum Node Monitor</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="assets/css/main.css" />
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
        <p class="copyright">&copy; 2017 <a href="http://kolesow.me" target="_blank">Vlad Kolesov</a> . Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
    </footer>

</div>


</body>

</html>