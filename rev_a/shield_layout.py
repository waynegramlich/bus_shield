#!/usr/bin/env python

import svgwrite
from math import *

class Canvas:
    def __init__(self, file_name, x_size = 100, y_size = 100, extras = False):
	assert isinstance(file_name, str)
	assert isinstance(extras, bool)

	drawing = svgwrite.Drawing(file_name,
	  size = ("{0}mm".format(x_size), "{0}mm".format(y_size)),
	  viewBox = "0 0 {0} {1}".format(x_size, y_size), profile="tiny")

	self._drawing = drawing
	self._dx = 0.0
	self._dy = 0.0
	self._extras = extras
	self._holes = []
	self._pcb_x = 3.00	# PCB X offset (inches)
	self._pcb_y = 3.00	# PCB Y offset (inches)
	self._scale = 1.0
	self._y_offset = 200	# SVG Y origin offset (mm)

    def rectangle(self, x, y, length, width, rotate, color, label = ""):
	assert isinstance(x, int) or isinstance(x, float)
	assert isinstance(y, int) or isinstance(y, float)
	assert isinstance(length, int) or isinstance(length, float)
	assert isinstance(width, int) or isinstance(width, float)
	assert isinstance(rotate, int) or isinstance(rotate, float)
	assert isinstance(color, str)
	assert isinstance(label, str)

	half_length = length / 2.0
	half_width = width / 2.0
	angle1 = atan2( half_width,  half_length)
	angle2 = atan2( half_width, -half_length)
	angle3 = atan2(-half_width, -half_length)
	angle4 = atan2(-half_width,  half_length)
	hypotenuse = sqrt(half_length * half_length + half_width * half_width)

	x1 = x + hypotenuse * cos(angle1 + rotate)
	y1 = y + hypotenuse * sin(angle1 + rotate)
	x2 = x + hypotenuse * cos(angle2 + rotate)
	y2 = y + hypotenuse * sin(angle2 + rotate)
	x3 = x + hypotenuse * cos(angle3 + rotate)
	y3 = y + hypotenuse * sin(angle3 + rotate)
	x4 = x + hypotenuse * cos(angle4 + rotate)
	y4 = y + hypotenuse * sin(angle4 + rotate)

	if not self._extras:
	    color = "black"
	self.line(x1, y1, x2, y2, color = color)
	self.line(x2, y2, x3, y3, color = color)
	self.line(x3, y3, x4, y4, color = color)
	self.line(x4, y4, x1, y1, color = color)

    def hole(self, x, y, diameter, color = "black", label = ""):
	assert isinstance(x, int) or isinstance(x, float)
	assert isinstance(y, int) or isinstance(y, float)
	assert isinstance(diameter, int) or isinstance(diameter, float)
	assert isinstance(color, str)
	assert isinstance(label, str)

	drawing = self._drawing
	dx = self._dx
	dy = self._dy
	holes = self._holes
	pcb_x = self._pcb_x
	pcb_y = self._pcb_y
	scale = self._scale
	y_offset = self._y_offset

	px = x * scale + dx
	py = y_offset - (y * scale + dy)

	drawing.add(drawing.circle(center = (px, py),
	  r = diameter/2.0 * scale, stroke = "black", fill = "white"))

	#print("y={0} scale={1} dy={2}".format(y, scale, dy))
	xx = pcb_x + ((x * scale + dx) - 100) / 25.4
	yy = pcb_y - ((y * scale + dy) - 100) / 25.4
	holes.append( [xx, yy] )
	if label != "":
	    print("{0}: center x/y=({1:.3f},{2:.3f}) diam={3:.3f}".format(
	      label, x, y, diameter))

    def holes_average(self, label):
	assert isinstance(label, str)

	# If *label* is not empty, print out the average of *holes*:
	if label != "":
	    holes = self._holes
	    holes_size = len(holes)

	    x_sum = 0.0
	    y_sum = 0.0
	    for hole in holes:
		x_sum += hole[0]
		y_sum += hole[1]
	    x_average = x_sum / holes_size
	    y_average = y_sum / holes_size
	    print("{0}: ({1}, {2})".format(label, x_average, y_average))

	self._holes = []
	

    def line(self, x1, y1, x2, y2, color = "black", label = ""):
	assert isinstance(x1, int) or isinstance(x1, float)
	assert isinstance(y1, int) or isinstance(y1, float)
	assert isinstance(x2, int) or isinstance(x2, float)
	assert isinstance(y2, int) or isinstance(y2, float)
	assert isinstance(color, str)
	assert isinstance(label, str)

	#print("Canvas.line({0}, {1}, {2}, {3}, {4})". \
	#  format(x1, y1, x2, y2, color))

	drawing = self._drawing
	dx = self._dx
	dy = self._dy
	pcb_x = self._pcb_x
	pcb_y = self._pcb_y
	scale = self._scale	
	y_offset = self._y_offset

	px1 = x1 * scale + dx
	py1 = y_offset - (y1 * scale + dy)
	px2 = x2 * scale + dx
	py2 = y_offset - (y2 * scale + dy)
	p1 = (px1, py1)
	p2 = (px2, py2)
	drawing.add(drawing.line(p1, p2, stroke=color))

	if label != "":
            xx1 = pcb_x + ((x1 * scale + dx) - 100) / 25.4
            yy1 = pcb_y - ((y1 * scale + dy) - 100) / 25.4
            xx2 = pcb_x + ((x2 * scale + dx) - 100) / 25.4
            yy2 = pcb_y - ((y2 * scale + dy) - 100) / 25.4
	    print("{0}: ({1:.6f}, {2:.6f}) - ({3:.6f}, {4:.6f})".format(label,
	      xx1, yy1, xx2, yy2))

    def origin_scale(self, dx, dy, scale):
	self._dx = dx
	self._dy = dy
	self._scale = scale

    def save(self):
	self._drawing.save()

def sonar_draw(sonar, canvas, x, y, extras, color):
    # Check argument types:
    assert isinstance(sonar, dict)
    assert isinstance(canvas, Canvas)
    assert isinstance(x, float)
    assert isinstance(y, float)
    assert isinstance(extras, bool)
    assert isinstance(color, str)

    # Grab values from *sonar*:
    sonar_dx = sonar["dx"]
    sonar_dy = sonar["dy"]

    # Draw the sonar rectangle:
    if extras:
	canvas.rectangle(x, y, sonar_dx, sonar_dy, 0.0, color=color)

    # Draw mounting holes:
    hole_diameter = 2.25
    hole_dx = sonar_dx - 2.75
    hole_dy = sonar_dy - 2.75
    canvas.hole(x - hole_dx / 2.0, y + hole_dy / 2.0, hole_diameter)
    canvas.hole(x + hole_dx / 2.0, y - hole_dy / 2.0, hole_diameter)

    # Draw connector gap:
    connector_dx = .1 * 25.4
    connector_dy = .4 * 25.4
    canvas.rectangle(x - (sonar_dx / 2.0 - connector_dx / 2.0), y,
      connector_dx, connector_dy, 0.0, color=color)

    # Draw the crystal opening:
    crystal_dx = 5.50
    crystal_dy = 11.00
    canvas.rectangle(x + (sonar_dx / 2.0 - crystal_dx / 2.0), y,
      crystal_dx, crystal_dy, 0.0, color=color)

    # Draw sonar transceiver holes:
    inner_edge_dy = 11.40
    outer_edge_dy = 43.20
    diameter = (outer_edge_dy - inner_edge_dy) / 2.0
    radius = diameter / 2.0
    diameter_extra = diameter + 1.0
    canvas.hole(x, y + (inner_edge_dy / 2.0 + radius),
      diameter_extra, color=color)
    canvas.hole(x, y - (inner_edge_dy / 2.0 + radius),
      diameter_extra, color=color)

def holder_draw(holder, sonar, bracket, canvas, x, y, extras, color):
    # Check argument types:
    assert isinstance(holder, dict)
    assert isinstance(sonar, dict)
    assert isinstance(bracket, dict)
    assert isinstance(canvas, Canvas)
    assert isinstance(x, float)
    assert isinstance(y, float)
    assert isinstance(extras, bool)
    assert isinstance(color, str)

    # Grab some values (note, we rotate by 90 degrees => swap dx and dy):
    bracket_dy = bracket["dx"]
    bracket_dx = bracket["dy"]

    # Some sonar values:
    sonar_dx = sonar["dx"]
    sonar_dy = sonar["dy"]

    # Draw the holder:
    holder_dx = sonar_dx + 10.00
    holder_dy = sonar_dy + bracket_dy + 10.00

    # Draw the holder outline:
    canvas.rectangle(x, y, holder_dx, holder_dy, 0.0, color=color)

    # Draw the *sonar*:
    sonar_x = x
    sonar_y = y + holder_dy/2.0 - 5.0 - sonar_dy/2.0
    sonar_draw(sonar, canvas, sonar_x, sonar_y, extras, color)

    # Draw the bracket mounting rectangle:
    bracket_x = x
    bracket_y = y - holder_dy/2.0 + bracket_dy/2.0
    bracket_draw(bracket, canvas, bracket_x, bracket_y, -pi/2.0, extras, color)

def bracket_draw(bracket, canvas, x, y, angle, extras, color):
    # Verify argument types:
    assert isinstance(bracket, dict)
    assert isinstance(canvas, Canvas)
    assert isinstance(x, float)
    assert isinstance(y, float)
    assert isinstance(angle, float)
    assert isinstance(extras, bool)
    assert isinstance(color, str)

    # Grab some values:
    bracket_dx = bracket["dx"]
    bracket_dy = bracket["dy"]
    bracket_hole_offset = bracket["hole_offset"]
    bracket_hole_diameter = bracket["hole_diameter"]

    # Draw the *bracket* rectangle:
    if extras:
	canvas.rectangle(x, y, bracket_dx, bracket_dy, angle, color=color)

    # Draw the *bracket* mounting hole:
    hole_offset = -bracket_dx / 2 + bracket_hole_offset
    x1 = x + hole_offset * cos(angle)
    y1 = y + hole_offset * sin(angle)
    canvas.hole(x1, y1, bracket_hole_diameter)

    # Compute the alignment polar *align_angle* and *align_radius*:
    half_bracket_dx = bracket_dx / 2.0
    half_bracket_dx_squared = half_bracket_dx * half_bracket_dx
    half_bracket_dy = bracket_dy / 2.0
    half_bracket_dy_squared = half_bracket_dy * half_bracket_dy
    align_radius = sqrt(half_bracket_dx_squared + half_bracket_dy_squared)
    align_angle = atan2(bracket_dy, bracket_dx)

    # Draw the two alignment holes:
    hole_angle = angle + pi
    hole_diameter = 0.1
    x1 = x + align_radius * cos(hole_angle + align_angle)
    y1 = y + align_radius * sin(hole_angle + align_angle)
    canvas.hole(x1, y1, hole_diameter)
    x2 = x + align_radius * cos(hole_angle - align_angle)
    y2 = y + align_radius * sin(hole_angle - align_angle)
    canvas.hole(x2, y2, hole_diameter)

def aduino_hole(arduino, hole_x, hole_y, diameter):
    canvas = arduino["canvas"]
    scale = arduino["scale"]
    x = arduino["x"]
    y = arduino["y"]

    #canvas.hole(x + hole_x * scale, y + hole_y * scale, diameter * scale)

    canvas.hole(x + hole_y * scale, y - hole_x * scale, diameter * scale)

def arduino_rectangle(arduino, x1, y1, x2, y2, label, color="black"):
    canvas = arduino["canvas"]
    color = arduino["color"]
    scale = arduino["scale"]
    x = arduino["x"]
    y = arduino["y"]

    #xx1 = x + x1 * scale
    #yy1 = y + y1 * scale
    #xx2 = x + x2 * scale
    #yy2 = y + y2 * scale

    xx1 = x + y1 * scale
    yy1 = y - x1 * scale
    xx2 = x + y2 * scale
    yy2 = y - x2 * scale

    #y_min = min(yy1, yy2)
    #y_max = max(yy1, yy2)
    #print("{0}:y_min={1} y_max={2}".format(label, y_min, y_max))

    x_center = (xx1 + xx2) / 2.0
    y_center = (yy1 + yy2) / 2.0
    dx = abs(xx1 - xx2)
    dy = abs(yy1 - yy2)

    print("{0}:x_center={1}, y_center={2}".format(label, x_center,
      150.0 - (y_center - 100.00)))

    canvas.rectangle(x_center, y_center, dx, dy, 0.0, color=color)

def arduino_draw(canvas, x, y):
    assert isinstance(canvas, Canvas)
    assert isinstance(x, float)
    assert isinstance(y, float)

    arduino = {}
    arduino["canvas"] = canvas
    arduino["color"] = "blue"
    arduino["scale"] = 0.0254	# mil (.001in) => mm
    arduino["x"] = x
    arduino["y"] = y

    # Draw a board outline:
    arduino_rectangle(arduino, 0, 0, 2700, 2100, "board")

    # Draw D8-D13:
    arduino_rectangle(arduino,
      940 - 50, 2000 - 50, 1640 + 50, 2000 + 50, "D8-D13")

    # Draw D0-D7:
    arduino_rectangle(arduino,
      1800 - 50, 2000 - 50, 2500 + 50, 2000 + 50, "D0-D7")

    # Draw PWR:
    arduino_rectangle(arduino,
      1300 - 50, 100 - 50, 1800 + 50, 100 + 50, "PWR")

    # Draw A0-A5:
    arduino_rectangle(arduino,
      2000 - 50, 100 - 50, 2500 + 50, 100 + 50, "A0-A5")

    # Draw ISP:
    isp_x = 2505.512
    isp_y = 1198.031
    arduino_rectangle(arduino,
      isp_x - 50, isp_y - 250, isp_x + 150, isp_y + 50, "ISP")

    # Draw hole 1:
    diameter = 125
    aduino_hole(arduino,  600, 2000, diameter)
    aduino_hole(arduino, 2600, 1400, diameter)
    aduino_hole(arduino, 2600,  300, diameter)
    aduino_hole(arduino,  550,  100, diameter)


def main():
    extras = True
    #extras = False
    canvas = Canvas("shield_layout.svg",
      x_size = 300, y_size = 300, extras = extras)

    #canvas.origin_scale(150, 50, 0.050 * 25.4)
    canvas.origin_scale(50, 0, 1.00)

    # Draw the board outline:
    board_x = 150.00
    board_y = 125.00
    canvas.rectangle(board_x, board_y, 100.0, 50.0, 0.0, color="green")

    # Draw the 4 mounting holes:
    for dx in (-45.00, 45.00):
	for dy in (-20.00, 20.00):
	    canvas.hole(board_x + dx, board_y + dy, 3.1)

    arduino_draw(canvas, board_x - 12, board_y + 44.0)

    # Save *canvas*:
    canvas.save()

main()
