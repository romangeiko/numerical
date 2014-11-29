     program merz
     parameter (k=1000)
     Implicit real*8(A-h, o-z)
     dimension Y(2)
     external dff
     open (10, file='merz.dat')
     a=0.D0
     b=1.d0
     h=(b-a)/(k-1)
     y(1)=0.D0
     y(2)=1.D0
     ACC=1.d-4
     H=0.01D0
     Hmin=1.D-5
     N=2

     do 1 i=1, k
     xn=a+(i-1)*h
     xnd=a+i*h
     q=xnd*exp(-xnd)
     call merson (Xn, xnd, acc, h, hmin, n, y, dff)
     print *, xnd, y(1)
1    continue

     stop
     close (10)
     end

     subroutine dff (x, y, dy)
      implicit real*8 (a-h, o-z)
      dimension Y(2), Dy (2)
      dy(1)=y(2)
      dy(2)=y(1)-2.D0*exp(-x)
      return
     end
