$(window).load(function(){

	

	$('.hover').mousemove(function(location)
	{
	
		$('#hoverdiv').show();
		$('#hoverdiv').css('top',location.clientY+1).css('left',location.clientX+1)
	})
	
	.mouseout(function()
	{ $('#hoverdiv').hide();
	});
});



// global heightObjs for computed heights
var heightObjs = new Array(  );

// find computed height and set all to zero
function setHeight(objName) {
   var obj = document.getElementById(objName);
   var height = aaGetStyle(obj,'height');
   heightObjs[objName] = Math.round(parseFloat(height.substr(0,height.length-2)));
   obj.style.height="0";
}

// set up panels
aaManageEvent(window,"load", function(  ) {

   setHeight('one');
   setHeight('two');
   setHeight('three');
   setHeight('four');
   setHeight('five');
   setHeight('six');
   setHeight('seven');
   setHeight('eight');
   setHeight('nine');
   setHeight('ten');
   
   document.getElementById('oneplus').style.display='block';
   document.getElementById('twoplus').style.display='block';
   document.getElementById('threeplus').style.display='block';
   document.getElementById('fourplus').style.display='block';
   document.getElementById('fiveplus').style.display='block';
   document.getElementById('sixplus').style.display='block';
   document.getElementById('sevenplus').style.display='block';
   document.getElementById('eightplus').style.display='block';
   document.getElementById('nineplus').style.display='block';
   document.getElementById('tenplus').style.display='block';
});


// transitionally expand the item
function expand(newItem) {

   document.getElementById(newItem + 'plus').style.display='none';
   document.getElementById(newItem + 'negative').style.display='block';
   var currentItem = document.getElementById(newItem);

   // find increment based on computed height divided by loop count of 20
   var incr = heightObjs[newItem] / 20;
   for (var i=0; i < 20; i++) {
      var val = (i+1) * incr;
      var func = "adjustItem("+val+",'"+newItem+"')";
      setTimeout(func,(i+1)*30);
   }
}
// transitionally collapse the item
function collapse(newItem) {
   document.getElementById(newItem + 'plus').style.display='block';
   document.getElementById(newItem + 'negative').style.display='none';
   var currentItem = document.getElementById(newItem);

   // find decrement based on computed height divided by a loop count of 20
   var decr = heightObjs[newItem] / 20;
   for (var i=0; i<20; i++) {
      var val = heightObjs[newItem]-(decr*(i+1));
      var func = "adjustItem("+val+",'"+newItem+"')";
      setTimeout(func,(i+1)*30);
   }
}

// individual adjustment
function adjustItem(val, newItem) {
    document.getElementById(newItem).style.height=val + "px";
}


