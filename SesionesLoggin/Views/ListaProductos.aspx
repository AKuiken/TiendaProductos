<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaProductos.aspx.cs" Inherits="SesionesLoggin.Views.ListaProductos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lista de Productos</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .container {
            width: 80%;
            margin: auto;
            margin-top: 30px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        .gridview {
            width: 100%;
            margin-top: 20px;
        }

            .gridview th {
                background-color: #4CAF50;
                color: white;
                padding: 8px;
            }

            .gridview td {
                padding: 8px;
                text-align: center;
            }

            .gridview img {
                width: 100px;
                height: 100px;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Lista de Productos</h2>
            <asp:GridView ID="gvProductos" runat="server" AutoGenerateColumns="False" CssClass="gridview" DataKeyNames="ID">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" Visible="false" />
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" />
                    <asp:BoundField DataField="Costo" HeaderText="Costo" DataFormatString="{0:C}" />
                    <asp:TemplateField HeaderText="Imagen">
                        <ItemTemplate>
                            <img src='<%# "MostrarImagen.aspx?id=" + Eval("ID") %>' width="100" height="100" />
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
