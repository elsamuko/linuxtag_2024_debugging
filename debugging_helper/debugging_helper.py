import os
import dumper
import tempfile


def log(arg):
    dir = tempfile.gettempdir()
    f = open(dir + "/dumper.log", "a")
    f.write(arg + "\n")
    f.close()


def qdump__Hase(d, value):
    d.putValue("Hase")
    log("start")

    size = int(d.call("int", value, "size"))
    log("size = {}".format(size))
    d.putValue(f"i = {size}")

    d.putNumChild(size)
    if d.isExpanded():
        with dumper.Children(d):
            for pos in range(size):
                log(f"getting v[{pos}]")
                v = int(d.call("int", value, "at", str(pos)))
                log(f"v={v}")
                d.putIntItem(f"v[{pos}]", v)
                log("after")
    log("end")
