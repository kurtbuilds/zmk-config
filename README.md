# Instructions

## Bill of Materials
- Rubber bumpers as feet: [Link](https://www.amazon.com/gp/product/B07R17T68B/ref=ppx_yo_dt_b_search_asin_title?ie=UTF8&psc=1)
- kailh gchocs
- keycaps
- label printer paper
- 1mm thick foam
- Krazy glue
- 2 batteries
- 2 OLED screens
- 2 nice!nano
- pcb
- diodes
- reset buttons
- (2) pin brackets for nice!nano
- (2) pin brackets for OLED (1x4)
- OLED
- Electrical tape

### Tools

- soldering iron

## PCB Print Instructions
1. Get lead free, or better, gold, plating.


## Build Instructions
1. Confirm you have all bill of materials
2. Cut 128 pieces of foam. (64x2)
3. Do the key caps (64):
   1. Open it up.
   2. Tape the sides.
   3. Glue the foam.
   4. Lube it up.
   5. Close it up.
4. Do the soldering
   1. Solder the diodes. 
   2. Solder the reset switch.
   3. Solder the brackets.
   4. Solder MCU on the bracket.
   5. Electrical tape on top of MCU to separate it from OLED.
   6. 


## Extension

1. Get 2 spacers.
2. Get an acrylic shape that will cover the OLED and fit the board.
3. Glue 2 spacers to the board.
4. Screw in the acrylic cover.

## Flashing to keyboard

1. Push to github.
2. Wait for Github actions
3. Download the UF2 file.
5. Plug in the keyboard via USB-C.
4. Double click the reset button on the keyboard.
6. Drag the UF2 file onto the keyboard.
7. Done!

Only the left side needs to be flashed if you're only changing the keymap.

See https://zmk.dev/docs/user-setup for more details.

## Troubleshooting

https://zmk.dev/docs/troubleshooting

Sections:

- Split keyboard halves unable to pair

# Outstanding Questions
 
- Do I test it without soldering before I solder? Does that even work?
  - How do I do it?
- How do I put the OLED on top of the MCU?
- Double check: Do I need to worry about:
  - TRRS
  - P1,P2, R1, R2.
  - GND, LED, VCC
- Do I need a power button? Why not?
  - Yes, I do need a power button. Can I add it later? Use it wired for now? I think yes.
- Does the power button go where the LED is currently? Will it work if I don't have a power button?
  - Theoretically, it might work off USB C but then not work with battery.
- Will 110 mAh battery be large enough?

# Outstanding Work
- Finish the build instructions
- Finish the zmk_config repo
  - Specifically, 
    - Specifically, need to move the keymap to the new repo.


Lay out the PCBs so that there’s a left half and a right half. The columns of holes with a white border around it are
where you put the pins if you’re putting the controller in with components facing down, the other two columns are what I
ended up using for the nano with components facing up 

Put components facing down if in the white lines, facing up if NOT in white lines.


# Tweaks for a gen2
- Built in m2 screw holes to cover the OLED.
  - Add to build list
    - 4 screws
    - acrylic cover.
- You can move the thumb clusters a mm or two closer.



# Building it

Two options. 

1. Github actions
2.  checkout zmk alongside zmk-config, and then use -s to point to the zmk/app
    folder, while running it from the zmk_config folder? Correct, that should
    work OK. I am pretty sure you need to provide the config location to the
    command so there isn’t much benefit to being in the config folder.  I
    always build from zmk/app while pointing to the config folder with its full
    path, to pick up the keymap from there
