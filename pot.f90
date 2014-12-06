      program potencial
      parameter (n=100)
      external FCTX
      external FCTY
      external FCTZ
      external FCTT
      open (10, file='plot.dat')
      pi=4*atan(1.)
      w1=0.
      w2=10.
      h=(w2-w1)/n
        do 1, i=1, n
        w=w1+(i-1)*h
        AX=0.0
        BX=w
        CALL DQG32 (AX,BX,FCTX,SX)
        AY=w
        BY=100
        CALL DQG32 (AY,BY,FCTY,SY)
        call DQG32 (AX, BX, FCTZ, SZ)
        call DQG32 (AY, BY, FCTT, ST)
        f=(4.*pi/3.)*(SX/r+sy)+8.*pi/15.*(sz/(r*r*r)+st*r*r)
        print *, w, sx, sy, sz, st
        write (10,*) w, sx, sy, sz, st
  1     continue
        close (10)
        END

        FUNCTION FCTX(X)
        fctx=exp(-x)*x*x
        RETURN
        END

        FUNCTION FCTy(Y)
        fcty=exp(-y)*y
        RETURN
        END

        FUNCTION FCTz(z)
        fctz=exp(-z)*z*z*z*z
        RETURN
        END

        FUNCTION FCTt(t)
        fctt=exp(-t)/t
        RETURN
        END
