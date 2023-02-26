<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<jsp:include page="../header.jsp"/>

	
	<div class="container col-md-5"> 
         <div class="card"> 
             <div class="card-header">
                 <h6 class="m-0 font-weight-bold text-primary">Formulaire d'ajout d'Inscription</h6>
             </div>
		
			 <form method="post" >
			 
                   <!-- User Name -->
                   
                   <div class="form-floating mb-3">   
                   	<input class="form-control" id="libelle" type="text" name="details" placeholder="Détails Inscription" required autofocus/>
                   </div>
                   
                   <!-- Students -->
                   
                   <div class="form-group">
                       <label>Etudiant</label>
                       <select class="form-control" name="student">
                        <c:forEach var="student" items="${students}">
				
						  <option  value='<c:out value="${student.id}" />'><c:out value="${student.firstname} ${student.lastname}" /></option>
						</c:forEach>
                       </select>
                   </div>
                   
                   <!-- courses -->
                   
                   <div class="form-group">
                       <label>Cours</label>
                       <select class="form-control" name="courses">
                        <c:forEach var="course" items="${courses}">
				
						  <option  value='<c:out value="${course.id}" />'><c:out value="${course.name}" /></option>
						</c:forEach>
                       </select>
                   </div>
                   
                   <div class="form-group">
                       <label>Année</label>
                       <select class="form-control" name="year">
                        <c:forEach var="year" items="${years}">
				
						  <option  value='<c:out value="${year.id}" />'><c:out value="${year.name}" /></option>
						</c:forEach>
                       </select>
                   </div>
				 
                       <!-- Bouton  Ajouter-->

                  <div class="flex items-center justify-end mt-4">
                      <input type="submit" class="btn btn-primary" value="Ajouter"/>
                  </div>
			 </form>
			 
         </div>
     </div>
           
<jsp:include page="../footer.jsp"/>