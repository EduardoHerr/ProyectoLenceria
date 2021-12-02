<%@ Page Title="" Language="C#" MasterPageFile="~/Mantenimientos/MainPage.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="ProyectoLenceria.Mantenimientos.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
      
         <div class="sliderimage">
        <div class="slihijo" style="width: 100%; height: 55vh;">
          <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="images/img_lights_wide.jpg" class="d-block w-100 h-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>First slide label</h5>
                  <p>Some representative placeholder content for the first slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/img_mountains_wide.jpg" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                  <h5>Second slide label</h5>
                  <p>Some representative placeholder content for the second slide.</p>
                </div>
              </div>
              <div class="carousel-item">
                <img src="images/img_nature_wide.jpg" class="d-block w-100" alt="...">
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
                <a href="Infor.aspx" class="btn btn-primary"
                  ><i class="fas fa-plus"></i> Adquirir</a
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
                <a href="Infor.aspx" class="btn btn-primary"
                  ><i class="fas fa-plus"></i> Adquirir</a
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
                <a href="Infor.aspx" class="btn btn-primary"
                  ><i class="fas fa-plus"></i> Adquirir</a
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
                <a href="Infor.aspx" class="btn btn-primary"
                  ><i class="fas fa-plus"></i> Adquirir</a
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
                <a href="Infor.aspx" class="btn btn-primary"
                  ><i class="fas fa-plus"></i> Adquirir</a
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
                <a href="Infor.aspx" class="btn btn-primary"
                  ><i class="fas fa-plus"></i> Adquirir</a
                >
              </div>
            </div>
          </div>
        </div>
      </div>

    <script>    
        var slideIndex = 1;
        showSlides(slideIndex);

        // Next/previous controls
        function plusSlides(n) {
            showSlides(slideIndex += n);
        }

        // Thumbnail image controls
        function currentSlide(n) {
            showSlides(slideIndex = n);
        }

        function showSlides(n) {
            var i;
            var slides = document.getElementsByClassName("mySlides");
            var dots = document.getElementsByClassName("dot");
            if (n > slides.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = slides.length }
            for (i = 0; i < slides.length; i++) {
                slides[i].style.display = "none";
            }
            for (i = 0; i < dots.length; i++) {
                dots[i].className = dots[i].className.replace(" active", "");
            }
            slides[slideIndex - 1].style.display = "block";
            dots[slideIndex - 1].className += " active";
        }
    </script>

</asp:Content>
