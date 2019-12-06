program day01
  integer :: total, f, e, fuel, ff, ftotal

  total = 0
  ftotal = 0
  do
    read(*, '(I8)', iostat=e) i
    if ( e /= 0 ) exit
    f = fuel(i)
    total = total + f
    ff = fuelfuel(i)
    print *, 'ff = ', ff, ftotal
    
    ftotal = ftotal + ff
  end do
  print *, 'total = ', total
  print *, 'ftotal = ', ftotal
end program day01

function fuel(mass) result(f)
  integer, intent(in) :: mass
  integer :: f

  f = (mass / 3) - 2
end function fuel

function fuelfuel(mass) result(ftotal)
  integer, intent(in) :: mass
  integer :: ftotal, ff

  ff = mass
  do 
    if (ff <= 0) then
      exit
    end if
    ff = (fuel / 3) - 2
    ftotal = ftotal + dd
  end do
end function fuelfuel
