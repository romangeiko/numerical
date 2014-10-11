    program mother
    external fun
    dimension yy(1000), xx(1000), bb(1000)
    a=0.
    b=2.
    h=(b-a)/100.
    open (10, file='mother.dat')
    do I=1, 100
    xx(I)=(I-1)*h
    yy(I)=fun(xx(I))
    end do

   call QSF(h, yy, bb, 1000)
   do I=1, 1000
   write (10,*) xx(I), bb(I)
   end do
   stop
   end program

   function fun(x)
   if(x .eq. 0.0) then
   fun=1.0
   else
   fun=exp(-x**2)
   end if
   return
   end
