<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="pikiip.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Login</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
    <link href="css/Site.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar fixed-top navbar-dark bg-dark" runat="server">
            <a class="navbar-brand" href="index.aspx">
                <img src="imagens/logo_azul3.png"  class="img-fluid" style="height:80px;width:150px"/> </a>
        </nav>
        <div class="form-signin" id="corpoLogin" runat="server">
            <img class="mb-4" src="imagens/Logo_colorido.png" />
            <asp:Label CssClass="sr-only" ID="lbLogin" runat="server" Text="Login"></asp:Label>
            <asp:TextBox ID="bLogin" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email" MaxLength="200"></asp:TextBox>
            <asp:Label ID="lbSenha" runat="server" Text="Senha" CssClass="sr-only"></asp:Label>
            <asp:TextBox ID="bSenha" runat="server" placeholder="Senha" CssClass="form-control" MaxLength="200" TextMode="Password"></asp:TextBox>
            <asp:Button ID="btnLogar" runat="server" Text="Entrar" CssClass="btn btn-lg btn-primary btn-block" OnClick="btnLogar_Click" />
            <asp:Label ID="lbMsg" runat="server" Text=""></asp:Label>
            <p class="mt-5 mb-3 text-muted">&copy; 2017-2018</p>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"> </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>

