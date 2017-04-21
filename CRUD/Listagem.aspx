<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listagem.aspx.cs" Inherits="CRUD.Listagem" %>

<!DOCTYPE html>

<html lang="pt-br" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Listagem de Produtos</title>
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

                    <h3 class="well">Listagem de Produtos</h3>
                    <br />
                    <div>
                        <a href="Logout.aspx">
                            <div class="btn btn-danger btn-lg">Logout</div>
                        </a>
                    </div>
                    <div>
                        <a href="Cadastro.aspx">
                            <div class="btn btn-success btn btn-lg">Criar novo...</div>
                        </a>
                    </div>
                    <table>
                        <div>
                            <tr>
                                <th class="well">Tipo de Mercadoria</th>
                                <th class="well">Nome</th>
                                <th class="well">Quantidade</th>
                                <th class="well">Preço</th>
                                <th class="well">Tipo de Negócio</th>
                                <th></th>
                                <th></th>
                            </tr>
                        </div>
                        <tbody>
                            <%  int cont = 0;
                                int soma = 0;
                                //double somaValorTotal = 0;
                                // double somaQuantidade = 0;

                                while (cont < produtos.Count)
                                {
                            %>
                            <tr>
                                <div class="listagem">
                                    <td class="listagem"><%=produtos[cont].TipoMercadoria %></td>
                                    <td class="listagem"><%=produtos[cont].Nome %></td>
                                    <td class="listagem"><%=produtos[cont].Quantidade %></td>
                                    <td class="listagem"><%=produtos[cont].Preco.ToString("R$ 0.00") %></td>
                                    <td class="listagem"><%=produtos[cont].TipoNegocio %></td>

                                </div>
                                <td><a href="Edicao.aspx?id=<%=produtos[cont].Id %>">
                                    <div class="btn btn-default btn-lg">Editar</div>
                                </a></td>
                                <td><a href="Exclusao.aspx?id=<%=produtos[cont].Id %>">
                                    <div class="btn btn-danger btn-lg">Excluir</div>
                                </a></td>
                            </tr>
                            <%      cont = cont + 1;
                                }
                            %>
                        </tbody>
                        <thead>
                            <tr>
                                <th class="well">Quantidade de Produtos</th>
                                <th class="well">Quantidade Total de Produtos</th>
                                <th class="well">Valor Total de Produtos</th>
                            </tr>
                            <tr>
                                <div class="listagem">
                                    <td class="listagem"><%=cont %></td>
                                    <td class="listagem"><%=somaQuantidade %></td>
                                    <td class="listagem"><%=somaValorproduto.ToString("R$ 0.00") %></td>
                                </div>
                            </tr>
                        </thead>


                    </table>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
