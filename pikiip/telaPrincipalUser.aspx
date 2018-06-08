<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="telaPrincipalUser.aspx.cs" Inherits="pikiip.telaPrincipalUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Tela inicial</title>
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
        <div>
            <nav class="navbar fixed-top navbar-dark bg-dark" runat="server">
                <a class="navbar-brand">
                    <img src="imagens/logo_vermelho2.png" class="img-fluid" style="height: 80px; width: 150px" />
                </a>
                <ul class="nav navbar-nav navbar-right">
                    <asp:Button ID="Button1" runat="server" Text="Logout" CssClass="btn btn-dark" OnClick="Button1_Click1" />
                </ul>
            </nav>
        </div>

        <div class="container">
            <div class="container">
                <h2></h2>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Computador1</button>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">Computador2</button>
                <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal3">Computador3</button>
                <div class="modal fade" id="myModal" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">                               
                                <h4 class="modal-title">Computador 1</h4>
                            </div>
                            <div class="modal-body">
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal fade" id="myModal2" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">                             
                                <h4 class="modal-title">Computador 2</h4>
                            </div>
                            <div class="modal-body">
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                            </div>
                        </div>
                    </div>
                </div>
                  <div class="modal fade" id="myModal3" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Computador 3</h4>
                            </div>
                            <div class="modal-body">
                                
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Sair</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"> </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>
