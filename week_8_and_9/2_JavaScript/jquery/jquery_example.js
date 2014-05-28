$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'grey'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
  var bodyElement = $('body')
 
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 $('h1').css({'color': 'orange', 'border': 'dotted', 'visibility': 'hidden'})
 $('.mascot').children('h1').html("Chorus Frogs!");


 
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
 $('img').on('mouseover', function(e){
 	e.preventDefault()
 	$(this).attr('src', 'http://www.beautifulwildlifegarden.com/wp-content/uploads/2011/10/BWG_frog3.jpg')
 });

$('img').on('mouseout', function(e){
	$(this).attr('src', 'dbc_logo.jpg')
});
 
 
//RELEASE 4 : Experiment on your own
 $('img').css({'width': '30%','margin-left': 'auto','margin-right': 'auto', 'display': 'block'})
 $('h1').css({'text-align': 'center'})
 
 $('img').click(function(){
 	$('h1').css({'visibility':'visible'})
 	$('.left').css({'width': '10px', 'height': '10px', 'background-color':'white'})
 	$('.right').css({'width': '10px', 'height': '10px', 'background-color':'white', 'float': 'right'})
 });

 $('.left').mouseenter(function(){
 	$('img').animate({opacity: '0'}, 'slow');
 });

$('.left').mouseleave(function(){
 	$('img').animate({opacity: '1'}, 'slow');
 });



 $('.right').mouseenter(function(){
 	$('h1').animate({'border-width': '100px'}, 'slow');
 });
 
 $('.right').mouseleave(function(){
 	$('h1').animate({'border-width': '5px'}, 'slow');
 });

 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
