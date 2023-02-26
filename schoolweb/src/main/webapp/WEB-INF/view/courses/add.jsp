<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<jsp:include page="../header.jsp"/>
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container col-md-5"> 
               <div class="card"> 
                   <div class="card-header">
                       <h6 class="m-0 font-weight-bold text-primary">Formulaire d'ajout de cours</h6>
                   </div>
       
                   <form method="POST" >
                       
                       <!-- Name -->
                       
                       <div class="form-floating mb-3">   
                       	<input class="form-control" id="name" type="text" name="name" placeholder="Matière" required autofocus/>
                       </div>
                       
                       <!-- Programme -->
                       
                       <div class="form-floating mb-3">   
                       	<input class="form-control" id="programe" type="text" name="programe" placeholder="Programme" required autofocus/>
                       </div>

                       <!-- Bouton  Ajouter-->

                       <div class="flex items-center justify-end mt-4">
                           <input type="submit" class="btn btn-primary" value="Ajouter"/>
                       </div>
       
                      
                   </form>
               </div>
           </div>
	<jsp:include page="../footer.jsp"/>