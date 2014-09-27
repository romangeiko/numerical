    program threeforce
    parameter (n=100)
    real x(n), y(n)
    a=0
    b=2
    s=0
    h=(b-a)/(n-1)
    do 2, k=1, n
    x(k)=a+h*(k-1)
    y(k)=(x(k))**3
2   continue

    do 1, i=1, N-3, 4
    s=s+(y(i)+3*y(i+1)+3*y(i+2)+y(i+3))*h
1   continue
    analiterror=(h**5)*(b-a)*3/80
    s=s*3/8
    anint=(2**4)/4
    facterror=abs(s-anint)
    print *, s
    print *, anint
    print *, facterror
    print *, analiterror
    end
