<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"></jsp:include>
<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Inscription<button class="btn border " onclick='$("#modalInsccription").modal("show")'><i style="font-size: 30px" class="fas fa-fw fa-plus-circle text-primary"></i> </button></h1>
					
					<!-- Modal Supprimer -->
					<div class="modal fade" id="modaldeleteInscription" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
					            <label for="recipient-name" class="col-form-label">Voulez cous vraiment supprimer L'inscription d'ID</label>
					            <input type="text" class="form-control" id="idI" disabled>
					          </div>
					        </form>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
					        <button type="button" class="btn btn-primary" onclick="deleteInscription();">Supprimer</button>
					      </div>
					    </div>
					  </div>
					</div>
					
					<!-- Modal Ajouter -->
					<div class="modal fade" id="modalInsccription">
					 	<div class="modal-dialog" >
						    <div class="modal-content">
						      <div class="modal-header card-header">
                 				<h6 class="m-0 font-weight-bold text-primary">Nouvelle Inscription</h6>
                 				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body">
						       	<form  >
			 
					                   <!-- User Name -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="details" type="text" name="details" placeholder="Détails Inscription" required autofocus/>
					                   </div>
					                   
					                   <!-- Students -->
					                   
					                   <div class="form-group">
					                       <label>Etudiant</label>
					                       <select class="form-control" name="student" id="student">
					                        <c:forEach var="student" items="${students}">
									
											  <option  value='<c:out value="${student.id}" />'><c:out value="${student.firstname} ${student.lastname}" /></option>
											</c:forEach>
					                       </select>
					                   </div>
					                   
					                   <!-- courses -->
					                   
					                   <div class="form-group">
					                       <label>Cours</label>
					                       <select class="form-control" name="courses" id="courses">
					                        <c:forEach var="course" items="${courses}">
									
											  <option  value='<c:out value="${course.id}" />'><c:out value="${course.name}" /></option>
											</c:forEach>
					                       </select>
					                   </div>
					                   
					                   <div class="form-group">
					                       <label>Année</label>
					                       <select class="form-control" name="year" id="year">
					                        <c:forEach var="year" items="${years}">
									
											  <option  value='<c:out value="${year.id}" />'><c:out value="${year.name}" /></option>
											</c:forEach>
					                       </select>
					                   </div>
									 
					                       <!-- Bouton  Ajouter-->
					
					                  <div class="flex items-center justify-end mt-4">
					                      <input type="submit" onclick="addInscription();" class="btn btn-primary" value="Ajouter"/>
					                  </div>
								 </form>
						       </div>
						       <div class="card-footer">
						       </div>
						    </div>
					 	</div>
					</div>
					
					<!-- Modal Editer -->
					<div class="modal fade" id="modalEditInsccription">
					 	<div class="modal-dialog" >
						    <div class="modal-content">
						      <div class="modal-header card-header">
                 				<h6 class="m-0 font-weight-bold text-primary">Editer Inscription</h6>
                 				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body">
						       	<form  >
						       			
							          <div class="form-floating mb-3" >
					                   	<input class="form-control" id="idE" type="text" name="IdE"  disabled/>
							          </div>
			 
					                   <!-- User Name -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="detailsE" type="text" name="detailsE" placeholder="Détails Inscription" required autofocus/>
					                   </div>
					                   
					                   <!-- Students -->
					                   
					                   <div class="form-group">
					                       <label>Etudiant</label>
					                       <select class="form-control" name="studentE" id="studentE">
					                        <c:forEach var="student" items="${students}">
									
											  <option  value='<c:out value="${student.id}" />'><c:out value="${student.firstname} ${student.lastname}" /></option>
											</c:forEach>
					                       </select>
					                   </div>
					                   
					                   <!-- courses -->
					                   
					                   <div class="form-group">
					                       <label>Cours</label>
					                       <select class="form-control" name="coursesE" id="coursesE">
					                        <c:forEach var="course" items="${courses}">
									
											  <option  value='<c:out value="${course.id}" />'><c:out value="${course.name}" /></option>
											</c:forEach>
					                       </select>
					                   </div>
					                   
					                   <div class="form-group">
					                       <label>Année</label>
					                       <select class="form-control" name="yearE" id="yearE">
					                        <c:forEach var="year" items="${years}">
									
											  <option  value='<c:out value="${year.id}" />'><c:out value="${year.name}" /></option>
											</c:forEach>
					                       </select>
					                   </div>
									
								 </form> 
						       </div>
						       <div class="modal-footer  card-footer">
						       
					                       <!-- Bouton  Update-->
					
					                  <div class="flex items-center justify-end mt-4">
					        			  <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
					        			  <button  type="submit" onclick="editInscription();" class="btn btn-primary" data-dismiss="modal">Modifier</button>
					                      <!-- input type="submit" onclick="editInscription();" class="btn btn-primary" value="Valider"/> 
					                       -->
					                  </div>
						       </div>
						    </div>
					 	</div>
					</div>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">Liste des Inscriptions</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTableInscription" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Identifiant</th>
                                            <th>details</th>
                                            <th>Etudiant</th>
                                            <th>Cours</th>
                                            <th>Année</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Identifiant</th>
                                            <th>details</th>
                                            <th>Etudiant</th>
                                            <th>Cours</th>
                                            <th>Année</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody class="tbody">
									
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->


<jsp:include page="../footer.jsp"></jsp:include>