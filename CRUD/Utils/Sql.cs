using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Web;

namespace CRUD.Utils {
	public static class Sql {
		public static SqlConnection OpenConnection() {
            //SqlConnection conn = new SqlConnection("Server=tcp:programacaoweb.database.windows.net,1433;Database=programacaoweb;User ID=alunos@programacaoweb;Password=web1234$;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");

            //SqlConnection conn = new SqlConnection("Data Source = WEDSON; Initial Catalog = master; Integrated Security = True");
            SqlConnection conn = new SqlConnection("Server=tcp:wedson.database.windows.net,1433;Initial Catalog=projetovalemobi;Persist Security Info=False;User ID={wedson@programacaoweb};Password={web1234$};MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");


            conn.Open();

			return conn;
		}
	}
}
