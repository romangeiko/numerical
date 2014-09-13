      program plotter
      open (11, FILE='BOT')
      pi = 4.*atan(1.)
      a=pi/100
      do 2, j = 1, 1000
      t=a*j
      sum = 0.
      h=t/1000
      do 1, i = 1 , 1000
      z=h*i
      sum = h * sin (z) + sum
 1    continue
      write (11, *) t, sum
 2    continue
      close (11)
      end
