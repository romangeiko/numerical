    program Haus
    parameter (n=40)
    real x(n), y(n)
    a=0
    b=2
    s=0
    h=(b-a)/(2*n)
    do 1, i=1, N-1, 2
    x(i)=a+2*h*i-h*(1+1/sqrt(3.))
    x(i+1)=a+2*h*i-h*(1-1/sqrt(3.))
    y(i)=x(i)**4
    y(i+1)=x(i+1)**4
1   continue
    do 2, k=1, N-1, 2
    s=s+h*2*(y(k)+y(k+1))
2   continue
    anint=(2**5)/5
    facterror=abs(anint-s)
    print *, s
    print *, anint
    print *, facterror
    end
