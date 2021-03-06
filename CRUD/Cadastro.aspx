﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="CRUD.Criacao" %>

<!DOCTYPE html>

<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Cadastro de Produtos</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="CSS/estilo.css" />
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />

    <script language="javascript" type="text/javascript" src="Scripts/javascript.js">
    </script>


    <script src="Scripts/javascript.js"></script>

</head>

<body onload="validacao();" onclick="validacao();" onblur="validacao();" onchange="validacao();">
    <form id="form1" runat="server">
        <div class="container">
            <table>
                <tr class="logo">
                    <div class="data">
                        <p>
                            Data e Hora: <%=DateTime.Now.ToString() %>
                        </p>
                    </div>
                </tr>
                <tr class="logo2">
                    
                </tr>
            </table>
            <!--
            <div>
                <label for="txtCodigo">Código Mercadoria</label>
                <asp:TextBox runat="server" ID="txtCodigo" />
            </div>
            -->
            <div class="row">
                <h3 class="well">Cadastro de Produtos</h3>
                <br />
                <div>
                    <label for="txtMercadoria">Tipo Mercadoria</label>
                    <asp:TextBox runat="server" ID="txtMercadoria" />
                </div>
                <div>
                    <label for="txtNome">Nome</label>
                    <asp:TextBox runat="server" ID="txtNome" />
                </div>
                <div>
                    <label for="txtQuantidade">Quantidade</label>
                    <asp:TextBox runat="server" ID="txtQuantidade" />
                </div>
                <div>
                    <label for="txtPreco">Preço</label>
                    <asp:TextBox runat="server" ID="txtPreco" />
                </div>
                <div>
                    <label for="drop">Tipo de negócio</label>
                    <asp:DropDownList ID="drop" runat="server">
                        <asp:ListItem Text="Compra" Value="Compra" />
                        <asp:ListItem Text="Venda" Value="Venda" />
                    </asp:DropDownList>
                </div>
                <div>
                    <asp:Label Text="" runat="server" ID="lblMsg" />
                </div>
                <div>
                    <asp:Button Text="Cadastrar" runat="server" ID="btnCriar" OnClick="btnCriar_Click" Class="btn btn-success btn btn-lg" />
                    <asp:Button Text="Voltar" runat="server" ID="btnVoltar" OnClick="btnVoltar_Click" class="btn btn-default btn btn-lg" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
