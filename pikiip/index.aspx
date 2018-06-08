<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="pikiip.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.css" rel="stylesheet" />
    <link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>
    <form id="form1" runat="server">

        <nav class="navbar fixed-top navbar-dark bg-dark" runat="server">
            <a class="navbar-brand" href="index.aspx">
                <img src="imagens/logo_roxo3.png" class="img-fluid" style="height: 80px; width: 150px" /></a>
            <ul class="nav navbar-nav navbar-right">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-info" Text="Login" OnClick="Button1_Click" />
            </ul>
        </nav>

        <%--	<!-- Header -->
			<header id="header" class="alt">
				<div class="logo"><a href="index.html">Urban <span>by TEMPLATED</span></a></div>
				<a href="#menu">Menu</a>
			</header>

		<!-- Nav -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index.html">Home</a></li>
					<li><a href="generic.html">Generic</a></li>
					<li><a href="elements.html">Elements</a></li>
				</ul>
			</nav>--%>

        <section id="banner">
            <div class="inner">
                <header>
                    <h1>O monitoramento que você precisava</h1>
                    <p>Venha saber mais.</p>
                </header>
            </div>
        </section>
        <div id="main">

            <!-- Section -->
            <section class="wrapper style1">
                <div class="inner">
                    <!-- 2 Columns -->
                    <div class="flex flex-2">
                        <div class="col col1">
                            <div class="image round fit">

                                <img src="imagens/520.jpg" class="img-fluid" />
                            </div>
                        </div>
                        <div class="col col2">
                            <h1>Quem somos</h1>
                            <p style="font-size:20px">
                                Somos uma equipe de estudantes, temos como objetivo desenvolver um software de monitoramento,
                                            para assim facilitar seu dia a dia no local de trabalho.
                            </p>
                            <p style="font-size:20px">O projeto iKip surgiu no 1º semestre de 2018, junto com a parceria da faculdade Bandtec, a faculdade é uma grande 
                                apoiadora no  nosso desenvolvimento profissional e pessoal.
                            </p>
                        </div>
                    </div>
                </div>
            </section>

            <!-- Section -->
            <section class="wrapper style2">
                <div class="inner">
                    <div class="flex flex-2">
                        <div class="col col2">
                            <p style="font-size: 100px">Em construção</p>
                        </div>
                        <%--	<div class="col col1 first">
									<div class="image round fit">
										<a href="generic.html" class="link"><img src="images/pic02.jpg" alt="" /></a>
									</div>
								</div>--%>
                    </div>
                </div>
            </section>

            <!-- Section -->
            <section class="wrapper style1">
                <div class="inner">
                    <header class="align-center">
                        <h2>Em construção</h2>

                    </header>
                    <div class="flex flex-3">
                        <div class="col align-center">
                            <div class="image round fit">
                                Em construção
                            </div>
                        </div>
                        <div class="col align-center">
                            <div class="image round fit">
                                Em construção
                            </div>

                        </div>
                        <div class="col align-center">
                            <div class="image round fit">
                                Em construção
                            </div>

                        </div>
                    </div>
                </div>
            </section>

        </div>

        <footer id="footer">
            <div class="copyright">
                <%--<ul class="icons">
                    <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                    <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                    <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
                    <li><a href="#" class="icon fa-snapchat"><span class="label">Snapchat</span></a></li>
                </ul>--%>
                <p>&copy; 2018</p>
            </div>
        </footer>
    </form>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/jquery.scrolly.min.js"></script>
    <script src="assets/js/jquery.scrollex.min.js"></script>
    <script src="assets/js/skel.min.js"></script>
    <script src="assets/js/util.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"> </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>
