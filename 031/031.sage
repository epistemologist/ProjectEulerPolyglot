z = var('z')
G = product([1/(1-z**k) for k in [1,2,5,10,20,50,100,200]])
print(G.series(z,201).coefficient(z,200))
