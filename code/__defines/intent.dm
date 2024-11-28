// Intent decls for use in set_intent()
#define I_HELP   /decl/intent/help
#define I_DISARM /decl/intent/disarm
#define I_GRAB   /decl/intent/grab
#define I_HARM   /decl/intent/harm

// Intent bitflags for use in check_intent()
#define I_FLAG_HELP   BITFLAG(0)
#define I_FLAG_DISARM BITFLAG(1)
#define I_FLAG_GRAB   BITFLAG(2)
#define I_FLAG_HARM   BITFLAG(3)

//NOTE: INTENT_HOTKEY_* defines are not actual intents!
//they are here to support hotkeys
#define INTENT_HOTKEY_LEFT  "left"
#define INTENT_HOTKEY_RIGHT "right"
