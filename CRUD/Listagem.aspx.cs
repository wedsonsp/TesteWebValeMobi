using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CRUD.Models;
using CRUD.Utils;

namespace CRUD
{
    public partial class Listagem : System.Web.UI.Page
    {
        //Variável global para fazer o Calculo da quantidade total de Produtos a serem mostrados na Listagem.
        public double somaQuantidade;
        public double somaValorproduto;
        public List<Produto> produtos = new List<Produto>();

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["login"];
            if (cookie == null || cookie.Value != "ok")
            {
                Response.Redirect("Default.aspx");
                return;
            }

            // Cria e abre a conexão com o banco de dados
            using (SqlConnection conn = Sql.OpenConnection())
            {

                // Cria um comando para selecionar registros da tabela
                using (SqlCommand cmd = new SqlCommand("SELECT Id, TipoMercadoria  , Nome, Quantidade, Preco, TipoNegocio FROM tbProduto ORDER BY nome ASC", conn))
                {

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {

                        // Obtém os registros, um por vez
                        while (reader.Read() == true)
                        {
                            Produto p = new Produto();
                            p.Id = reader.GetInt32(0);
                            p.TipoMercadoria = reader.GetString(1);
                            p.Nome = reader.GetString(2);
                            p.Quantidade = reader.GetInt32(3);
                            p.Preco = reader.GetDouble(4);
                            p.TipoNegocio = reader.GetString(5);

                            somaQuantidade += p.Quantidade;
                            somaValorproduto += p.Preco;

                            produtos.Add(p);


                        }
                    }
                }
            }
        }
    }
}
