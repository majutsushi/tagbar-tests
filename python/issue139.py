def f(a=False):
    if a:
        class A(object):
            a = 400
            b = 500
    elif b:
        class A(object):
            x = 10
            y = 20
    else:
        class A(object):
            p = 100
            q = 200
    return A
