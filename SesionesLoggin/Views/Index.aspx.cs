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
    public partial class Index : System.Web.UI.Page
    {
        protected void btnAgregarProducto_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            int cantidad = int.Parse(txtCantidad.Text);
            decimal costo = decimal.Parse(txtCosto.Text);
            byte[] imagenBytes = null;

            if (fileImagen.HasFile)
            {
                using (BinaryReader br = new BinaryReader(fileImagen.PostedFile.InputStream))
                {
                    imagenBytes = br.ReadBytes(fileImagen.PostedFile.ContentLength);
                }
            }

            productosTableAdapter productosAdapter = new productosTableAdapter();
            productosAdapter.Insert(nombre, cantidad, costo, imagenBytes);

            Response.Redirect("ListaProductos.aspx");
        }
    }
}