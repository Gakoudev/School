<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"></jsp:include>
<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Années<button class="btn border " onclick='$("#modalAnnee").modal("show")'><i style="font-size: 30px" class="fas fa-fw fa-plus-circle text-primary"></i> </button></h1>
					
					<!-- Modal Supprimer -->
					<div class="modal fade" id="modaldeleteYear" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">Confirmation!</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body">
					        <form>
					          <div class="form-group">
					            <label for="recipient-name" class="col-form-label">Voulez cous vraiment supprimer L'année d'ID</label>
					            <input type="text" class="form-control" id="idY" disabled>
					          </div>
					        </form>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
					        <button type="button" class="btn btn-primary" onclick="deleteYear();">Supprimer</button>
					      </div>
					    </div>
					  </div>
					</div>
					
					<div class="modal fade" id="modalAnnee">
				 		<div class="modal-dialog" >
						    <div class="modal-content">
						      <div class="modal-header card-header">
                 				<h6 class="m-0 font-weight-bold text-primary">Nouvelle Année</h6>
                 				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body">
			       		   		<form >
                       
				                       <!-- Libelle -->
				                       
				                       <div class="form-floating mb-3">   
				                       	<input class="form-control" id="name" type="text" name="name" placeholder="Année" required autofocus/>
				                       </div>
				
				                       <!-- Bouton  Ajouter-->
				
				                       
				       
				                      
				                   </form>
				                   <div class="flex items-center justify-end mt-4">
				                           <input type="submit" onclick="addYear();" class="btn btn-primary" value="Ajouter"/>
				                       </div>
						       </div>
						       <div class="card-footer">
						       </div>
						    </div>
					 	</div>
					</div>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Liste des Années</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Identifiant</th>
                                            <th>Année</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Identifiant</th>
                                            <th>Année</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="year" items="${years}">
											<tr>
												<td><c:out value="${year.id}" /></td>
												<td><c:out value="${year.name}" /></td>
												<td><button class="btn " data-toggle="modal" data-target="#modaldeleteYear" data-whatever='<c:out value="${year.id}" />'><i class="fas fa-fw  fa-trash text-danger"></i></button>
												</td>
												
											</tr>
										</c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->


<jsp:include page="../footer.jsp"></jsp:include>
		