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
    


    <div class="slide-one-item home-slider owl-carousel">
      <div class="site-blocks-cover overlay" style="background-image: url(resources/images/bes.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-start">
            <div class="col-md-6 text-center text-md-left" data-aos="fade-up" data-aos-delay="400">
              <h1 class="bg-text-line">Charlie Morton, la carta de Tampa para sobrevivir ante Astros</h1>
              <p><a href="#" class="btn btn-primary btn-sm rounded-0 py-3 px-5">Leer más</a></p>
            </div>
          </div>
        </div>
      </div>  

      <div class="site-blocks-cover overlay" style="background-image: url(resources/images/ppp.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-start">
            <div class="col-md-6 text-center text-md-left" data-aos="fade-up" data-aos-delay="400">
              <h1 class="bg-text-line">Bojan, tras su paso por la MLS: "Una experiencia muy positiva"</h1>
              <p><a href="#" class="btn btn-primary btn-sm rounded-0 py-3 px-5">Leer más</a></p>
            </div>
          </div>
        </div>
      </div>  

      <div class="site-blocks-cover overlay" style="background-image: url(resources/images/carr.jpg);" data-aos="fade" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center justify-content-start">
            <div class="col-md-6 text-center text-md-left" data-aos="fade-up" data-aos-delay="400">
              <h1 class="bg-text-line">Apuesta femenina en Juegos Olímpicos.</h1>
              <p><a href="#" class="btn btn-primary btn-sm rounded-0 py-3 px-5">Leer más</a></p>
            </div>
          </div>
        </div>
      </div>  
    </div>
    

    <div class="site-section pt-0 feature-blocks-1" data-aos="fade" data-aos-delay="100">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-4" >
            <div class="p-3 p-md-5 feature-block-1 mb-5 mb-lg-0 bg" style="background-image: url('resources/images/hxhx.jpg');">
              <div class="text">
                <h2 class="h5 text-white">Italia se prepara para albergar el Clasificatorio de Béisbol Europa-África WBSC - WBSC</h2>
                <p>El Clasificatorio de Béisbol Europa África WBSC involucrará a seis Equipos Nacionales y ofrecerá a los aficionados en Parma y Bolonia, Italia, un total de 15 juegos de alto perfil!</p>
                <p class="mb-0"><a href="#" class="btn btn-primary btn-sm px-4 py-2 rounded-0">Leer más</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="p-3 p-md-5 feature-block-1 mb-5 mb-lg-0 bg" style="background-image: url('resources/images/basggg.jpg');">
              <div class="text">
                <h2 class="h5 text-white">Argentina se enfretará a España en la final del Mundial de Basquetbol 2019</h2>
                <p>Ya tenemos a los finalistas del Mundial de Basquetbol 2019; Argentina se enfrentará contra España el próximo 15 de septiembre.!</p>
                <p class="mb-0"><a href="#" class="btn btn-primary btn-sm px-4 py-2 rounded-0">Leer más</a></p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="p-3 p-md-5 feature-block-1 mb-5 mb-lg-0 bg" style="background-image: url('resources/images/rrrr.jpg');">
              <div class="text">
                <h2 class="h5 text-white">El golpe seco de Irlanda o el resultado que pone colorada a Escocia</h2>
                <p>Irlanda ha ganado contundementemente a Escocia por 27-3, sin dejar que sus rivales en el Seis Naciones realizara ni tan siquiera un ensayo. !</p>
                <p class="mb-0"><a href="#" class="btn btn-primary btn-sm px-4 py-2 rounded-0">Leer más</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="site-blocks-vs site-section bg-light">
      <div class="container">

        <div class="border mb-3 rounded d-block d-lg-flex align-items-center p-3 next-match">
          
          <div class="mr-auto order-md-1 w-60 text-center text-lg-left mb-3 mb-lg-0">
            Proximo Juego 
            <div id="date-countdown"></div>
          </div>

          <div class="ml-auto pr-4 order-md-2">
            <div class="h5 text-black text-uppercase text-center text-lg-left">
              <div class="d-block d-md-inline-block mb-3 mb-lg-0">
                <img src="resources/images/img_1_sq.jpg" alt="Image" class="mr-3 image"/>
                <span class="d-block d-md-inline-block ml-0 ml-md-3 ml-lg-0">Sea Hawlks </span>
              </div>
              <span class="text-muted mx-3 text-normal mb-3 mb-lg-0 d-block d-md-inline ">vs</span> 
              <div class="d-block d-md-inline-block">
                <img src="resources/images/img_3_sq.jpg" alt="Image" class="mr-3 image"/>
                <span class="d-block d-md-inline-block ml-0 ml-md-3 ml-lg-0">Patriots</span>
              </div>
            </div>
          </div>
          
          
        </div>

        <div class="bg-image overlay-success rounded mb-5" style="background-image: url('resources/images/hero_bg_1.jpg');" data-stellar-background-ratio="0.5">
          
          <div class="row align-items-center">
            <div class="col-md-12 col-lg-4 mb-4 mb-lg-0">

              <div class="text-center text-lg-left">
                <div class="d-block d-lg-flex align-items-center">
                  <div class="image mx-auto mb-3 mb-lg-0 mr-lg-3">
                    <img src="resources/images/img_1_sq.jpg" alt="Image" class="img-fluid"/>
                  </div>
                  <div class="text">
                    <h3 class="h5 mb-0 text-black">Sea Hawks</h3>
                    <span class="text-uppercase small country text-black">Brazil</span>
                  </div>
                </div>
              </div>

            </div>
            <div class="col-md-12 col-lg-4 text-center mb-4 mb-lg-0">
              <div class="d-inline-block">
                <p class="mb-2"><small class="text-uppercase text-black font-weight-bold">Premier League &mdash; Round 10</small></p>
                <div class="bg-black py-2 px-4 mb-2 text-white d-inline-block rounded"><span class="h3">3:2</span></div>
                <p class="mb-0"><small class="text-uppercase text-black font-weight-bold">10 September / 7:30 AM</small></p>
              </div>
            </div>

            <div class="col-md-12 col-lg-4 text-center text-lg-right">
              <div class="">
                <div class="d-block d-lg-flex align-items-center">
                  <div class="image mx-auto ml-lg-3 mb-3 mb-lg-0 order-2">
                    <img src="resources/images/img_4_sq.jpg" alt="Image" class="img-fluid"/>
                  </div>
                  <div class="text order-1">
                    <h3 class="h5 mb-0 text-black">Steelers</h3>
                    <span class="text-uppercase small country text-black">London</span>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>

        <div class="row">
          <div class="col-md-12">

            <h2 class="h6 text-uppercase text-black font-weight-bold mb-3">Latest Matches</h2>
            <div class="site-block-tab">
              <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab" aria-controls="pills-home" aria-selected="true">Match 1</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab" aria-controls="pills-profile" aria-selected="false">Match 2</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab" aria-controls="pills-contact" aria-selected="false">Match 3</a>
                </li>
              </ul>
              <div class="tab-content" id="pills-tabContent">
                <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">

                  <div class="row align-items-center">
                    <div class="col-md-12">


                      <div class="row bg-white align-items-center ml-0 mr-0 py-4 match-entry">
                        <div class="col-md-4 col-lg-4 mb-4 mb-lg-0">

                          <div class="text-center text-lg-left">
                            <div class="d-block d-lg-flex align-items-center">
                              <div class="image image-small text-center mb-3 mb-lg-0 mr-lg-3">
                                <img src="resources/images/img_1_sq.jpg" alt="Image" class="img-fluid"/>
                              </div>
                              <div class="text">
                                <h3 class="h5 mb-0 text-black">Packers</h3>
                                <span class="text-uppercase small country">Brazil</span>
                              </div>
                            </div>
                          </div>

                        </div>
                        <div class="col-md-4 col-lg-4 text-center mb-4 mb-lg-0">
                          <div class="d-inline-block">
                            <div class="bg-black py-2 px-4 mb-2 text-white d-inline-block rounded"><span class="h5">3:2</span></div>
                          </div>
                        </div>

                        <div class="col-md-4 col-lg-4 text-center text-lg-right">
                          <div class="">
                            <div class="d-block d-lg-flex align-items-center">
                              <div class="image image-small ml-lg-3 mb-3 mb-lg-0 order-2">
                                <img src="resources/images/img_4_sq.jpg" alt="Image" class="img-fluid"/>
                              </div>
                              <div class="text order-1 w-100">
                                <h3 class="h5 mb-0 text-black">Steelers</h3>
                                <span class="text-uppercase small country">London</span>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- END row -->

                      <div class="row bg-white align-items-center ml-0 mr-0 py-4 match-entry">
                        <div class="col-md-4 col-lg-4 mb-4 mb-lg-0">

                          <div class="text-center text-lg-left">
                            <div class="d-block d-lg-flex align-items-center">
                              <div class="image image-small text-center mb-3 mb-lg-0 mr-lg-3">
                                <img src="resources/images/img_1_sq.jpg" alt="Image" class="img-fluid"/>
                              </div>
                              <div class="text">
                                <h3 class="h5 mb-0 text-black">Patriots</h3>
                                <span class="text-uppercase small country">Brazil</span>
                              </div>
                            </div>
                          </div>

                        </div>
                        <div class="col-md-4 col-lg-4 text-center mb-4 mb-lg-0">
                          <div class="d-inline-block">
                            <div class="bg-black py-2 px-4 mb-2 text-white d-inline-block rounded"><span class="h5">3:2</span></div>
                          </div>
                        </div>

                        <div class="col-md-4 col-lg-4 text-center text-lg-right">
                          <div class="">
                            <div class="d-block d-lg-flex align-items-center">
                              <div class="image image-small ml-lg-3 mb-3 mb-lg-0 order-2">
                                <img src="resources/mages/img_4_sq.jpg" alt="Image" class="img-fluid"/>
                              </div>
                              <div class="text order-1 w-100">
                                <h3 class="h5 mb-0 text-black">Cowboys</h3>
                                <span class="text-uppercase small country">London</span>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- END row -->

                      <div class="row bg-white align-items-center ml-0 mr-0 py-4 match-entry">
                        <div class="col-md-4 col-lg-4 mb-4 mb-lg-0">

                          <div class="text-center text-lg-left">
                            <div class="d-block d-lg-flex align-items-center">
                              <div class="image image-small text-center mb-3 mb-lg-0 mr-lg-3">
                                <img src="resources/images/img_1_sq.jpg" alt="Image" class="img-fluid"/>
                              </div>
                              <div class="text">
                                <h3 class="h5 mb-0 text-black">Raiders</h3>
                                <span class="text-uppercase small country">Brazil</span>
                              </div>
                            </div>
                          </div>

                        </div>
                        <div class="col-md-4 col-lg-4 text-center mb-4 mb-lg-0">
                          <div class="d-inline-block">
                            <div class="bg-black py-2 px-4 mb-2 text-white d-inline-block rounded"><span class="h5">3:2</span></div>
                          </div>
                        </div>

                        <div class="col-md-4 col-lg-4 text-center text-lg-right">
                          <div class="">
                            <div class="d-block d-lg-flex align-items-center">
                              <div class="image image-small ml-lg-3 mb-3 mb-lg-0 order-2">
                                <img src="resources/images/img_4_sq.jpg" alt="Image" class="img-fluid"/>
                              </div>
                              <div class="text order-1 w-100">
                                <h3 class="h5 mb-0 text-black">Chiefs</h3>
                                <span class="text-uppercase small country">London</span>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>

                      <!-- END row -->

                    </div>

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    

    <div class="site-section block-13 bg-primary fixed overlay-primary bg-image" style="background-image: url('resources/images/hero_bg_3.jpg');"  data-stellar-background-ratio="0.5">

      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12 text-center">
            <h2 class="text-white">Más noticia</h2>
          </div>
        </div>

        <div class="row">
          <div class="nonloop-block-13 owl-carousel">
        <div class="item">
          <!-- uses .block-12 -->
          <div class="block-12">
            <figure>
              <img src="resources/images/ttt.jpg" alt="Image" class="img-fluid"/>
            </figure>
            <div class="text">
              <span class="meta">May 20th 2018</span>
              <div class="text-inner">
                <h2 class="heading mb-3"><a href="#" class="text-black">Mundial de atletismo indoor</a></h2>
                <p>El palentino Óscar Husillos se metió en la final de 400 metros de los Mundiales de atletismo en pista cubierta y batió, de paso, por segunda vez este año el récord de España al ganar la segunda semifinal en 45.69, el mejor crono de la historia en una semifinal mundialista!</p>
              </div>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="block-12">
            <figure>
              <img src="resources/images/te.jpg" alt="Image" class="img-fluid"/>
            </figure>
            <div class="text">
              <span class="meta">May 20th 2018</span>
              <div class="text-inner">
                <h2 class="heading mb-3"><a href="#" class="text-black">Nadal, una coraza a prueba de bomba</a></h2>
                <p>Tras ganar el Masters 1000 de Canadá, Rafael Nadal decide no disputar el de Cincinnati, a mi juicio, una medida de lo más oportuna!</p>
              </div>
            </div>
          </div>
        </div>

        <div class="item">
          <div class="block-12">
            <figure>
              <img src="resources/images/ci.jpg" alt="Image" class="img-fluid"/>
            </figure>
            <div class="text">
              <span class="meta">May 20th 2018</span>
              <div class="text-inner">
                <h2 class="heading mb-3"><a href="#" class="text-black">Cánovas, ciclismo al alza</a></h2>
                <p>En fechas diferentes, con organización distinta (el inquieto Cáceres Bike ha cogido el mando), pero con el mismo espíritu e idéntica liturgia. Evidentemente, también con más calor que de costumbre!</p>
              </div>
            </div>
          </div>
        </div>

      </div>
        </div>
      </div>
      
    </div>

    <div class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-12 text-center">
            <h2 class="text-black">Últimas noticias</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6 col-lg-4">
            <div class="post-entry">
              <div class="image">
                <img src="resources/images/img_1.jpg" alt="Image" class="img-fluid"/>
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">PSG, con un Mbappé inclemente, golea y firma su mejor arranque histórico en el fútbol francés</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">El París SG goleó 5-0 al Lyon, cuatro de ellos anotados por Kylian Mbappé, y logró su noveno triunfo consecutivo, firmando el mejor arranque de un equipo en toda la historia de la Ligue 1.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="post-entry">
              <div class="image">
                <img src="resources/images/bbbb.jpg" alt="Image" class="img-fluid"/>
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">Rumbo al Mundial de Básquetbol: Argentina perdió con España en el último amistoso</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">La selección argentina de básquetbol perdió 84-76 ante España en el último amistoso previo al Mundial. El equipo ibérico estuvo en desventaja durante gran parte del partido, pero una gran reacción de Ricky Rubio le dio la victoria a su conjunto.</p>
              </div>
            </div>
          </div>
          <div class="col-md-6 col-lg-4">
            <div class="post-entry">
              <div class="image">
                <img src="resources/images/kkk.jpg" alt="Image" class="img-fluid"/>
              </div>
              <div class="text p-4">
                <h2 class="h5 text-black"><a href="#">“Cumplir 150 partidos con el Girona en este momento me hace muy feliz</a></h2>
                <span class="text-uppercase date d-block mb-3"><small>By Colorlib &bullet; Sep 25, 2018</small></span>
                <p class="mb-0">Aday Benítez cumplió 150 partidos vistiendo la camiseta del Girona este domingo ante el Racing de Santander en un encuentro que significó el primer triunfo a domicilio de los gerundenses en esta Liga. </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    
    
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

  <script src="resources/js/jquery-3.3.1.min.js"></script>
  <script src="resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="resources/js/jquery-ui.js"></script>
  <script src="resources/js/popper.min.js"></script>
  <script src="resources/js/bootstrap.min.js"></script>
  <script src="resources/js/owl.carousel.min.js"></script>
  <script src="resources/js/jquery.stellar.min.js"></script>
  <script src="resources/js/jquery.countdown.min.js"></script>
  <script src="resources/js/jquery.magnific-popup.min.js"></script>
  <script src="resources/js/aos.js"></script>
  <script src="resources/js/main.js"></script>
            
            

</body>
</html>
