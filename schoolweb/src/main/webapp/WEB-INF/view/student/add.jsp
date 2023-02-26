<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<jsp:include page="../header.jsp"/>

	
	<div class="container col-md-5"> 
         <div class="card"> 
             <div class="card-header">
                 <h6 class="m-0 font-weight-bold text-primary">Formulaire Ajout Etudiant</h6>
             </div>
		
			 <form method="post" >
			 
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

                  <div class="flex items-center justify-end mt-4">
                      <input type="submit" class="btn btn-primary" value="Ajouter"/>
                  </div>
			 </form>
			 
         </div>
     </div>
           
<jsp:include page="../footer.jsp"/>