<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Exclusao.aspx.cs" Inherits="CRUD.Exclusao" %>

<!DOCTYPE html>

<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Excluir</title>
    <link type="text/css" rel="stylesheet" href="CSS/estilo.css" />
</head>
<body>
    <form id="form1" runat="server">
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
        <div>
            <div>
                <asp:Label Text="" runat="server" ID="lblMsg" />
            </div>
            <div>
                <asp:Button Text="Sim" runat="server" ID="btnSim" OnClick="btnSim_Click" Class="btn btn-danger btn-lg" />
                <asp:Button Text="Não" runat="server" ID="btnNao" OnClick="btnNao_Click" Class="btn btn-warning btn-lg" />
            </div>
        </div>
    </form>
</body>
</html>
