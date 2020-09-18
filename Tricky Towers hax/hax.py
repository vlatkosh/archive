"""read the first and only argument of the first function called in the function main -- wait what"""
#pylint: disable=E0611, C0413, C0103
import sys
sys.path.append('d:\\vlatko\\Programming\\Code\\Python')
import time
from inpututil import inpututil # https://github.com/vlatkosh/inpututil
import pyautogui

def format_func_info(func, show_address=False):
    """read the name"""
    import re
    result = re.match(r'<function ([\w._]+) at (0x[0-9A-F]+)>', str(func))
    if result is None:
        return "<COULDN'T FORMAT>"
    return result.group(1) + (f"<{result.group(2)}>" if show_address else "")

def exit_app():
    """read the name"""
    import os
    os.kill(os.getpid(), 9)

def quick_restart():
    """read the name"""
    for t, k in [(0, 'esc'), (0.35, 'down'), (0.15, 'enter')]:
        time.sleep(t)
        pyautogui.press(k)

def press(*args):
    """read the name"""
    pyautogui.press(args)
    print("sent", args)

def main():
    # pylint: disable=C0326
    """main function"""
    print("*** Tricky Towers 'Quality[?]-of-life' program by vlatko[sh].***")

    iu = inpututil.InputUtil()
    iu.bind_pause_hotkey(inpututil.VK['DELETE'])
    iu.bind_hotkey(keys=inpututil.VK['NEXT'],     timeout=0,    func=exit_app)
    iu.bind_hotkey(keys=inpututil.VK['END'],      timeout=1,    func=quick_restart)
    iu.bind_hotkey(keys=inpututil.VK['RCONTROL'],               func=press,         args=['a'])
    iu.bind_hotkey(keys=inpututil.VK['NUMPAD0'],                func=press,         args=['d'])
    iu.bind_hotkey(keys=inpututil.VK['UP'],       timeout=0.08, func=press,         args=['w'])
    iu.bind_hotkey(keys=inpututil.VK['KEY_E'],    timeout=0.08, func=press,         args=['w'])
    iu.start()

if __name__ == "__main__":
    main()