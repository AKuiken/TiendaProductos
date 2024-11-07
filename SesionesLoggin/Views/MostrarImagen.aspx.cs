using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SesionesLoggin.Models.DSCarritoTableAdapters;

namespace SesionesLoggin.Views
{
    public partial class MostrarImagen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                int id = Convert.ToInt32(Request.QueryString["id"]);
                productosTableAdapter productosAdapter = new productosTableAdapter();
                var producto = productosAdapter.GetData().FirstOrDefault(p => p.ID == id);

                if (producto != null && producto.IsImagenNull() == false) 
                {
                    byte[] imagenBytes = producto.Imagen;  
                    Response.ContentType = "image/png"; 
                    Response.BinaryWrite(imagenBytes);
                }
                else
                {
                    Response.Write("Imagen no disponible.");
                }
            }
        }
    }
}