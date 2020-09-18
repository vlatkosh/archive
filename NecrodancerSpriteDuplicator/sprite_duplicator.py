import os
from PIL import Image


def fixSprite(image, filepath):
    image = image.convert("RGBA")
    width, height = image.size
    pixels = image.load()
    total = 0 # non-transparent pixels
    black = 0 # valid cells in the second part of the image (the shadows)
    offset = height//2
    for x in range(width):
        for y in range(height):
            r, g, b, a = pixels[x, y]
            if a != 255:
                continue
            total += 1
            if y < offset or r != 0 or g != 0 or b != 0:
                continue
            _, _, _, a2 = pixels[x, y - offset]
            if a2 != 255:
                continue
            black += 1
    special = False
    if "skeletonknight" in filepath:
        special = True
    if "dragon_red" in filepath:
        special = True
    if not special and (total < 0.1*width*height or not (0.40*total <= black and black <= 0.55*total)):
        # Not a valid sprite, some other image
        return False
    for x in range(width):
        for y in range(offset, height):
            pixels[x, y] = pixels[x, y - offset]
    image.save(filepath)
    # The sprite was (presumably) modified successfully
    return True

    
def search(currdir):
    for filename in os.listdir(currdir):
        filepath = os.path.join(currdir, filename)
        if os.path.isdir(filepath):
            search(filepath)
        elif filename.endswith(".png"):
            with Image.open(filepath) as image:
                if fixSprite(image, filepath):
                    print(filename, "is good!")


def main():
    directory = "D:\\Vlatko\\Projects\\NecrodancerSpriteDuplicator\\VlatkoMod"
    search(directory)


if __name__ == "__main__":
    main()