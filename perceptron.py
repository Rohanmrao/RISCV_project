import numpy as np

def cal( a, b, c, d):
    x= (a*b)+(c*d)
    return x

def cal3( a, b, c, d,e,f):
    x= (a*b)+(c*d)+(e*f)
    return x

       
x1=int(input("input1: "))
x2=int(input("input2: "))

lay2w= [1 ,1 ,1]
layw= []
for i in range(10):
    l= int(input("enter weight : "))
    layw.append(l)

#print(layw)

for i in range(len(lay2w)):
    layw.append(lay2w[i])

print(layw)


v11=cal(x1,layw[0],x2,layw[1])
print("v11 =",v11)
v12=cal(x1,layw[2],x2,layw[3])
print("v12 =",v12)
v21=cal(v11,layw[4],v12,layw[5])
print("v21 =",v21)
v22=cal(v11,layw[6],v12,layw[7])
print("v22 =",v22)
v23=cal(v11,layw[8],v12,layw[9])
print("v23 =",v23)

s=cal3(v21,lay2w[0],v22,lay2w[1],v23,lay2w[2])
print("s =",s)
print("sin (s) = ",np.sin(s))

if (np.sin(s))>0:
    print("output = 1")
else:
    print("output = 0")    