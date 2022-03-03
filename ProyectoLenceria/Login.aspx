<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoLenceria.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="css/login.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="containeer">
      <div class="center">
        <div class="log">
          <h1>Inicio de Sesión</h1>
          <div class="container">
            <div class="row">
              <div class="col">Usuario:</div>
              <div class="col">
                
                  <asp:TextBox ID="txtlog" runat="server" placeholder="Ingrese su User" CssClass="inp" ></asp:TextBox>
              </div>
            </div>
          </div>
          <br/>
          <div class="container">
            <div class="row">
              <div class="col">Clave:</div>
              <div class="col">
                  <asp:TextBox ID="txtPassword" TextMode="Password" placeholder="Ingrese su Contraseña" cssClass="inp" runat="server"></asp:TextBox>
                
              </div>
            </div>
          </div>
          <br/>
          <center>
              
              <asp:Button ID="btnIngreso" runat="server" Text="Ingresar" OnClick="btnIngreso_Click" CssClass="sub" />
          </center>
          <hr/>
          <center>
              
             <asp:Button ID="btnColaborador" runat="server" CssClass="sub" OnClick="btnColaborador_Click" Text=" Ingresar como Colaborador" />
          </center>
            <asp:LinkButton ID="linkRecuperar" CssClass="lnk" runat="server">Recuperar Contraseña...</asp:LinkButton>
        </div>
      </div >
                
                <asp:Label ID="lblMensaje"  runat="server" Text=""></asp:Label>
                    
            </div>
                    </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
