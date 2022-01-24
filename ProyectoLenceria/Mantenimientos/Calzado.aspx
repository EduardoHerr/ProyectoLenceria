<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="Calzado.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.Calzado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <br>
      <div class="row">
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <div class="col-md-4">

                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="card" style="width: 18rem">
                                    <img
                                        src="data:image/jpg;base64,<%#Convert.ToBase64String((byte[])DataBinder.Eval(Container.DataItem,"proArte")) %>"
                                        class="card-img-top"
                                        alt="..." style="height: 200px" />
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <asp:Label ID="Label1" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"proTituloArte") %>'></asp:Label>
                                        </h5>
                                        <br />
                                        Precio: $<asp:Label ID="Label3" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"proPrecio") %>'></asp:Label>
                                        <p class="card-text">Cantidad disponible: <asp:Label ID="Label2" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"proCantidad") %>'></asp:Label></p>
                                        <asp:LinkButton ID="lnkComprar" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"proId") %>' runat="server" CssClass="btn btn-primary" OnCommand="lnkComprar_Command">Comprar</asp:LinkButton>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
