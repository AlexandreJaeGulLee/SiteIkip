<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="telaPrincipalAdm.aspx.cs" Inherits="pikiip.telaPrincipalAdm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Tela inicial</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" />
    <link href="css/Site.css" rel="stylesheet" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.css" rel="stylesheet" />
    <link href="css/bootstrap-reboot.css" rel="stylesheet" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="ajaxGetPost.js"></script>
    <script src="https://www.google.com/jsapi"></script>
    <script>
        $(document).ready(function () {
            url = 'https://jsonplaceholder.typicode.com/posts'; // API URL
            ajax_data('GET', url, function (data) {
                console.log(data);
                charts(data, "ColumnChart"); // Coluna do grafico
                charts(data, "PieChart"); // grafico de torta
                charts(data, "BarChart"); // grafico de barras
                charts(data, "GeoChart"); // Geo Charts
            });
        });
        function charts(data, ChartType) {
            var c = ChartType;
            var jsonData = data;
            google.load("visualization", "1", { packages: ["corechart"], callback: drawVisualization });
            function drawVisualization() {
                var data = new google.visualization.DataTable();
                data.addColumn('string', 'Country');
                data.addColumn('number', 'Population Density');
                $.each(jsonData, function (i, jsonData) {
                    var value = jsonData.id; // Mudar aqui!
                    var name = jsonData.title; // Mudar aqui!
                    data.addRows([[name, value]]);
                });

                var options = {
                    title: "Densidade mundial populacional",
                    animation: {
                        duration: 3000,
                        easing: 'out',
                        startup: true
                    },
                    colorAxis: { colors: ['#54C492', '#cc0000'] },
                    datalessRegionColor: '#dedede',
                    defaultColor: '#dedede'
                };

                var chart;
                if (c == "ColumnChart") // grafico de colunas
                    chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
                else if (c == "PieChart") // grafico em torta
                    chart = new google.visualization.PieChart(document.getElementById('piechart_div'));
                else if (c == "BarChart") // grafico em barras
                    chart = new google.visualization.BarChart(document.getElementById('bar_div'));
                else if (c == "GeoChart") // Geo Charts
                    chart = new google.visualization.GeoChart(document.getElementById('regions_div'));

                chart.draw(data, options);
            }
        }
        function ajax_data(type, url, success) {
            $.ajax({
                type: type,
                url: url,
                dataType: "json",
                cache: false,
                timeout: 20000,
                beforeSend: function (data) { },
                success: function (data) {
                    success.call(this, data);
                },
                error: function (data) {
                    alert("Erro na Conexão");
                }
            });
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar fixed-top navbar-dark bg-dark" runat="server">
                <a class="navbar-brand">
                    <img src="imagens/logo_vermelho2.png" class="img-fluid" style="height: 80px; width: 150px" />
                </a>
                <ul class="nav navbar-nav navbar-right">
                    <asp:Button ID="btnRegistrar" runat="server" CssClass=" btn btn-outline-info my-2 my-sm-0" Text="Registrar" OnClick="BtnRegistrar_Click" />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-dark" Text="Logout" OnClick="Button1_Click" />
                </ul>
            </nav>
        </div>
        <div style="float:left">
            <nav>
                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                    <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Computador 1</a>
                    <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Computador 2</a>
                    <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Computador 3</a>
                     <li class="pull-right"><a href="#" class="text-muted"><i class="fa fa-gear"></i></a></li>
                </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                    <div class="container">
                        <div class="container">
                            
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">CPU</button>
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal2">Memória</button>
                            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal3">HD</button>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <div class="modal fade" id="myModal" role="dialog">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h4 class="modal-title">CPU</h4>
                                        </div>
                                        <div class="modal-body">
                                            <div id="chart_div"></div>
                                            <div id="piechart_div"></div>
                                            <div id="bar_div"></div>
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
                                            <h4 class="modal-title">Memória</h4>
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
                                            <h4 class="modal-title">HD</h4>
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
                </div>
                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">...</div>
                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>
            </div>
        </div>
    </form>


    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"> </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
</body>
</html>
