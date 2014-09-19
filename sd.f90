    program secondderivation
    real x(500), y(500), sder(500)
    open (10, file='sdorig.txt')
    open (11, file='sderivate.txt')
    N = 500
    a = -10
    b = 10
    h = (b-a)/N
    do 1, i = 1, N
    x(i) = a + (i-1)*h
    y(i) = x(i)**3
1   continue
    sder(1)=(2*y(1)-5*y(2)+4*y(3)-y(4))/(h**2)
    do 2, j=2, (N-1)
    sder(j)=(y(j-1)-2*y(j)+y(j+1))/(h**2)
2   continue
    sder(N)=(-y(N-3)+(4*y(N-2))-5*y(N-1)+2*y(N))/(h**2)

    do 3, k=1, N
    write (10,*) x(k), y(k)
    write (11,*) x(k), sder(k)
3   continue
    close(10)
    close(11)
    end
