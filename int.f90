        program terminator
        external FCTX,FCTY
        AX=-1.
        BX=1.
        CALL QG5(AX,BX,FCTX,SX)
        write(*,*) SX
        END

        FUNCTION FCTX(X)
        EXTERNAL FCTY
        COMMON /HELP/ XX
        XX=X
        AY=-(1.-X**2)**(0.5)
        BY=(1.-X**2)**(0.5)
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
