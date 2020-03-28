x = {"john":"doe", "lorem":"ipsum", "sit":"dolor"}
y = {"foo":"bar"}

print ("panjang elemen pada x = %d" % len(x))

print (x.get("lorem"))

print (x.keys())
print (x.items())

x.update(y)
print (x)

x.pop('lorem')
print (x)

x.popitem()
print (x)

x.clear()
y.clear()

print(x)
print(y)
