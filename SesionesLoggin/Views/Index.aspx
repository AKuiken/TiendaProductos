<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SesionesLoggin.Views.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Agregar Producto</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }

        .container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        label {
            font-weight: bold;
            color: #555;
        }

        .form-group {
            margin-bottom: 15px;
        }

            .form-group input[type="text"],
            .form-group input[type="number"],
            .form-group input[type="file"],
            .form-group button {
                width: 100%;
                padding: 10px;
                margin-top: 5px;
                border-radius: 4px;
                border: 1px solid #ccc;
            }

            .form-group button {
                background-color: #007bff;
                color: white;
                border: none;
                cursor: pointer;
                font-weight: bold;
            }

                .form-group button:hover {
                    background-color: #0056b3;
                }

        .grid-container {
            margin-top: 20px;
        }

            .grid-container table {
                width: 100%;
                border-collapse: collapse;
            }

            .grid-container th, .grid-container td {
                padding: 12px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            .grid-container th {
                background-color: #007bff;
                color: white;
            }

            .grid-container td img {
                max-width: 100px;
                height: auto;
            }
    </style>

</head>
<body>
    <form id="formAgregarProducto" runat="server" enctype="multipart/form-data">
        <div>
            <label for="txtNombre">Nombre:</label>
            <asp:TextBox ID="txtNombre" runat="server" Required="true"></asp:TextBox>
            <br />

            <label for="txtCantidad">Cantidad:</label>
            <asp:TextBox ID="txtCantidad" runat="server" TextMode="Number" Required="true"></asp:TextBox>
            <br />

            <label for="txtCosto">Costo:</label>
            <asp:TextBox ID="txtCosto" runat="server" TextMode="Number" Required="true"></asp:TextBox>
            <br />

            <label for="fileImagen">Imagen:</label>
            <asp:FileUpload ID="fileImagen" runat="server" />
            <br />

            <asp:Button ID="btnAgregarProducto" runat="server" Text="Agregar Producto" OnClick="btnAgregarProducto_Click" />
        </div>
    </form>
</body>
</html>
