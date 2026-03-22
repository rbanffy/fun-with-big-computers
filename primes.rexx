/* REXX program to display the first 20 prime numbers */

count = 0
num = 2

DO WHILE count < 20
  IF is_prime(num) THEN DO
    SAY num
    count = count + 1
  END
  num = num + 1
END

EXIT

is_prime: PROCEDURE
  ARG n
  
  IF n < 2 THEN
    RETURN 0
  
  DO divisor = 2 TO TRUNC(SQRT(n))
    IF n // divisor = 0 THEN
      RETURN 0
  END
  
  RETURN 1
