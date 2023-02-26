<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../header.jsp"></jsp:include>
<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">Etudiants</h1>
                    
                   	

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
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Identifiant</th>
                                            <th>Prénom</th>
                                            <th>Nom</th>
                                            <th>Date de naissance</th>
                                            <th>Télephone</th>
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