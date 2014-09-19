    program derivation
    real x(500), y(500), der(500)
    open (10, file='dorig.txt')
    open (11, file='derivate.txt')
    N = 500
    a = -10
    b = 10
    h = (b-a)/N
    do 1, i = 1, N
    x(i) = a + (i-1)*h
    y(i) = x(i)*sin(x(i))
1   continue
    der(1)=((-3)*y(1)+4*y(2)-y(3))/(2*h)
    do 2, j=2, (N-1)
    der(j)=(y(j+1)-y(j-1))/(2*h)
2   continue
    der(N)=(y(N-2)-(4*y(N-1))+3*y(N))/(2*h)

    do 3, k=1, N
    write (10,*) x(k), y(k)
    write (11,*) x(k), der(k)
3   continue
    close(10)
    close(11)
    end
