<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="Mantenimientos.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.Mantenimientos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h4>
                <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
            </h4>

            <br />
            <div style="background-color:black;padding:5px;margin-right:1263px;border-radius:5px"> 
            <asp:Button ID="btnNuevo" runat="server" Text="Crear Nuevo" OnClick="btnNuevo_Click"  CssClass="btn btn-light"/>
            </div>
            <div style="margin-top:10px">
            <asp:GridView ID="gvrDatos" runat="server" OnRowCommand="gvrDatos_RowCommand" AutoGenerateColumns="false" CssClass="table table-dark table-hover">
                <Columns>
                    <asp:TemplateField HeaderText="Nombre">
                        <ItemTemplate>
                            <asp:Label ID="lblNombre" runat="server" Text='<%#Eval("proNombre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Marca">
                        <ItemTemplate>
                            <asp:Label ID="lblMarca" runat="server" Text='<%#Eval("proMarca") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Talla">
                        <ItemTemplate>
                            <asp:Label ID="lblTalla" runat="server" Text='<%#Eval("proTalla") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Color">
                        <ItemTemplate>
                            <asp:Label ID="lblColor" runat="server" Text='<%#Eval("proColor") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Precio">
                        <ItemTemplate>
                            <asp:Label ID="lblPrecio" runat="server" Text='<%#Eval("proPrecio") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Cantidad">
                        <ItemTemplate>
                            <asp:Label ID="lblCantidad" runat="server" Text='<%#Eval("proCantidad") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Anexos">
                        <ItemTemplate>
                            <asp:Label ID="lblAnexos" runat="server" Text='<%#Eval("proTituloArte") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Categoria">
                        <ItemTemplate>
                            <asp:Label ID="lblCategoria" runat="server" Text='<%#Eval("catId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Categoria">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkEditar" CommandArgument='<%#Eval("proId") %>' CommandName="Editar" runat="server" CssClass="btn btn-outline-warning">Editar</asp:LinkButton>
                            <asp:LinkButton ID="lnkEliminar" CommandArgument='<%#Eval("proId") %>' CommandName="Eliminar" runat="server" CssClass="btn btn-outline-danger" onClientClick="return confirm('Seguro de Eliminar el registro?')">Eliminar</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
                </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
