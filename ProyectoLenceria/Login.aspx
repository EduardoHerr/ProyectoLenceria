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
          <h1>Inicio de Sesion</h1>
          <div class="container">
            <div class="row">
              <div class="col">Usuario:</div>
              <div class="col">
                
                  <asp:TextBox ID="txtCi" runat="server" placeholder="Ingrese su Cedula" CssClass="inp" ></asp:TextBox>
              </div>
            </div>
          </div>
          <br>
          <div class="container">
            <div class="row">
              <div class="col">Clave:</div>
              <div class="col">
                <input type="password" placeholder="Ingrese su Contraseña" class="inp" />
              </div>
            </div>
          </div>
          <br>
          <center>
              <input type="submit" value="Ingresar" class="sub">
          </center>
          <hr>
          <center>
              
              <a><i class="fas fa-user-shield"></i><asp:Button ID="Button1" runat="server" CssClass="sub" Text=" Ingresar como Colaborador" /></a>
          </center>
        </div>
      </div>
    </div>
    
    
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
