if (InputPressed(INPUT_VERB.INVENTORY)) {
  inventory = !inventory
}
selectedItem = -1;
if (inventory) {

  for (var i = 0; i < array_length(inv); i++) {
      var _p = 160;
      var _x = width/2;
	  var _y = height/2;
	  var _xx = _x - _p;
	  var _yy = (_y - _p) + sep*i;
	  
	  if (mouse_x > _xx && mouse_x < _xx +10 && mouse_y > _yy && mouse_y < _yy + 10) {
	    selectedItem = i;
	  }
	}
	
  if selectedItem != -1 {
    if (InputPressed(INPUT_VERB.USE)) {
	  inv[selectedItem].effect();
    }
  }	
}