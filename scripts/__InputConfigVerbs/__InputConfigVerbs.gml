function __InputConfigVerbs()
{
    enum INPUT_VERB
    {
        //Add your own verbs here!
        UP,
        DOWN,
        LEFT,
        RIGHT,
        ACCEPT,
        CANCEL,
        INVENTORY,
        USE,
        PAUSE,
    }
    
    enum INPUT_CLUSTER
    {
        //Add your own clusters here!
        //Clusters are used for two-dimensional checkers (InputDirection() etc.)
        NAVIGATION,
    }
    
    if (not INPUT_ON_SWITCH)
    {
        InputDefineVerb(INPUT_VERB.UP,        "up",         [vk_up,    "W"],    [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,      "down",       [vk_down,  "S"],    [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,      "left",       [vk_left,  "A"],    [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,     "right",      [vk_right, "D"],    [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.ACCEPT,    "accept",      vk_enter,            gp_face1);
        InputDefineVerb(INPUT_VERB.CANCEL,    "cancel",      vk_backspace,        gp_face2);
        InputDefineVerb(INPUT_VERB.INVENTORY, "inventory",   [vk_control, "I"],   gp_face3);
        InputDefineVerb(INPUT_VERB.USE,       "use",         [vk_space, mb_left],  gp_face4);
        InputDefineVerb(INPUT_VERB.PAUSE,     "pause",       vk_escape,           gp_start);
    }
    else //Flip A/B over on Switch
    {
        InputDefineVerb(INPUT_VERB.UP,        "up",        undefined, [-gp_axislv, gp_padu]);
        InputDefineVerb(INPUT_VERB.DOWN,      "down",      undefined, [ gp_axislv, gp_padd]);
        InputDefineVerb(INPUT_VERB.LEFT,      "left",      undefined, [-gp_axislh, gp_padl]);
        InputDefineVerb(INPUT_VERB.RIGHT,     "right",     undefined, [ gp_axislh, gp_padr]);
        InputDefineVerb(INPUT_VERB.ACCEPT,    "accept",    undefined,   gp_face2); // !!
        InputDefineVerb(INPUT_VERB.CANCEL,    "cancel",    undefined,   gp_face1); // !!
        InputDefineVerb(INPUT_VERB.INVENTORY, "inventory", undefined,   gp_face3);
        InputDefineVerb(INPUT_VERB.USE,       "use",       undefined,   gp_face4);
        InputDefineVerb(INPUT_VERB.PAUSE,     "pause",     undefined,   gp_start);
    }
    
    //Define a cluster of verbs for moving around
    InputDefineCluster(INPUT_CLUSTER.NAVIGATION, INPUT_VERB.UP, INPUT_VERB.RIGHT, INPUT_VERB.DOWN, INPUT_VERB.LEFT);
}