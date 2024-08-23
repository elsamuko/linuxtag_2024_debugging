import sys
import dumper


def log(arg):
    f = open("dumper.log", "a")
    f.write(arg + "\n")
    f.close()


def qdump__Hase(d, value):
    log("start")

    size = int(d.call('int', value, 'size'))
    log("size = {}".format(size))
    d.putValue("i = {}".format(size))


    d.putNumChild(size)
    if d.isExpanded():
        with dumper.Children(d):
            for pos in range(size):
                log(f"getting v[{pos}]")
                # v = int(d.call('int', value, 'at', pos))
                # log(f"v[{pos}] = {v}")
                d.putSubItem("v[x]", value.numbers[0])
                # d.putSubItem("v[x]", "1")

    log("end")
