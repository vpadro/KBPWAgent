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
                        <div class="col-sm-12">
                           <div class="home-tab">
                              <div class="d-sm-flex align-items-center justify-content-between border-bottom">
                                 <ul class="nav nav-tabs" role="tablist">
                                    <li class="nav-item">
                                       <a class="nav-link active ps-0" id="home-tab" data-bs-toggle="tab" href="#overview" role="tab" aria-controls="overview" aria-selected="true">Powiadomienie o końcu polisy</a>
                                    </li>
                                    <li class="nav-item">
                                       <a class="nav-link" id="profile-tab" data-bs-toggle="tab" href="#audiences" role="tab" aria-selected="false">Wysyłka polis</a>
                                    </li>
                                    <li class="nav-item">
                                       <a class="nav-link" id="contact-tab" data-bs-toggle="tab" href="#demographics" role="tab" aria-selected="false">Wypowiedzenia polis</a>
                                    </li>
                                    <li class="nav-item">
                                       <a class="nav-link border-0" id="more-tab" data-bs-toggle="tab" href="#more" role="tab" aria-selected="false">Pełnomocnictwa</a>
                                    </li>
                                 </ul>
                                 <div>
                                    <div class="btn-wrapper">
                                       <a href="#" class="btn btn-otline-dark"><i class="fas fa-print"></i> Print</a>
                                       <a href="#" class="btn btn-primary text-white me-0"><i class="fas fa-download"></i> Export</a>
                                    </div>
                                 </div>
                              </div>
                              <div class="tab-content tab-content-basic">
                                 <div class="tab-pane fade show active" id="overview" role="tabpanel" aria-labelledby="overview">
                                    <div class="row">
                                       <div class="col-sm-12">
                                          <div class="statistics-details d-flex align-items-center justify-content-between">
                                             <div>
                                                <p class="statistics-title">Liczba polis</p>
                                                <h3 class="rate-percentage">12</h3>
                                                <p class="text-danger d-flex"><i class="mdi mdi-menu-down"></i><span>-0.5%</span></p>
                                             </div>
                                             <div>
                                                <p class="statistics-title">Suma ubezpieczenia</p>
                                                <h3 class="rate-percentage">7 682</h3>
                                                <p class="text-success d-flex"><i class="mdi mdi-menu-up"></i><span>+0.1%</span></p>
                                             </div>
                                             <div>
                                                <p class="statistics-title">Liczba klientów</p>
                                                <h3 class="rate-percentage">10</h3>
                                                <p class="text-danger d-flex"><i class="mdi mdi-menu-down"></i><span>68.8</span></p>
                                             </div>
                                             <div class="d-none d-md-block">
                                                <p class="statistics-title">Polisy samochodowe</p>
                                                <h3 class="rate-percentage">6</h3>
                                                <p class="text-success d-flex"><i class="mdi mdi-menu-down"></i><span>+0.8%</span></p>
                                             </div>
                                             <div class="d-none d-md-block">
                                                <p class="statistics-title">Polisy mieszkaniowe</p>
                                                <h3 class="rate-percentage">4</h3>
                                                <p class="text-danger d-flex"><i class="mdi mdi-menu-down"></i><span>68.8</span></p>
                                             </div>
                                             <div class="d-none d-md-block">
                                                <p class="statistics-title">Polisy inne</p>
                                                <h3 class="rate-percentage">2</h3>
                                                <p class="text-success d-flex"><i class="mdi mdi-menu-down"></i><span>+0.8%</span></p>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <div class="row">
                                       <div class="col-lg-12 grid-margin stretch-card">
                                          <div class="card">
                                             <div class="card-body">
                                                <div class="table-responsive">
                                                   <table class="table table-striped">
                                                      <thead>
                                                         <tr>
                                                            <th>  Numer polisy</th>
                                                            <th> Suma ubezpieczenia </th>
                                                            <th>Data końca polisy </th>
                                                            <th>Rodzaj klienta </th>
                                                            <th> Nazwa kliena </th>
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
                                                            <td>
                                                            	<span class="icon-send" ><i class="menu-icon mdi mdi mdi-email-outline"></i></span>
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                            <td >45345353 </td>
                                                            <td class="text-right">2 342</td>
                                                            <td>2021-10-21 </td>
                                                            <td>Firma</td>
                                                            <td>Tauron</td>
                                                            <td>
                                                            	<span class="icon-send" ><i class="menu-icon mdi mdi mdi-email-outline"></i></span>
                                                             </td>
                                                         </tr>
                                                         <tr>
                                                            <td >665333 </td>
                                                            <td class="text-right">1764</td>
                                                            <td>2021-10-30 </td>
                                                            <td>Osoba fiyczna</td>
                                                            <td>Marcin Adamski</td>
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
         
   </body>
</html>