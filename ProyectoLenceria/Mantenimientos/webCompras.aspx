<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="webCompras.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.webCompras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="css/compras.css" type="text/css" rel="stylesheet" />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="centrar">
                <div class="form-group">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <asp:Image ID="img1" runat="server" />
                            </div>
                            <div class="col">
                                <h1><asp:Label ID="lblNombre" runat="server" Text=""></asp:Label></h1>
                                <br />
                                
                                <h3>Cantidad: <asp:Label ID="lblCantidad" runat="server" Text=""></asp:Label></h3>
                                <asp:Label ID="lblPrecio" runat="server" Text=""></asp:Label>
                                <br />
                                
                                <asp:TextBox ID="txtCantidad"  runat="server" TextMode="Number" CssClass="form-control">0</asp:TextBox>
                                <br />
                                <asp:Button ID="btnCalcula" runat="server" Text="Calcular" CssClass="btn btn-success"  OnClick="btnCalcula_Click"/>
                                <asp:LinkButton ID="lnkComprar" runat="server"  CssClass="btn btn-outline-success" OnClick="lnkComprar_Click">Comprar</asp:LinkButton>
                                <br />
                                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
