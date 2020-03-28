def hello(x, y, z, **kwargs):
    print (x)
    print (y)
    print (z)
    print (kwargs)

hello(1, 2, 3, a=4)
hello(1, 2, 3, a=4, b=5)
