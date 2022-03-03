<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="QR.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.QR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div>
    
         
    
         <table align="center" class="w-100">
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     <center>
                         <img runat="server" id="imagen2" /></td>
                 </center>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>
                     <center>
                     <asp:Button ID="btnEnviar" CssClass="btn btn-info" Width="100px" OnClick="btnEnviar_Click"  runat="server" Text="Enviar" />
                     </center>
                 </td>
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>

                 <td>
                     <center>
                     <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
                         </center>
                 </td>
                 <td>&nbsp;</td>
             </tr>
         </table>
    
        </div>
</asp:Content>
