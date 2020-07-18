// Menu constants
#define MAX_MENU_DEPTH          3
#define MAX_MENU_ITEMS          40

// Nav types
#define NAVTYPE_LEFT            1
#define NAVTYPE_RIGHT           2
#define NAVTYPE_SELECTITEM      3

// Menu events
#define MENU_HOVERED			1 // Menu is hovered on, but not select
#define MENU_COMMAND			2 // Menu is selected and a command is to be executed
#define MENU_SUBMENUENTER		3 // Sub menu is entered
#define MENU_SUBMENUEXIT		4 // Sub menu is exited

#define MENU_END_SENTINEL		(1)


// Menu callback, caller must implement this
extern void HandleMenuCommand(int itemId, int eventType);

// Initialises definitions
void InitialiseMenuDefinitions();

// Adds menu definition
void AddMenuDefinition(char *text, int parent, int id);

// Initialises one and only menu controller
void InitialiseMenuController();


// Performs menu navigation
void MenuNavigation(char navType);

// Renders the menu on the buffer, included scrolling
void RenderMenuOnBuffer(char *pBuffer, int maxLength);
