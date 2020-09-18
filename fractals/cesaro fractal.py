#pylint: disable=C0111, C0103, C0303, C0304, W0621

import turtle
import math

def main():
    t = turtle.Turtle()
    t.screen.bgcolor("black")
    t.color("white")
    t.fillcolor("lightgreen")
    #t.width(2)
    t.speed(0)
    
    t.penup()
    t.goto(100, -100)
    t.pendown()

    order = 4
    depth_angle = 10
    xlength = 1000
    turn_angle = (180-depth_angle) / 2
    #i was trying to do smart stuff with the next line, just ignore it tbh
    length = order * 2*xlength / (1+math.tan(depth_angle/2))

    t.begin_fill()
    cesaro_square(t, order, length, turn_angle)
    t.end_fill()

    turtle.done()

def cesaro_line(t, order, length, angle):
    """Draw a Cesaro line (fractral)\n
    t = turtle.Turtle\n
    order = order of the fractal\n
    length = total length of the fractal\n
    angle = angle of the 'tear'"""
    if order == 0:
        t.forward(length)
    else:
        for i in [0, angle, -2*angle, angle]:
            t.right(i)
            cesaro_line(t, order-1, length/4, angle)

def cesaro_square(t, order, length, angle):
    """Draw 4 Cesaro lines, turning 90 degrees between each, thus giving a square\n
    For arguments, see cesaro_line."""
    for _ in range(4):
        cesaro_line(t, order, length, angle)
        t.right(90)

if __name__ == "__main__":
    main()