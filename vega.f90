        Program vega
        e=1.E-6
        k=0
        x1=0.
        x2=1.
        x=0.5
        do while ((abs(x1-x2).ge. e).and.(k<5))
        x=x1-f(x1)*( (x1-x2) / (f(x1)-f(x2) ) )
        if (f(x)<0) then
        x1=x
        else
        x2=x
        endif

        k=k+1
        y=x1
        print *, x2, k
        end do
       end

       Function  f(x)
       f=cos(x)-x
       End
