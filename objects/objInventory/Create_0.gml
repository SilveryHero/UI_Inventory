inventory = false;
//constructor for items, using name, description, sprite and effect as parameters
function Item (_name, _desc, _spr, _effect) constructor
 {
  name = _name;
  description = _desc;
  sprite = _spr;
  effect = _effect;
 }
 

//Item List  
global.itemList = 
  {

  axe : new Item(  
    "Axe",
    "[fntDesc]Used for cutting down trees",
    sprAxe,
	 
	function() {
	  show_debug_message("The Axe was used")
	}
  ),

  rod : new Item(  
     
    "Rod",
	"[fntDesc]Used for fishing",
    sprRod,
	function() {
	  show_debug_message("The Rod was used")
	}
  ),

  shovel : new Item(
  
    "Shovel",
    "[fntDesc]Used for digging",
    sprShovel,
	function() {
	  show_debug_message("The Shovel was used");
	}
  ),

  sword : new Item(
    "Sword",
	"[fntDesc]Used for attacking",
    sprSword,
	function() {
      show_debug_message("The Sword was used");
	}
  ),
  
  plant : new Item(
    "Plant",
	"[fntDesc][c_red]Single use[/c]; Restore Health",
    sprPlant,
	function() {
      show_debug_message("The Plant was eaten");
	  array_delete(inv, selectedItem, 1);
	}
  )
  }
  
//create inventory
inv = array_create(0)
array_push (inv, global.itemList.axe)
array_push (inv, global.itemList.rod)
array_push (inv, global.itemList.shovel)
array_push (inv, global.itemList.sword)
array_push (inv, global.itemList.plant)
selectedItem = -1;

//drawing positions 

sep = 24
width = room_width/2;
height = room_height/2;