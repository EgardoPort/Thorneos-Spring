<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio</title>
        <link rel="stylesheet" href='<c:url value="https://fonts.googleapis.com/css?family=Mukta:300,400,700"/>'/> 
       
        <link rel="stylesheet" href='<c:url value="resources/css1/bootstrap.min.css"/>'/>
        <link rel="stylesheet" href='<c:url value="resources/css1/magnific-popup.css"/>'/>
        <link rel="stylesheet" href='<c:url value="resources/css1/jquery-ui.css"/>'/>
        <link rel="stylesheet" href='<c:url value="resources/css1/owl.carousel.min.css"/>'/>
        <link rel="stylesheet" href='<c:url value="resources/css1/owl.theme.default.min.css"/>'/>
        <link rel="stylesheet" href='<c:url value="resources/css1/aos.css"/>'/>
        <link rel="stylesheet" href='<c:url value="resources/css1/style.css"/>'/>
</head>
<body>
 <div class="site-wrap">

    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-logo">
          <a href="index.xhtml"><img src="resources/images/ll.jpg" alt="Image"/></a>
        </div>
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>

    <header class="site-navbar absolute transparent" role="banner">
      <div class="py-3">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-6 col-md-3">
              <a href="#" class="text-secondary px-2 pl-0"><span class="icon-facebook"></span></a>
              <a href="#" class="text-secondary px-2"><span class="icon-instagram"></span></a>
              <a href="#" class="text-secondary px-2"><span class="icon-twitter"></span></a>
              <a href="#" class="text-secondary px-2"><span class="icon-linkedin"></span></a>
            </div>
            
          </div>
        </div>
      </div>
      <nav class="site-navigation position-relative text-right bg-black text-md-right" role="navigation">
        <div class="container position-relative">
          <div class="site-logo">
            <a href="index.jsp"><img src="resources/images/ll.jpg" alt=""/></a>
          </div>

          <div class="d-inline-block d-md-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-white"><span class="icon-menu h3"></span></a></div>

          <ul class="site-menu js-clone-nav d-none d-md-block">
            <li class="has-children active">
              <a href="index.jsp">Inicio</a>
              
              <li><a href="persona/list">Personas</a></li>
              <li><a href="encargado/list">Encargado</a></li>
              
              <li class="has-children">
              <a href="">Torneos</a>
              <ul class="dropdown arrow-top">
                <li><a href="torneo/list">Torneos</a></li>
                <li><a href="escenario/list">Escenario</a></li>
                <li><a href="deportista/list">Deportista</a></li>
                <li><a href="equipo/list">Equipos</a></li>
              </ul>
            </li>
            </li>
              
             <li class="has-children">
              <a href="">Partidos</a>
              <ul class="dropdown arrow-top">
                <li><a href="partido/list">Partidos</a></li>
                <li><a href="puntaje/list">Puntaje</a></li>
              
              </ul>
            </li>
              
            <li><a href="disciplina/list">Disciplinas</a></li>
            <li class="btn-m"><a href="login.jsp"><i class="ti-lock"></i>  Iniciar sesión</a></li> 
          </ul>
        </div>
      </nav>
    </header>
    


    
    
    
    <footer class="site-footer border-top">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="mb-5">
              <h3 class="footer-heading mb-4">Sobre Thor-neos</h3>
              <p>Cada Fin de Semana tenemos fechas asignada para cada torneo. Thor-neos es una nueva expriencia para todas los deportista que participa</p>
            </div>

            <div class="mb-5">
              <h3 class="footer-heading mb-4">Noticia reciente</h3>
              <div class="block-25">
                <ul class="list-unstyled">
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="resources/images/img_1.jpg" alt="" class="img-fluid"/>
                      </figure>
                      <div class="text">
                        <h3 class="heading font-weight-light">La final de eChampions League se jugará en España un día antes de la final de la UEFA Champions League</h3>
                      </div>
                    </a>
                  </li>
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="resources/images/img_1.jpg" alt="" class="img-fluid"/>
                      </figure>
                      <div class="text">
                        <h3 class="heading font-weight-light">El Real Madrid sigue haciendo historia</h3>
                      </div>
                    </a>
                  </li>
                  <li class="mb-3">
                    <a href="#" class="d-flex">
                      <figure class="image mr-4">
                        <img src="resources/images/img_1.jpg" alt="" class="img-fluid"/>
                      </figure>
                      <div class="text">
                        <h3 class="heading font-weight-light">A diez días del Major, Team Liquid hace cambios en su alineación</h3>
                      </div>
                    </a>
                  </li>
                </ul>
              </div>
            </div>
            
          </div>
          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="row mb-5">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Menu</h3>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                <li><a href="torneo/list">Torneos</a></li>
                <li><a href="escenario/list">Escenario</a></li>
                <li><a href="deportista/list">Deportista</a></li>
                <li><a href="equipo/list">Equipos</a></li>
                </ul>
              </div>
              <div class="col-md-6 col-lg-6">
                <ul class="list-unstyled">
                  <li><a href="partido/list">Partidos</a></li>
                  <li><a href="puntaje/list">Puntaje</a></li>
                  <li><a href="disciplina/list">Disciplinas</a></li>
                </ul>
              </div>
            </div>
            
            <div class="row">
              <div class="col-md-12">
                <h3 class="footer-heading mb-4">Nos puedes Contactar</h3>

                <div>
                  <a href="#" class="pl-0 pr-3"><span class="icon-facebook"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-twitter"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-instagram"></span></a>
                  <a href="#" class="pl-3 pr-3"><span class="icon-linkedin"></span></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 mb-5 mb-lg-0">
            <div class="mb-5">
              <h3 class="footer-heading mb-4">Video</h3>

              <div class="block-16">
                <figure>
                  <img src="resourse/images/img_1.jpg" alt="Image placeholder" class="img-fluid rounded"/>
                  <a href="https://www.youtube.com/watch?v=Pq-C2vBH4Bc" class="play-button popup-vimeo"><span class="icon-play"></span></a>
                </figure>
              </div>

            </div>

            <div class="mb-5">
              <h3 class="footer-heading mb-2">Suscribirse</h3>
              <p>Te mandamos un correo semanal con la noticias de tus equipos</p>

              <form action="#" method="post">
                <div class="input-group mb-3">
                  <input type="text" class="form-control border-secondary text-white bg-transparent" placeholder="Enter Email" aria-label="Enter Email" aria-describedby="button-addon2"/>
                  <div class="input-group-append">
                    <button class="btn btn-primary" type="button" id="button-addon2">Send</button>
                  </div>
                </div>
              </form>

            </div>

          </div>
          
        </div>
        <div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            Thor-neos &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> Todos los derechos reservados. | Torneos <i class="icon-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >  La información contenida en Thors, no puede ser publicada, difundida, reescrita o redistribuída sin autorización previa y por escrito de Thors.com</a>
            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
          
        </div>
      </div>
    </footer>
  </div>

</body>
</html>