<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
        <asp:Label ID="lblSaludo" runat="server" Text=""></asp:Label>

    </h1>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <div class="content">
      
      

      <div class="sliderimage">
        <div class="slihijo" style="width: 100%;color: white; height: 55vh;">
          <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="" class="d-block w-100 h-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>First slide label</h5>
                  <p>Some representative placeholder content for the first slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="..." class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Second slide label</h5>
                  <p>Some representative placeholder content for the second slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="..." class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Third slide label</h5>
                  <p>Some representative placeholder content for the third slide.</p>
                </div>
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
        </div>
      </div>
      
      <!--Grid-->
      <!--Columna1-->
      <br><br><br>
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="card" style="width: 18rem">
              <img
                src="https://picsum.photos/200"
                class="card-img-top"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title">Nombre Prod</h5>
                <p class="card-text">Breve descripción</p>
                <a href="#" class="btn btn-primary"
                  ><i class="fas fa-shopping-cart"></i> Adquirir</a
                >
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card" style="width: 18rem">
              <img
                src="https://picsum.photos/200"
                class="card-img-top"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title">Nombre Prod</h5>
                <p class="card-text">Breve descripción</p>
                <a href="#" class="btn btn-primary"
                  ><i class="fas fa-shopping-cart"></i> Adquirir</a
                >
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card" style="width: 18rem">
              <img
                src="https://picsum.photos/200"
                class="card-img-top"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title">Nombre Prod</h5>
                <p class="card-text">Breve descripción</p>
                <a href="#" class="btn btn-primary"
                  ><i class="fas fa-shopping-cart"></i> Adquirir</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
      <br />
      <!--Columna2-->
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="card" style="width: 18rem">
              <img
                src="https://picsum.photos/200"
                class="card-img-top"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title">Nombre Prod</h5>
                <p class="card-text">Breve descripción</p>
                <a href="#" class="btn btn-primary"
                  ><i class="fas fa-shopping-cart"></i> Adquirir</a
                >
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card" style="width: 18rem">
              <img
                src="https://picsum.photos/200"
                class="card-img-top"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title">Nombre Prod</h5>
                <p class="card-text">Breve descripción</p>
                <a href="#" class="btn btn-primary"
                  ><i class="fas fa-shopping-cart"></i> Adquirir</a
                >
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card" style="width: 18rem">
              <img
                src="https://picsum.photos/200"
                class="card-img-top"
                alt="..."
              />
              <div class="card-body">
                <h5 class="card-title">Nombre Prod</h5>
                <p class="card-text">Breve descripción</p>
                <a href="#" class="btn btn-primary"
                  ><i class="fas fa-shopping-cart"></i> Adquirir</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

</asp:Content>
