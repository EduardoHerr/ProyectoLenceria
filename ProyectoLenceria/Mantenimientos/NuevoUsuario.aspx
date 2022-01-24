<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="NuevoUsuario.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.NuevoUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="css/nuevoUsuario.css" />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <h4>
        <asp:Label ID="lblMensaje" runat="server" Text="Registro de Usuarios"></asp:Label>
    </h4>
    <br />

    <div class="centrar"> 
    <div class="form-group">
        <asp:Label ID="lblNombre" runat="server" Text="Nombre" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label1" runat="server" Text="Apellido" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label2" runat="server" Text="Correo" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label3" runat="server" Text="User" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtUser" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label4" runat="server" Text="Clave" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtClave" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label5" runat="server" Text="Cedula" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label6" runat="server" Text="Dirección" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtDirección" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label7" runat="server" Text="Telefono" CssClass="form-control"></asp:Label>
        <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
    </div>
        <div class="form-group">
        <asp:Label ID="Label8" runat="server" Text="Rol" CssClass="form-control"></asp:Label>
            <asp:DropDownList ID="ddlRol" runat="server" CssClass="form-control"></asp:DropDownList>
    </div>
        <br />
        <center>
            <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-outline-success" />
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-outline-success" OnClick="btnGuardar_Click" />
            <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar"  CssClass="btn btn-outline-secondary"/>
            <asp:Button ID="btnRegresar" runat="server" Text="Regresar" CssClass="btn btn-outline-dark" OnClick="btnRegresar_Click"/>
        </center>

        </div>
    <br />
</asp:Content>
