
/*
$(document).ready(function() {
	 loadDataI();

});
function loadDataI() {
	var table = $('#dataTableInscription').DataTable({
		ajax:{
		 url: "/schoolweb/inscription/liste",
		 type: "GET",
		 contentType: "application/json;charset=utf-8",
		 dataType: "json",
		 
		 success: function (result) {
			 //console.log(result);
			 
			
		 var html = '';
			 $.each(result, function (key, item) {
			 html += '<tr>';
			 html += '<td>' + item.id + '</td>';
			 html += '<td>' + item.details + '</td>';
			 html += '<td>' + item.student.firstname +" "+item.student.lastname+ '</td>';
			 html += '<td>' + item.courses.name + '</td>';
			 html += '<td>' + item.year.name + '</td>';
			 html += '<td><button class="btn " data-toggle="modal" data-target="#modaldeleteInscription" data-whatever='+item.id+'><i class="fas fa-fw  fa-trash text-danger"></i></button> ';
			  html +='<button class="btn " data-toggle="modal" data-target="#modalEditInsccription" data-whatever='+item.id+'><i class="fas fa-fw  fa-pen text-primary"></i></button> </td>'
			 html += '</tr>';
			 });
			 $('.tbody').html(html);
			 },
			 error: function (errormessage) {
			 alert(errormessage.responseText);
			 }
		 }
		});
		table.draw();
	
}

*/
/**
 *  YEAR
 */
function addYear(){
	$.ajax({
		url:'/schoolweb/year/list',
		type:'Post',
		dataType:'html',
		data:'name='+$("#name").val(),
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
	

}


function deleteYear(){
	$.ajax({
		url:'/schoolweb/year/delete',
		type:'Post',
		dataType:'html',
		data:'idY='+$("#idY").val(),
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(html,erreur,code){
			alert("Veuillez supprimer d'abord l'inscription!!!!!");
			
		}
	});
}

$('#modaldeleteYear').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var id = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-body input').val(id)
})
/**
 * COURSES
 */
function addCourses(){
	$.ajax({
		url:'/schoolweb/courses/list',
		type:'Post',
		dataType:'html',
		data:'name='+$("#name").val()+'&programe='+$("#programe").val(),
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
}



function editCourses(){
	$.ajax({
		url:'/schoolweb/courses/update',
		type:'Post',
		dataType:'html',
		data:'idE='+$("#idE").val()+'&nameE='+$("#nameE").val()+'&programeE='+$("#programeE").val(),
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
}


function deleteCourses(){
	$.ajax({
		url:'/schoolweb/courses/delete',
		type:'Post',
		dataType:'html',
		data:'idC='+$("#idC").val(),
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
}

$('#modaldeleteCourses').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var id = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-body input').val(id)
})



$('#modalEditCourses').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var id = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  $.ajax({
		url:'/schoolweb/courses/edit',
		type:'Get',
		dataType:'json',
		data:'idE='+id,
		success : function(data){
			$("#idE").val(data.id);
			$("#nameE").val(data.nameE);
			$("#programeE").val(data.programeE);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
})
/**
 * STUDENT
 */
function addStudent(){
	$.ajax({
		url:'/schoolweb/student/list',
		type:'Post',
		dataType:'html',
		data:'name='+$("#name").val()+'&firstname='+$("#firstname").val()+'&lastname='+$("#lastname").val()+'&birthday='+$("#birthday").val()+'&phone='+$("#phone").val(),
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
}



function editStudent(){
	$.ajax({
		url:'/schoolweb/student/update',
		type:'Post',
		dataType:'html',
		data:'idE='+$("#idE").val()+'&firstnameE='+$("#firstnameE").val()+'&lastnameE='+$("#lastnameE").val()+'&birthdayE='+$("#birthdayE").val()+'&phoneE='+$("#phoneE").val(),
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
}




function deleteStudent(){
	$.ajax({
		url:'/schoolweb/student/delete',
		type:'Post',
		dataType:'html',
		data:'idS='+$("#idS").val(),
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(code_html,erreur){
			alert(erreur);
			
		}
	});
}

$('#modalEditStudent').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var id = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  $.ajax({
		url:'/schoolweb/student/edit',
		type:'Get',
		dataType:'json',
		data:'idE='+id,
		success : function(data){
			$("#idE").val(data.id);
			$("#birthdayE").val(data.birthdayE);
			$("#firstnameE").val(data.firstnameE);
			$("#lastnameE").val(data.lastnameE);
			$("#phoneE").val(data.phoneE);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
})
$('#modaldeleteStudent').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var id = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-body input').val(id)
})
/**
 * INSCRIPTION
 */
function addInscription(){
	$.ajax({
		url:'/schoolweb/inscription/list',
		type:'Post',
		dataType:'html',
		data:'student='+$("#student").val()+'&details='+$("#details").val()+'&courses='+$("#courses").val()+'&year='+$("#year").val(),
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
}


function deleteInscription(){
	$.ajax({
		url:'/schoolweb/inscription/delete',
		type:'Post',
		dataType:'html',
		data:'idI='+$("#idI").val(),
		success : function(code,html,status){
			location.reload();
			alert(code);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
}


function editInscription(){
	$.ajax({
		url:'/schoolweb/inscription/update',
		type:'Post',
		dataType:'html',
		data:'idE='+$("#idE").val()+'&studentE='+$("#studentE").val()+'&detailsE='+$("#detailsE").val()+'&coursesE='+$("#coursesE").val()+'&yearE='+$("#yearE").val(),
		
		success : function(code_html,status){
			location.reload();
			alert(code_html);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
}



$('#modaldeleteInscription').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var id = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  modal.find('.modal-body input').val(id)
})

$('#modalEditInsccription').on('show.bs.modal', function (event) {
  var button = $(event.relatedTarget) // Button that triggered the modal
  var id = button.data('whatever') // Extract info from data-* attributes
  // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
  // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
  var modal = $(this)
  $.ajax({
		url:'/schoolweb/inscription/edit',
		type:'Get',
		dataType:'json',
		data:'idE='+id,
		success : function(data){
			$("#idE").val(data.id);
			$("#detailsE").val(data.detailsE);
		},
		error : function(html,erreur,code){
			alert(erreur);
			
		}
	});
})