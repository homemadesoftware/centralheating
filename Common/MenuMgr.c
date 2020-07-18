
#include "../Common/HardwareAbstraction.h"
#include "MenuMgr.h"
#include <stdlib.h>
#include <stdio.h>


// Menu Definitions
// Used for defining menus. the last element should be all zeros
typedef struct tagMenuDef
{
    char *text;
    char parent;
    char id;
} MenuDef;


MenuDef MenuDefinitions[MAX_MENU_ITEMS];
int MenuDefinitionCounter;

// Menu control structure, declared inside the menu manager
typedef struct tagMenuControl
{
    char currentSelectedMenuIndex;
    char navStack[MAX_MENU_DEPTH];
    char navStackPtr;
    char scrollPos;
} MenuControl;

// Global, one and only controller
MenuControl MenuController;


// Gets the extent of the menu items
void GetMenuItemExtent(int menuItem, int *pStartPos, int *pEndPos);
void RenderActiveMenu(char *pDisplay, int windowStart, int windowEnd);
int IsParentMenu();
int IsGoBack();
void GoSubMenu();
void GoRight();
void GoLeft();
void GoBackUp();
void TerminateMenuDefinitions();


// Initialise Menu Definitions
void InitialiseMenuDefinitions()
{
    MenuDefinitionCounter = 0;
    TerminateMenuDefinitions();
}

void TerminateMenuDefinitions()
{
    MenuDefinitions[MenuDefinitionCounter].id = 0;
    MenuDefinitions[MenuDefinitionCounter].text = 0;
    MenuDefinitions[MenuDefinitionCounter].parent = 0;
}

void AddMenuDefinition(char *text, int parent, int id)
{
    MenuDefinitions[MenuDefinitionCounter].id = id;
    MenuDefinitions[MenuDefinitionCounter].text = text;
    MenuDefinitions[MenuDefinitionCounter].parent = parent;

    ++MenuDefinitionCounter;
    if ((MenuDefinitionCounter + 1) > MAX_MENU_ITEMS)
    {
        pCrashDump("Menu item count");
    }

    TerminateMenuDefinitions();
}


// Inits the controller
void InitialiseMenuController()
{
    MenuController.currentSelectedMenuIndex = 0;
    MenuController.navStack[0] = 0;
    MenuController.navStackPtr = 0;
    MenuController.scrollPos = 0;
    HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
}
  

void MenuNavigation(char navType)
{
    switch (navType)
    {
        case NAVTYPE_RIGHT :
            GoRight();
            break;

        case NAVTYPE_LEFT :
            GoLeft();
            break;

        case NAVTYPE_SELECTITEM :
            // find the sub menu of the current parent
            if (IsParentMenu())
            {
                GoSubMenu();
            }
            else if (IsGoBack())
            {
                GoBackUp();
            }
            else
            {
                HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_COMMAND);
            }
            break;

        
    }
}

   

void RenderActiveMenu(char *pDisplay, int windowStart, int windowEnd)
{
    #define COPY_IF_IN_WINDOW(DEST, CH, POS, WSTART, WEND)  if (POS >= WSTART && POS < WEND) { *DEST++ = CH;  *DEST = 0; }

    int currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
    int i;
    char *pTemp;
    char ch;
    int currentPos;

    currentPos = 0;
    for (i = 0; MenuDefinitions[i].text != 0; ++i)
    {
        if (MenuDefinitions[i].parent == currentParent)
        {
            if (i == MenuController.currentSelectedMenuIndex)
            {
                ch = '[';
            }
            else
            {
                ch = ' ';
            }
            COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
            ++currentPos;
        
            for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
            {
                COPY_IF_IN_WINDOW(pDisplay, *pTemp, currentPos, windowStart, windowEnd);
                ++currentPos;
            }
        
            if (i == MenuController.currentSelectedMenuIndex)
            {
                ch = ']';
            }
            else
            {
                ch = ' ';
            }
            COPY_IF_IN_WINDOW(pDisplay, ch, currentPos, windowStart, windowEnd);
            ++currentPos;
        }
   }
}

void GetMenuItemExtent(int menuItem, int *pStartPos, int *pEndPos)
{
    int currentParent;
    int i;
    int currentPos;
    char *pTemp;

    *pStartPos = 0;
    *pEndPos = 0;
    currentPos = 0;

    currentParent = MenuDefinitions[menuItem].parent;

    for (i = 0; MenuDefinitions[i].text != 0; ++i)
    {
        if (MenuDefinitions[i].parent == currentParent)
        {
            if (i == menuItem)
            {
                *pStartPos = currentPos;
            }
            currentPos++; 
            
        
            for (pTemp = MenuDefinitions[i].text; *pTemp; ++pTemp)
            {
                currentPos++;
            }
        
            if (i == menuItem)
            {
                *pEndPos = currentPos;
            }
            currentPos++;
        }
    }
}

void RenderMenuOnBuffer(char *pBuffer, int maxLength)
{
    *pBuffer = 0;
    
    // See where the selected item is
    if (MenuController.currentSelectedMenuIndex >= 0)
    {
        int startPos;
        int endPos;
        
        GetMenuItemExtent(MenuController.currentSelectedMenuIndex, &startPos, &endPos);
        

        
        if (startPos < MenuController.scrollPos)
        {
            MenuController.scrollPos = startPos;
        }
        else if (endPos > MenuController.scrollPos + maxLength)
        {
            MenuController.scrollPos = endPos - maxLength + 1;
        }

        RenderActiveMenu(pBuffer, MenuController.scrollPos, MenuController.scrollPos + maxLength);
    }
}

int IsParentMenu()
{
    int i;
    for (i = 0; MenuDefinitions[i].text != 0; ++i)
    {
        if (MenuDefinitions[i].parent == MenuDefinitions[MenuController.currentSelectedMenuIndex].id)
        {
            return 1;
        }
    }
    return 0;
}

int IsGoBack()
{
    return MenuDefinitions[MenuController.currentSelectedMenuIndex].id == MENU_END_SENTINEL;
}

void GoSubMenu()
{
    int i;
    for (i = 0; MenuDefinitions[i].text != 0; ++i)
    {
        if (MenuDefinitions[i].parent == MenuDefinitions[MenuController.currentSelectedMenuIndex].id)
        {
            HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_SUBMENUENTER);
            // Push current pos to stack
            MenuController.navStack[MenuController.navStackPtr++] = MenuController.currentSelectedMenuIndex;
            MenuController.currentSelectedMenuIndex = i;
            HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
            break;
        }
    }
}

void GoRight()
{
    int i;
    int currentParent;
    
    currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
    i = MenuController.currentSelectedMenuIndex + 1;
    while (MenuDefinitions[i].text != 0)
    {
        if (MenuDefinitions[i].parent == currentParent)
        {
            MenuController.currentSelectedMenuIndex = i;
            HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
            break;
        }
        else
        {
            i++;
        }
    }
            
}

void GoLeft()
{
    int i;
    int currentParent;
    
    currentParent = MenuDefinitions[MenuController.currentSelectedMenuIndex].parent;
    i = MenuController.currentSelectedMenuIndex - 1;
    while (i >= 0)
    {
        if (MenuDefinitions[i].parent == currentParent)
        {
            MenuController.currentSelectedMenuIndex = i;
            HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
            break;
        }
        else
        {
            i--;
        }
    }
           
}

void GoBackUp()
{
	MenuController.currentSelectedMenuIndex = 0;
    // Go one level up
    if (MenuController.navStackPtr > 0)
    {
        MenuController.currentSelectedMenuIndex = MenuController.navStack[--MenuController.navStackPtr];
        HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_SUBMENUEXIT);
        HandleMenuCommand(MenuDefinitions[MenuController.currentSelectedMenuIndex].id, MENU_HOVERED);
    }
}
