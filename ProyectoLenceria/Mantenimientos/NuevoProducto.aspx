<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="NuevoProducto.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.NuevoProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="css/nuevoUsuario.css" />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <center>
    <h4>
        <asp:Label ID="lblMensaje" runat="server" Text="Registro de Productos"></asp:Label>
    </h4>
        </center>
    <br />

    <div class="centrar"> 
    <div class="form-group">
        <asp:Label ID="lblNombre" runat="server" Text="Nombre" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Marca" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtMarca" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Talla" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtTalla" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="Color" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtColor" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Precio" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtPrecio" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Cantidad" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtCantidad" runat="server" min="1" TextMode="Number" CssClass="form-control">1</asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Categoria" CssClass="form-control"></asp:Label>
        <asp:DropDownList ID="ddlCategoria" CssClass="form-select" runat="server"></asp:DropDownList>
    </div>
        <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Imagen" CssClass="form-control"></asp:Label>
        <div>
            <asp:Image ID="Image1" runat="server" Width="200px" Height="200px"/>
            <asp:FileUpload ID="flu1"  runat="server" />
            <asp:TextBox ID="txtNombreArchivo" runat="server"></asp:TextBox>
        </div>
    </div>
        
        <br />
        <center>
            <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-outline-success"  OnClick="btnEditar_Click"/>
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-outline-success"  OnClick="btnGuardar_Click" />
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"  CssClass="btn btn-outline-secondary"/>
            <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="btn btn-outline-dark" OnClick="btnRegresar_Click" />
        </center>

        </div>
    <br />
</asp:Content>
