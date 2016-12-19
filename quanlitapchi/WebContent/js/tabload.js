/**
 * 
 */
/************************************************user nav-click***********************************************************/

/************************************************user nav-click tab-click**************************************************************/
var $content = $("#center");

var $tabAnchor = $('#tab').find('a');

$tabAnchor.each(function(i, tabAnchor){
	tabAnchor.addEventListener('click', function(ee){
		ee.preventDefault();
		var tabHref = tabAnchor.attributes['href'].value;
		console.log('tabload ' + tabHref );
		$content.load(tabHref);
	})
})
/******************************************User_homepage************************************************************/
var btnEdit = $('.btnEdit');
var btnCancel = $('.btnCancel');
var btnSave = $('.btnSave');
var btnSubmit = $('.btnSubmit');
var $form = $('#form_information');
/*function checkValid() {
	// For each country, defines the pattern that the ZIP has to follow
	var emailCons = '/^[-a-z0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/i';
	var AgeCons = '/^[0-9]+$/'
	// Read the country id
	var country = document.getElementById("Country").value;

	// Get the NPA field
	var ZIPField = document.getElementById("ZIP");

	// Build the constraint checker
	var constraint = new RegExp(constraints[country][0], "");
	console.log(constraint);


	// Check it!
	if (constraint.test(ZIPField.value)) {
		// The ZIP follows the constraint, we use the ConstraintAPI to tell it
		ZIPField.setCustomValidity("");
	}
	else {
		// The ZIP doesn't follow the constraint, we use the ConstraintAPI to
		// give a message about the format required for this country
		ZIPField.setCustomValidity(constraints[country][1]);
	}
}*/
btnEdit.on('click', function(){
	// ẩn hiện btn;
	$(this).siblings('button').show();
	$(this).hide();
	btnSubmit.attr('disabled', 'disabled');
	// đổi label thành input type
	var panel_1 = $(this).closest('.panel_1');	
	if(panel_1.hasClass('panel_1')){
		$('#browsePic').removeAttr('disabled');
		// lấy information
		var $inform = $('#information').find('.title');
		$inform.each(function(index, element){
			// element == this
			// tạo một input element
			var label = $inform[index];
			var title = label.getAttribute('name');
			var span = label.getElementsByTagName('span');
			var input =  label.getElementsByTagName('input');
			input[0].value = span[0].innerText;
			span[0].setAttribute('stt', 'hidded');
			input[0].setAttribute('stt', 'none');
		});
	}
	else{
		var panel_3 = $(this).closest('.panel_3');
		if(panel_3.hasClass('panel_3')){			
			var textarea = panel_3.find('textarea');
			textarea.removeAttr('disabled')
		}
	}

});
btnCancel.on('click', function(){

	// ẩn hiện btn
	btnSubmit.removeAttr('disabled', 'disabled');
	$(this).siblings('.btnEdit').show();
	$(this).hide();
	// đổi lại label thành input nếu là panel_1
	var panel_1 = $(this).closest('.panel_1');	
	if(panel_1.hasClass('panel_1')){
		$('#browsePic').attr('disabled', 'disabled');
		// lấy information
		var $inform = $('#information').find('.title');
		$inform.each(function(index, element){
			// element == this
			// tạo một input element
			var label = $inform[index];
			var title = label.getAttribute('name');
			var span = label.getElementsByTagName('span');
			var input =  label.getElementsByTagName('input');
			span[0].innerText = input[0].value;
			span[0].setAttribute('stt', 'none');
			input[0].setAttribute('stt', 'hidded');
		});
	}
	else{
		// mở text area ra nếu là panel_3
		var panel_3 = $(this).closest('.panel_3');
		if(panel_3.hasClass('panel_3')){			
			var textarea = panel_3.find('textarea');
			textarea.attr('disabled', 'disabled');
		}
	}

});
/******************************************User_Save**************************************************************/
$('.btnSave').click(function(){

});