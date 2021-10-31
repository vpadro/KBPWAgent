$(window).on("load", function() {
	$(document).on( 'click', '#search-buttom-id', function () {searchClient(this) });

	
});

function searchClient(_this){
console.log('searchClient');
	
	$.ajax({
		type: "POST",
		url : 'searchClient',
		
		data : {
			textSearch: 'sss'
		},
		datatype: 'json',
		success : function(responseText) {
			var data =  JSON.parse(responseText); 
			console.log(data)
		   
		},
		error : function(responseText) {
			
		}
	});


}

