program merz
parameter (k=10000)
Implicit real*8(A-h, o-z)
dimension Y(2)
external dff
a=0.D0
b=1.D0
step=(b-a)/k
y(1)=0.D0
y(2)=1.D0
ACC=1.d-4
H=0.01D0
Hmin=1.D-5
N=2
xn=a

do 1, i=1, k
xn=a+(i-1)*step
xnd=a+i*step
q=xnd*dexp(-xnd)
call merson (xn, xnd, acc, h, hmin, n, y, dff)
if (mod(i, 100).eq.0) then
print *, xnd, abs((y(1)-q)/q)
endif
1   continue

end

subroutine dff(x, y, dy)
implicit real*8(a-h, o-z)
dimension y(2), dy(2)
dy(1)=y(2)
dy(2)=y(1)-2.D0*dexp(-x)
return
end
