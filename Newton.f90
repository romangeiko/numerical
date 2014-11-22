
    subroutine fun(x, f, d)
      f=x**3-2.0*x-5.0
      d=3.0*x**2-2.0
      return
       end

       external fun
       x0=3.0
       eps=1.E-6
       iend=100

       call RTNI (x, f, derf, fun, x0, eps, iend, ier)
       write (*,*) x, f, derf, ier
      end
