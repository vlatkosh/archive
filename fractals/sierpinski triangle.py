#pylint: disable=C0111, C0103, C0303, C0304, W0621

import turtle

def main():
    t = turtle.Turtle()
    t.screen.bgcolor("black")
    t.color("white")
    #t.width(2)
    t.speed(0)
    
    t.penup()
    t.goto(-100, 0)
    t.pendown()

    order = 3
    length = 300
    sierpinski_triangle(t, order, length)

    turtle.done()

def sierpinski_triangle(t, order, length):
    for _ in range(3):
        t.forward(length)
        t.left(120)
    if order > 0:
        for _ in range(3):
            sierpinski_triangle(t, order-1, length/2)
            t.forward(length)
            t.left(120)
            
if __name__ == "__main__":
    main()