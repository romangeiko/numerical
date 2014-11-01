     program sum
     x=0.
     y=0.5
     k=1
     m=2
     do while (x .ne. y)
     x=x-1./(1+k**2)
     y=y-1./(1+m**2)
     k=k+1
     m=m+1
     end do
     print *, k
     print *, x
    end
