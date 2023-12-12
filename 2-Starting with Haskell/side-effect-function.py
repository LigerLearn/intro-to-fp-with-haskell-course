
a = 0

def add_a_to_arg(arg):
    global a
    a = a + 1
    return a + arg
    
print(add_a_to_arg(5))
print(add_a_to_arg(5))    