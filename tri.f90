      program threeforce
        parameter (n=100)
        dimension x(1000), y(1000)
        a=0.
        b=1.

        h=(b-a)/(n-1)
        do 2 k=1, n
          x(k)=a+h*(k-1)
          y(k)=(x(k))
          print *, k, x(k), y(k)
2           continue
        s=0.
      do 1 i=1, n-3, 4
        s=s+(y(i)+3.*y(i+1)+3.*y(i+2)+y(i+3))
        print *, i, s
1      continue
      s=s*h*3./8.
      analiterror=(h**5)*(b-a)*3/80
      anint=(b**2)/2.
      facterror=abs(s-anint)
      print *, s
      print *, anint
      print *, facterror
      print *, analiterror
      end
