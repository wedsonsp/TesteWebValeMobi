using System;
using System.Collections.Generic;
using System.Web;

namespace CRUD.Models {
	public class Produto {
		public int Id { get; set; }
		public string TipoMercadoria { get; set; }
		public string Nome { get; set; }
		public int Quantidade { get; set; }
		public double Preco { get; set; }
		public string TipoNegocio { get; set; }
	}
}
