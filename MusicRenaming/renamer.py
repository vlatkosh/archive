import os
import eyed3


def fix_name(name):
    """Removes illegal characters for file paths in Windows"""
    forbidden = "<>:\"/\\|?*"
    for character in forbidden:
        name = name.replace(character, "")
    return name


def is_music_file(filename):
	extensions = ['.mp3', '.flac', '.mp4', '.m4a', '.m4b', '.m4p', '.ogg', '.wav', '.webm']
	ext = os.path.splittext(filename)[1]
	return ext in extensions


def move_all_to_root(rootdir, currdir):
    """
    Recursively moves all files to the root directory
    """
    for filename in os.listdir(currdir):
        filepath = os.path.join(currdir, filename)
        if os.path.isdir(filepath):
            move_all_to_root(rootdir, filepath)
        elif is_music_file(filename):
            os.rename(filepath, os.path.join(rootdir, filename))


def delete_empty_folders(directory, removeThis=False):
    """
    Recursively deletes all empty folders in a directory
    """
    if not os.path.isdir(directory):
        return
    empty = True
    for filename in os.listdir(directory):
        filepath = os.path.join(directory, filename)
        if os.path.isdir(filepath):
            result = delete_empty_folders(filepath, True)
            if result == False:
                empty = False
        else:
            empty = False
    if empty and removeThis:
        print("Removing", directory)
        os.rmdir(directory)
    return empty


def bad_tag(tag):
    if tag is None:
        return True
    return False


def move_to_folders(directory):
    """
    Categorizes all mp3 files in a folder
    This is done using the mp3 tags themselves
    The format is:
        {directory}/{artist} - {album}/{track number} {artist} - {title}
    """
    for filename in os.listdir(directory):
        filepath = os.path.join(directory, filename)
        
        if not os.path.isfile(filepath) or not is_music_file(filename):
            continue

        audiofile = eyed3.load(filepath)

        if audiofile is None:
            continue
        if bad_tag(audiofile.tag.artist):
            continue
        if bad_tag(audiofile.tag.album):
            continue
        if bad_tag(audiofile.tag.title):
            continue
        
        artist = fix_name(audiofile.tag.artist)
        album = fix_name(audiofile.tag.album)
        title = fix_name(audiofile.tag.title)

        audiofile.tag.album_artist = artist

        newfolder = artist + " - " + album
        newfolderpath = os.path.join(directory, newfolder)
        if not os.path.isdir(newfolderpath):
            os.mkdir(newfolderpath)

        newname = ""
        num = audiofile.tag.track_num[0]
        if not num is None:
            newname = newname + str(num).zfill(2) + " "
        extension = os.path.splittext(filename)[1]
        newname = newname + artist + " - " + title + extension
        
        newpath = os.path.join(newfolderpath, newname)
        os.rename(filepath, newpath)


def main():
    directory = "E:\\Vlatko\\Music"
    move_all_to_root(directory, directory)
    delete_empty_folders(directory)
    move_to_folders(directory)


if __name__ == "__main__":
    main()
