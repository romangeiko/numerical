       program Homer
       parameter (n=50)
       real x(n+1), y(n+1)
       a=0
       b=2
       s=0
       h=(b-a)/n
       do 2, k=1, n+1
       x(k)=a+h*(k-1)
       y(k)=(x(k))**4
   2   continue

       s=h*(y(1)-y(N+1))/3
       do 1, i=2, N+1
       if (mod(i,2).ne.0) then
       s=s+2*y(i)*h/3
       else
       s=s+4*y(i)*h/3
       endif

       anint=(2.**5)/5.
       facterror=abs(s-anint)
       analiterror=(h**4)*(b-a)*4/30

   1   continue
       print *, s
       print *, anint
       print *, facterror
       print *, analiterror
       end
