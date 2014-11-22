    program integral
    parameter(e=1.E-6)
    parameter(d=1.E-3)

    a=0.
    b=2.
    n=1
    do while ((b-a) .ge. e)
    if(y((a*y(b)-b*y(a))/(y(b)-y(a)))*y(a) .gt. 0) then
    a=(a*y(b)-b*y(a))/(y(b)-y(a))
    else
    b=(a*y(b)-b*y(a))/(y(b)-y(a))
    end if
    n=n+1
    end do
    if (y(e/2)/y(b) .le. d) then
    write(*,*)  (a*y(b)-b*y(a))/(y(b)-y(a))
    else
    write(*,*) b
    end if
    write(*,*) n
    end

    function y(x)
    y=cos(x)-x
    end
