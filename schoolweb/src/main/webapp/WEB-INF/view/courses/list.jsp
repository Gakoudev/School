<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"></jsp:include>
<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Cours<button class="btn border " onclick='$("#modalCours").modal("show")'><i style="font-size: 30px" class="fas fa-fw fa-plus-circle text-primary"></i> </button></h1>
					<!-- Modal Supprimer -->
					<div class="modal fade" id="modaldeleteCourses" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
					            <label for="recipient-name" class="col-form-label">Voulez cous vraiment supprimer L'Etudiant d'ID</label>
					            <input type="text" class="form-control" id="idC" disabled>
					          </div>
					        </form>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
					        <button type="button" class="btn btn-primary" onclick="deleteCourses();">Supprimer</button>
					      </div>
					    </div>
					  </div>
					</div>
					
                   	
				     <!-- modal Ajouter  -->
					<div class="modal fade" id="modalCours">
				 		<div class="modal-dialog" >
						    <div class="modal-content">
						      <div class="modal-header card-header">
                 				<h6 class="m-0 font-weight-bold text-primary">Nouveau Cours</h6>
                 				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body">
						        	<form  >
				                       
				                       <!-- Name -->
				                       
				                       <div class="form-floating mb-3">   
				                       	<input class="form-control" id="name" type="text" name="name" placeholder="Matière" required autofocus/>
				                       </div>
				                       
				                       <!-- Programme -->
				                       
				                       <div class="form-floating mb-3">   
				                       	<input class="form-control" id="programe" type="text" name="programe" placeholder="Programme" required autofocus/>
				                       </div>
				
				                       <!-- Bouton  Ajouter-->
				
				                       
				       
				                      
				                   </form>
				                   
						       </div>
						       <div class="modal-footer card-footer">
						       		<div class="flex items-center justify-end mt-4">
			                           <input type="submit" onclick="addCourses();" class="btn btn-primary" value="Ajouter"/>
			                       </div>
						       </div>
						    </div>
					 	</div>
					</div>
					
					 <!-- modal Ajouter  -->
					<div class="modal fade" id="modalEditCourses">
				 		<div class="modal-dialog" >
						    <div class="modal-content">
						      <div class="modal-header card-header">
                 				<h6 class="m-0 font-weight-bold text-primary">Editer Cours</h6>
                 				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body">
						        	<form  >
				                       
							          <div class="form-floating mb-3" >
					                   	<input class="form-control" id="idE" type="text" name="IdE"  disabled/>
							          </div>
				                       <!-- Name -->
				                       
				                       <div class="form-floating mb-3">   
				                       	<input class="form-control" id="nameE" type="text" name="nameE" placeholder="Matière" required autofocus/>
				                       </div>
				                       
				                       <!-- Programme -->
				                       
				                       <div class="form-floating mb-3">   
				                       	<input class="form-control" id="programeE" type="text" name="programeE" placeholder="Programme" required autofocus/>
				                       </div>
				
				                       <!-- Bouton  Ajouter-->
				
				                       
				       
				                      
				                   </form>
						       <div class="modal-footer card-footer">
						       		
				                   <div class="flex items-center justify-end mt-4">
				                   		<button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
					        			 <button  type="submit" onclick="editCourses();" class="btn btn-primary" data-dismiss="modal">Modifier</button>
			                       </div>
						       </div>
						       </div>
						    </div>
					 	</div>
					</div>
					
					<!-- modal Editer Cours  -->
					<div class="modal fade" id="modalEditCours">
				 		<div class="modal-dialog" >
						    <div class="modal-content">
						      <div class="modal-header card-header">
                 				<h6 class="m-0 font-weight-bold text-primary">Editer Cours</h6>
                 				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body">
						        	<form  >
				                       
				                       <!-- Id -->
				                       
				                       <div class="form-floating mb-3">   
				                       	<input class="form-control" id="id" type="text" name="id" placeholder="Matière" desabled/>
				                       </div>
				                       
				                       <!-- Name -->
				                       
				                       <div class="form-floating mb-3">   
				                       	<input class="form-control" id="name" type="text" name="name" placeholder="Matière" required autofocus/>
				                       </div>
				                       
				                       <!-- Programme -->
				                       
				                       <div class="form-floating mb-3">   
				                       	<input class="form-control" id="programe" type="text" name="programe" placeholder="Programme" required autofocus/>
				                       </div>
				
				                       <!-- Bouton  Ajouter-->
				
				                       
				       
				                      
				                   </form>
				                   <div class="flex items-center justify-end mt-4">
			                           <input type="submit" onclick="editCourses();" class="btn btn-primary" value="Modifier"/>
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
                            <h6 class="m-0 font-weight-bold text-primary">Liste des Cours</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Identifiant</th>
                                            <th>Matière</th>
                                            <th>Programme</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Identifiant</th>
                                            <th>Matière</th>
                                            <th>Programme</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                    	<c:forEach var="course" items="${courses}">
											<tr>
												<td><c:out value="${course.id}" /></td>
												<td><c:out value="${course.name}" /></td>
												<td><c:out value="${course.programe}" /></td>
												<td><button class="btn " data-toggle="modal" data-target="#modaldeleteCourses" data-whatever='<c:out value="${course.id}" />'><i class="fas fa-fw  fa-trash text-danger"></i></button>
													<button class="btn " data-toggle="modal" data-target="#modalEditCourses" data-whatever='<c:out value="${course.id}" />'><i class="fas fa-fw  fa-pen text-primary"></i></button>
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
		