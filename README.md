# grid-X
Grid game using the Microchip PIC18F87K22 microprocessor.

### Initialisation instructions
```
$ git clone https://github.com/ricktjwong/grid-X.git
```
MPLAB X IDE is recommended for viewing and building the project.

```
Linux
$ wget https://www.microchip.com/mplabx-ide-linux-installer

Windows
$ wget https://www.microchip.com/mplabx-ide-windows-installer

Mac
$ wget https://www.microchip.com/mplabx-ide-osx-installer
```

### Repository branches
There are three branches - `master`, `helper-modules_python` and `q-learning_python`.
1. `master` contains the main assembly code
2. `q-learning_python` handles the Grid-X implementation in python
3. `helper-modules_python` has the Python scripts to handle map generation and png to hexadecimal voltage convertion

### Top-level directory layout
The folders represent logical folders, which will only be organised in MPLAB's IDE.
<pre>
.
└── main.asm                   # Main program which handles setup and the display of screens depending on game state
└── constants.inc              # Contains the constant values such as item reward, movement penalty etc.
└── Graphics                   # Contains the graphics files for output onto an oscilloscope in x-y mode
    ├── digits                 # Graphics files for displaying digits 0-9 for game scores
    ├── grid_sprites           # Graphics the grid sprites (wall, player, item, fire, goal)
    ├── splash_screens         # Graphics for start screen and end screen
    ├── graphics.asm           # Logic to handle the checks and rendering of graphics
    ├── score_display.asm      # Decomposition of a two's complement number to the digits for display
└── Keypad
    ├── actions.asm            # Handles checks of map element interaction with player movement, update scores accordingly
    ├── keypad.asm             # Handles key being pressed and lifted and do checks
    ├── keypad_editor.asm      # Handles keypad checks for the map builder mode which has different controls
    ├── keypad_input.asm       # Abstracted subroutine which handles recording of keypad bytes
└── Qlearning
    ├── agent.asm              # Reinforcement learning agent, handles the updating of Q-table based on Q-learning algorithm
    ├── findmax.asm            # Subroutine to find maximum number in a list, returns number and its index in list
    ├── q_table.asm            # Initialises a 49x4 table of Q-values which is used by the agent to make decisions
    ├── q_learning_mode.asm    # Checks the various game states to activate Q-learning mode for different levels
└── Tables                     # Initialises tables for different levels and the mapmatrix for 7x7 or 9x9 map size
└── Utils
    ├── delay.asm              # Subroutines to introduce small or large delays
    └── interrupt.asm          # Initialises interrupts for graphics rendering and keypad checks
</pre>

### Game play
Grid-X has three different levels. The aim of the game is to move the player from the start position to the goal, accumulating the maximum number of points possible.
<pre>
Level 1
Score: ___

  1 2 3 4 5 6 7
1 W W W W W W W
2 W - I - - G W
3 W - - - - W W
4 W W W W - - W
5 W - I - W - W
6 W X - - - - W
7 W W W W W W W
</pre>

**Legend:**\
W - wall\
I - item\
G - goal\
X - character\
F - fire

**Goal:**\
Move the character X from the start point to the goal (G), accumulating as many points as possible.

**Rules**:
1. Each movement incurs a penalty of 3 points
2. Each item (I) collected will gain you 9 points
3. Walking into the fire (F) will lose you 10 points

### Features

Grid-X has a normal game play mode, a map builder mode, and a Q-learning mode where the agent uses Q-learning to find the optimal path to reach the goal.
