const btn = document.querySelector(".goToTopButton"); 

const top2 = function (){
	
	window.scrollTo({top: 0, left: 0, behavior:"smooth"})
}
btn.addEventListener('click',top2);
