    program integration
    real x(1001), y(1001)
    a=0
    b=3
    N=120
    s=0
    h=(b-a)/N
    do 2, k=1, N+1
    x(k)=a+h*(k-1)
    y(k)=(x(k))**2
2   continue
    s=h*(y(1)-y(N+1))/2
    do 1, i=2, N+1
    s=s+h*y(i)
    anint=(3**3)/3.
    facterror=abs(s-anint)
    analiterror=(h**2)*(b-a)/6
1   continue
    print *, s
    print *, anint
    print *, facterror
    print *, analiterror
    end
