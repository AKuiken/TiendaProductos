using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SesionesLoggin.Models.DSCarritoTableAdapters;

namespace SesionesLoggin.Views
{
    public partial class ListaProductos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarProductos();
            }
        }

        private void CargarProductos()
        {
            productosTableAdapter productosAdapter = new productosTableAdapter();

            var productos = productosAdapter.GetData();
            gvProductos.DataSource = productos;
            gvProductos.DataBind();
        }
    }
}