        program runge
        parameter (w=0.5)
        parameter (n=1000)
        real x(n), y(n)
        open (10, file='run.dat')
        a=0.
        b=10.
        h=(b-a)/(n-2)
        y(1)=0
        do 1, i=1, N-1
        x(i)=a+h*(i-1)
        y(i+1)=y(i)+h*((1-w)*fun(x(i))+w*fun(x(i)+h/(2.*w)))
        write (10,*) x(i), y(i)
1       continue
        close(10)
       end program
       function fun(x)
       fun=1./(1+x**2)
       return
       end
