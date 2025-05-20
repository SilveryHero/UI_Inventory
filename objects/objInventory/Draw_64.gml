if (inventory) {
	
  var _p = 160;
  var _x = width/2;
  var _y = height/2;
  //draw inventory background
  draw_rectangle_colour(_x - _p, _y - _p, _x + _p, _y + _p, c_black, c_black, c_black, c_black, false);
  
  for (var i = 0; i < array_length(inv); i++) {

    var _xx = _x - _p;
    var _yy = _y - _p;
    var _col = c_white;
	//icon
    draw_sprite (inv[i].sprite, 0, _xx, _yy + sep*i)
	
	if (selectedItem == i) {
	  _col = c_yellow;
	}
	draw_set_color(_col);
	//name
    draw_text( _xx + 16, _yy + sep*i, inv[i].name);
	//reset to white
	draw_set_color(c_white);
	//description
	if (selectedItem == i) {
	  draw_text_scribble_ext( _xx + 16, _yy + sep*array_length(inv), inv[i].description, 250 );
	}	
  }
}