# -*- coding: utf-8 -*-
import os

CPP_FLAGS = """
-I%(root)s/
-I%(root)s/inc/
-I%(root)s/include/
-Wall
-Wextra
-fmax-errors=10
""" % {"root": os.path.dirname(__file__)}

flags = [flg for flg in CPP_FLAGS.split("\n") if flg != ""]

if os.environ.get("CPPPATH"):
    for p in os.environ.get("CPPPATH").split(os.pathsep):
        flags += ["-isystem", p]

def FlagsForFile(filename, **kwargs):
    global flags

    if filename.endswith(".c"):
        flags += ["-xc", "-std=c11"]
    else:
        for ext in (".h", ".hpp", ".cpp"):
            if filename.endswith(ext):
                flags += ["-xc++", "-std=c++17"]

    return {
            "do_cache": True,
            "flags": flags
        }
