<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="MatenimientoUsuarios.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.MatenimientoUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <h4>
                <asp:Label ID="lbl1" runat="server" Text="Pagina Usuarios"></asp:Label>
            </h4>
            <br />
            <div>
                <div style="background-color:black;padding:5px;margin-right:1255px;border-radius:5px">
            <asp:Button ID="btnCrear" runat="server" Text="Crear Usuario" CssClass="btn btn-light" OnClick="btnCrear_Click" />
                    </div>
            <br />
                </div>
            <asp:GridView ID="gvrUsuarios" runat="server" AutoGenerateColumns="false" CssClass="table table-dark table-hover">
                <Columns>
                    <asp:TemplateField HeaderText="ID">
                        <ItemTemplate>
                            <asp:Label ID="lblID" runat="server" Text='<%#Eval("usId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Nombre">
                        <ItemTemplate>
                            <asp:Label ID="lblNombre" runat="server" Text='<%#Eval("usNombre") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Apellido">
                        <ItemTemplate>
                            <asp:Label ID="lblApellido" runat="server" Text='<%#Eval("usApellido") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Correo">
                        <ItemTemplate>
                            <asp:Label ID="lblCorreo" runat="server" Text='<%#Eval("usCorreo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="User">
                        <ItemTemplate>
                            <asp:Label ID="lblUser" runat="server" Text='<%#Eval("usLog") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Clave">
                        <ItemTemplate>
                            <asp:Label ID="lblClave" runat="server" Text='<%#Eval("usClave") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Cedula">
                        <ItemTemplate>
                            <asp:Label ID="lblCedula" runat="server" Text='<%#Eval("usCedula") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Dirección">
                        <ItemTemplate>
                            <asp:Label ID="lblDireccion" runat="server" Text='<%#Eval("usDireccion") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Telefono">
                        <ItemTemplate>
                            <asp:Label ID="lblTelefono" runat="server" Text='<%#Eval("usTelefono") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Acciones">
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkEditar" CommandArgument='<%#Eval("usId")%>' CommandName="Editar" CssClass="btn btn-outline-warning" runat="server">Editar</asp:LinkButton>
                            <asp:LinkButton ID="lnkEliminar" CommandArgument='<%#Eval("usId")%>' CommandName="Eliminar" CssClass="btn btn-outline-danger" runat="server">Eliminar</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
