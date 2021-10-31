<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html class="fixed sidebar-left-collapsed">
   <head>
      <meta http-equiv="x-ua-compatible" content="ie=edge" charset="utf-8">
      <title>KBPW Agent</title>
      <meta name="description" content="">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
      <link rel="stylesheet" href="resources/template-star-admin/vendors/mdi/css/materialdesignicons.min.css">
      <link rel="stylesheet" href="resources/template-star-admin/vertical-layout-light/style.css">
      <link rel="stylesheet" href="resources/css/main.css">
       <spring:url value="resources/font-awesome/css/all.min.css" var="fontCSS" />
      <link href="${fontCSS}" rel="stylesheet" />
       <spring:url value="resources/client/clinet.css" var="clinetCSS" />
      <link href="${clinetCSS}" rel="stylesheet" />
   </head>
   <body>
      <body class="sidebar-icon-only">
         <div class="container-scroller">
            <%@ include file = "/resources/template/header.jsp"%>
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
               <!-- partial:partials/_sidebar.html -->
               <%@ include file = "/resources/template/aside.jsp"%>
               <!-- partial -->
               <div class="main-panel">
                  <div class="content-wrapper">
                  <div class="row">
                        <div class="col-sm-10">
                        <div class="form-group form-search-user">	
		                    <input type="text" class="form-control form-control-lg" placeholder="Wyszukaj klienta" aria-label="Username">
		                 </div>
		                 <div class="form-icon-search">
		                 <span id="search-buttom-id" class="btn btn-primary text-white me-0 btn-search"><span><i class="fas fa-search"></i></span> Wyszukaj</span>
		                 
		                 </div>
                  	</div>
                  	 <div class="col-sm-2">
                  	  	  <span  class="btn btn-primary text-white me-0 btn-client"><i class="fas fa-user-plus"></i> Dodaj klienta</span>
                  	 </div>
                  </div>
                <div class="row card-client">                                                                   
                 <div class="col-md-6 col-lg-12 grid-margin stretch-card">
                            <div class="card bg-primary card-rounded card-grey">
                              <div class="card-body ">
                                <div class="row">
                                  <div class="col-sm-3">
                                    <p class="status-summary-ight-white mb-1 text-title-card ">Imie nazwisko/Nazwa</p>
                                    <h2 class="text-info-card ">Adam Nowak </h2>
                                  </div>
                                  <div class="col-sm-3">
                                    <p class="status-summary-ight-white mb-1 text-title-card ">Adres</p>
                                    <h2 class="text-info-card">Łódź, Piotrkowska 123 m 45</h2>
                                  </div>
                                  <div class="col-sm-3">
                                    <p class="status-summary-ight-white mb-1 text-title-card ">Pesel/regon</p>
                                    <h2 class="text-info-card">78121311632</h2>
                                  </div>
                                  <div class="col-sm-3">
                                    <p class="status-summary-ight-white mb-1 text-title-card ">Typ klienta</p>
                                    <h2 class="text-info-card">Osoba fizyczna</h2>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>              
                    </div>
                     <div class="row">
                        <div class="col-sm-12">
                           <div class="home-tab">
                              <div class="d-sm-flex align-items-center justify-content-between border-bottom">
                                 <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                       <a class="nav-link active ps-0" id="home-tab" data-bs-toggle="tab" href="#overview" role="tab" aria-controls="overview" aria-selected="true">Polisy</a>
                                    </li>
                                    <li class="nav-item">
                                       <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#audiences" role="tab" aria-selected="false">Pojazdy</a>
                                    </li>
                                     <li class="nav-item">
                                       <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#audiences" role="tab" aria-selected="false">Dane kontaktowe</a>
                                    </li>
                                 </ul>
                                 <div>
                                    <div class="btn-wrapper">
                                       <span  class="btn btn-otline-dark btn-button-dark"><i class="far fa-file-alt"></i>Dodaj polisę</span>
                                       <span  class="btn btn-otline-dark btn-button-dark"><i class="fas fa-car"></i> Dodaj pojazd</span>
                                    </div>
                                 </div>
                              </div>
                              <div class="tab-content tab-content-basic">
                                 <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview">
                                    <div class="row">
                                       <div class="col-lg-12 grid-margin stretch-card">
                                          <div class="card">
                                             <div class="card-body">
                                                <div class="table-responsive">
                                                   <table class="table table-striped">
                                                      <thead>
                                                         <tr>
                                                            <th>Numer polisy</th>
                                                            <th> Przedmiot ubezp.</th>
                                                            <th>Okres </th>
                                                            <th>Firma ubezp.</th>
                                                            <th> Termin </th>
                                                            <th>Składka  </th>
                                                            <th>  </th>
                                                         </tr>
                                                      </thead>
                                                      <tbody>
           
                                                         <tr>
                                                            <td >12345612 </td>
                                                            <td class="text-right">6 764</td>
                                                            <td>2021-10-20 </td>
                                                            <td>Osoba fiyczna</td>
                                                            <td>Adam Nowak </td>
                                                            <td>Adam Nowak </td>
                                                             <td>
                                                            	<span class="icon-send" ><i class="menu-icon mdi mdi mdi-email-outline"></i></span>
                                                             </td>
                                                         </tr>
                                                      </tbody>
                                                   </table>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                <div class="tab-pane fade" id="audiences" role="tabpanel" aria-labelledby="audiences">
                                    <div class="row">
                                       <div class="col-sm-12">
                                          <div class="statistics-details d-flex align-items-center justify-content-between">

                                          </div>
                                       </div>
                                    </div>
                                    <div class="row">
                                       <div class="col-lg-12 grid-margin stretch-card">
                                          <div class="card">
                                             <div class="card-body">
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
                  <!-- content-wrapper ends -->
                  <!-- partial:partials/_footer.html -->
                  <footer class="footer">
                     <div class="d-sm-flex justify-content-center justify-content-sm-between">
                        <span class="text-muted text-center text-sm-left d-block d-sm-inline-block"></span>
                        <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Copyright © 2021.</span>
                     </div>
                  </footer>
                  <!-- partial -->
               </div>
               <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
         </div>
         <spring:url value="/resources/js/jquery.min.js" var="jqueryJS" />
         <script src="${jqueryJS}"></script>
         <spring:url value="resources/template-star-admin/vendors/js/vendor.bundle.base.js" var="vendorBaseJS" />
         <script src="${vendorBaseJS}"></script>
         <spring:url value="resources/template-star-admin/vendors/js/template.js" var="templateJS" />
         <script src="${templateJS}"></script>
         <spring:url value="resources/template-star-admin/vendors/js/hoverable-collapse.js" var="collapseJS" />
         <script src="${collapseJS}"></script>
         <spring:url value="resources/client/client.js" var="clientJS" />
         <script src="${clientJS}"></script>
               <script type='text/javascript'>
          console.log(JSON.stringify(${model.tekstyJson} ))
         
      </script>
         
   </body>
</html>