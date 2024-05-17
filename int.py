list1=[1,2,3]


def fun1(list1,index1):
    try:
        for i in range(index1):
            print(list1[i])
    except Exception as e:
        print(e)
fun1(list1,98)


list1=[1,2,3]


def fun1(list1,index1):
    try:
        for i in range(index1):
            print(list1[i])
    except :
        print("error")
fun1(list1,98)
