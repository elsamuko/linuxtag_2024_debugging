import gdb

value = gdb.parse_and_eval("some_num")
print(f"some_num = {value}")
