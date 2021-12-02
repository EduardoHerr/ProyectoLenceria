<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="Infor.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.Infor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="css/infor.css">
    <div class="princi" >
        <div class="row">
            <div class="column">
                <img src="https://picsum.photos/200" alt="" style="width: 100%;height: 300px;">
            </div>
            <div class="column">
                <h1>Titulo</h1>
                <p>descripción</p>
                <br />
                <asp:Button ID="btnComprar" runat="server" Text="Comprar" CssClass="btn btn-primary" />

            </div>
          </div>
        </div>
</asp:Content>
