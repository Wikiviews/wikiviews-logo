#!/usr/bin/python3

from itertools import product
import sys

# Outputs the imagemagick commands for rendering the logo at a specified DP size for the specified DPI screen densities

def measureToCommand (size, density):
    sizeInPx = int(round(size * density / 160))

    return "mkdir -p exports/png/" + str(size) + "dp && inkscape -z -e exports/png/" + str(size) + "dp/logo-" + str(sizeInPx) + "px-" + str(size) + "dp@" + str(density) + "dpi.png -w " + str(sizeInPx) + " -h" + str(sizeInPx) + " exports/svg/logo.svg "

# sizes in dp either from command line or from default setup
sizes = []
if len(sys.argv) > 1 :
    sizes = map(lambda arg: int(arg), sys.argv[1:])
else:
    sizes = []

# screen densities in DPI
densities = [72, 96, 130, 160, 210, 240, 320, 400, 480, 640]

commands = map(lambda measure: measureToCommand(measure[0], measure[1]) ,product(sizes, densities))

for c in commands:
    print(c)

