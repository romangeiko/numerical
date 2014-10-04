        program threeforce
        parameter (n=100)
        real x(n), y(n)
        a=0.
        b=2.
        h=(b-a)/n
        do 2 k=1, n
          x(k)=a+h*(k-1)
          y(k)=(x(k))
        
