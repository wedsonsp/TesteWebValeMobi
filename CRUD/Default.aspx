<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CRUD.Default" %>

<!DOCTYPE html>

<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Sistema para Cadastro de Mercadorias</title>
    <link type="text/css" rel="stylesheet" href="Content/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="CSS/estilo.css" />
</head>
<script src="Scripts/jquery-1.9.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" />
<body>
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
            <div class="span10 offset1">
                <div class="row">
                    <div>
                        <h3 class="well">Faça o seu login no Sistema</h3>
                        <br />
                        <label for="txtUser">Usuário</label>
                        <asp:TextBox runat="server" ID="txtUser" />
                    </div>
                    <div>
                        <label for="txtPass">Senha</label>
                        <asp:TextBox runat="server" ID="txtPass" TextMode="Password" />
                    </div>
                    <div>
                        <asp:Label Text="" runat="server" ID="lblMsg" />
                    </div>
                    <div>
                        <asp:Button Text="Login" runat="server" ID="btnLogin" OnClick="btnLogin_Click" Class="btn btn-success btn btn-lg" />
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
