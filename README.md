# grid-X
Grid game using the Microchip PIC18F87K22 microprocessor

<pre>
POINTS: ___

  1 2 3 4 5 6
1 W W W W W W
2 W I W - G W
3 W - W - - W
4 W - I F - W
5 W X - - - W
6 W W W W W W
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
3. Walking into the fire (F) will lose you 6 points
