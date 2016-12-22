/**
 * 
 */
/************************************************user nav-click***********************************************************/

/************************************************user nav-click tab-click*************************************************/
var $content = $("#center>.content");
var $content = $("#center");
var $tabAnchor = $('#tab').find('a');

$tabAnchor.each(function(index, anchor){
	var tabAnchor = $tabAnchor[index];
	tabAnchor.addEventListener('click', function(e){
		e.preventDefault();
		var href = tabAnchor.attributes['href'].value;
		console.log('tabload ' + href );
		$content.load(href);
	})
})

