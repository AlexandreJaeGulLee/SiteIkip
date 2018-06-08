<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="pikiip.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Cadastro</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
    <link href="css/Site.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.css" rel="stylesheet" />
</head>
<body>
    <form id="form" runat="server">
        <nav class="navbar fixed-top navbar-dark bg-dark">
            <a class="navbar-brand">
                <img src="imagens/logo_laranja2.png" class="img-fluid" style="height: 80px; width: 150px" /></a>
            <ul class="nav navbar-nav navbar-right">
                <asp:Button ID="Button1" runat="server" Text="Voltar" CssClass="btn btn-info" OnClick="Button1_Click" />
            </ul>
        </nav>
        <div class="form-text" style="font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif">
            <h1>Registrar usuário</h1>
        </div>
        <div class="form-signin">
            <div class="form-group">
                <asp:Label ID="lbNome" runat="server" CssClass="sr-only" Text=""></asp:Label>
                <asp:TextBox ID="textNome" runat="server" placeholder="Nome" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="erroNome" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lbEmail" runat="server" CssClass="sr-only" Text=""></asp:Label>
                <asp:TextBox ID="textEmail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
                <asp:Label ID="erroEmail" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">
                <asp:Label ID="lbSenha" runat="server" CssClass="sr-only" Text=""></asp:Label>
                <asp:TextBox ID="textSenha" runat="server" placeholder="Senha" CssClass="form-control" TextMode="Password"></asp:TextBox>
                <asp:Label ID="erroSenha" runat="server" Text=""></asp:Label>
            </div>
            <div class="form-group">
                <asp:Button ID="Cadastrar" runat="server" Text="Registrar" CssClass="btn btn-info" OnClick="Cadastrar_Click" />
            </div>           
            <asp:Label ID="msgCriar" runat="server" Text=""></asp:Label>
        </div>
  
    </form>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"> </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>
