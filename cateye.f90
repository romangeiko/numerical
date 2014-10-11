           program cateye
           external FCTX,FCTY, FCTXX
           AX=0.
           BX=0.5
           CX=1.
           CALL QG5(AX,BX,FCTX,SX)
           CALL QG7(BX,CX,FCTXX,SXX)
           S=SX+SXX
           write(*,*) 4*S
           END

           FUNCTION FCTX(X)
           EXTERNAL FCTY
           COMMON /HELP/ XX
           XX=X
           AY=(1.-(X**2)*4)**(0.5)
           BY=((1.-(X**2))**(0.5))
           CALL QG7(AY,BY,FCTY,SY)
           FCTX=SY
           RETURN
           END

           FUNCTION FCTY(Y)
           COMMON /HELP/ XX
           X=XX
           FCTY=(X**2)*(Y**2)
           RETURN
           END

           FUNCTION FCTXX(X)
            EXTERNAL FCTY
            COMMON /HELP/ XX
            XX=X
            BY=(1.-X**2)**(0.5)
            AY=0.
            CALL QG7(AY,BY,FCTY,SYY)
            FCTXX=SYY
            RETURN
            END
