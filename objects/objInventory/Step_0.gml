//open/close inventory
if (InputPressed(INPUT_VERB.INVENTORY)) {
  inventory = !inventory
}
//clear item selection
selectedItem = -1;
if (inventory) {
  cursor_sprite = sprHandOpen01;
  for (var i = 0; i < array_length(inv); i++) {
    var _p = 160;
    var _x = width/2;
	var _y = height/2;
	var _xx = _x - _p;
	var _yy = (_y - _p) + sep*i;
	  
	if (mouse_x > _xx && mouse_x < _xx +10 && mouse_y > _yy && mouse_y < _yy + 10) {
	  selectedItem = i;
	  cursor_sprite = sprHandClosed02
	}
  }
//using selected item
  if selectedItem != -1 {
    if (InputPressed(INPUT_VERB.USE)) {
	  inv[selectedItem].effect();
    }
  }	
} else {
    cursor_sprite = sprCursor01;
}