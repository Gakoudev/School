<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<jsp:include page="header.jsp"/>
<!-- Begin Page Content -->
    <div class="container-fluid">
		<c:choose>
		  <c:when test="${link != null}">
		  	<h1 class="h3 mb-2 text-gray-800">Le lien <c:out value="${link}" /> est incorecte</h1>
		  </c:when>
		  <c:otherwise>
		    <h1 class="h3 mb-2 text-gray-800">Bienvenue</h1>
		  </c:otherwise>
		</c:choose>
	</div>
												
<jsp:include page="footer.jsp"/>