    program approximation
    real x(50), y(50), ap(500)
    open (10, file='approx.txt')
    open (11, file='original.txt')
    N = 50
    a = -10
    b = 10
    h = (b-a)/N
    DO 1, i = 1, N
    x(i) = a + (i-1)*h
    y(i) = x(i)*sin((x(i)))
1   continue

    NN=10*N
    hh=(b-a)/NN
    do 2, k=1, nn
    t=a+(k-1)*hh
    p = 0.
    do 3, i = 1, N
    g=1.0
    do 4, j = 1, N
    if (j.ne.i) g = g*(t-x(j))/(x(i)-x(j))
4   continue
    p = p + y(i)*g
3   continue
    ap(k)=p
2   continue

    do 5, k = 1, NN
    t=a+(k-1)*hh
    write (11,*) t, t*sin(t)
5   continue

    do 6, k = 1, NN
    t=a+(k-1)*hh
    write (10,*) t, ap(k)
6    continue
    close (10)
    close (11)
    end
