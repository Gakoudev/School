<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"></jsp:include>
<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Etudiants <button class="btn border " onclick='$("#modalStudent").modal("show")'><i style="font-size: 30px" class="fas fa-fw fa-plus-circle text-primary"></i> </button></h1>
                    
                    <!-- Modal Supprimer -->
					<div class="modal fade" id="modaldeleteStudent" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
					            <input type="text" class="form-control" id="idS" disabled>
					          </div>
					        </form>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
					        <button type="button" class="btn btn-primary" onclick="deleteStudent();">Supprimer</button>
					      </div>
					    </div>
					  </div>
					</div>
					
                   	<!-- Modal Ajouter -->
					 <div class="modal fade" id="modalStudent">
					 	<div class="modal-dialog" >
						    <div class="modal-content">
						      <div class="modal-header card-header">
                 				<h6 class="m-0 font-weight-bold text-primary">Nouveau Etudiant</h6>
                 				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body">
						       	<form >
						       		 <div class="form-floating mb-3" style="display: none;">
										  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
										</div>
			 
					                   <!-- firstname -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="firstname" type="text" name="firstname" placeholder="Prénom" required autofocus/>
					                   </div>
					                   
								 
					                   <!-- lastname -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="lastname" type="text" name="lastname" placeholder="Nom" required autofocus/>
					                   </div>
					                   
								 
					                   <!-- birthday -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="birthday" type="date" name="birthday" placeholder="Date de naissance" required autofocus/>
					                   </div>
					                   
								 
					                   <!-- phone -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="phone" type="text" name="phone" placeholder="Téléphone" required autofocus/>
					                   </div>
					                   
					                       <!-- Bouton  Ajouter-->
					
								 </form>
						       </div>
						       <div class="modal-footer card-footer">
						       		
					                  <div class="flex items-center justify-end mt-4">
					                      <input type="submit" onclick="addStudent();" class="btn btn-primary" value="Ajouter"/>
					                  </div>
						       </div>
						    </div>
					 	</div>
					 </div>
					 	<!-- Modal Edit -->
					 <div class="modal fade" id="modalEditStudent">
					 	<div class="modal-dialog" >
						    <div class="modal-content">
						      <div class="modal-header card-header">
                 				<h6 class="m-0 font-weight-bold text-primary">Editer Etudiant</h6>
                 				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						       <div class="modal-body">
						       	<form >
						       		 
							          <div class="form-floating mb-3" >
					                   	<input class="form-control" id="idE" type="text" name="IdE"  disabled/>
							          </div>
			 
					                   <!-- firstname -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="firstnameE" type="text" name="firstnameE" placeholder="Prénom" required autofocus/>
					                   </div>
					                   
								 
					                   <!-- lastname -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="lastnameE" type="text" name="lastnameE" placeholder="Nom" required autofocus/>
					                   </div>
					                   
								 
					                   <!-- birthday -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="birthdayE" type="date" name="birthdayE" placeholder="Date de naissance" required autofocus/>
					                   </div>
					                   
								 
					                   <!-- phone -->
					                   
					                   <div class="form-floating mb-3">   
					                   	<input class="form-control" id="phoneE" type="text" name="phoneE" placeholder="Téléphone" required autofocus/>
					                   </div>
					                   
					                      
								 </form>
						       </div>
						       <div class="modal-footer  card-footer">
						       
					                       <!-- Bouton  Update-->
					
					                  <div class="flex items-center justify-end mt-4">
					        			  <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>
					        			  <button  type="submit" onclick="editStudent();" class="btn btn-primary" data-dismiss="modal">Modifier</button>
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
                            <h6 class="m-0 font-weight-bold text-primary">Liste des Etudiants</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Identifiant</th>
                                            <th>Prénom</th>
                                            <th>Nom</th>
                                            <th>Date de naissance</th>
                                            <th>Télephone</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Identifiant</th>
                                            <th>Prénom</th>
                                            <th>Nom</th>
                                            <th>Date de naissance</th>
                                            <th>Télephone</th>
                                            <th>Action</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
										<c:forEach var="student" items="${students}">
					
											<tr>
												<td><c:out value="${student.id}" /></td>
												<td><c:out value="${student.firstname}" /></td>
												<td><c:out value="${student.lastname}" /></td>
												<td><c:out value="${student.birthday} " /></td>
												<td><c:out value="${student.phone} " /></td>
												<td>  <button class="btn " data-toggle="modal" data-target="#modaldeleteStudent" data-whatever='<c:out value="${student.id}" />'><i class="fas fa-fw  fa-trash text-danger"></i></button> 
													<button class="btn " data-toggle="modal" data-target="#modalEditStudent" data-whatever='<c:out value="${student.id}" />'><i class="fas fa-fw  fa-pen text-primary"></i></button>
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