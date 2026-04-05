       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIMES.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NUM               PIC 999 VALUE 2.
       01  WS-DIVISOR           PIC 999.
       01  WS-IS-PRIME          PIC 9 VALUE 1.
       01  WS-QUOTIENT          PIC 999.
       01  WS-REMAINDER         PIC 999.
       01  WS-LIMIT             PIC 999 VALUE 50.

       PROCEDURE DIVISION.
       MAIN-PARA.
           DISPLAY "Prime numbers from 2 to 50:".
           DISPLAY " ".

           PERFORM UNTIL WS-NUM > WS-LIMIT
               MOVE 1 TO WS-IS-PRIME
               MOVE 2 TO WS-DIVISOR

               PERFORM UNTIL WS-DIVISOR * WS-DIVISOR > WS-NUM
                   DIVIDE WS-NUM BY WS-DIVISOR
                       GIVING WS-QUOTIENT
                       REMAINDER WS-REMAINDER

                   IF WS-REMAINDER = 0
                       MOVE 0 TO WS-IS-PRIME
                   END-IF

                   ADD 1 TO WS-DIVISOR
               END-PERFORM

               IF WS-IS-PRIME = 1
                   DISPLAY WS-NUM
               END-IF

               ADD 1 TO WS-NUM
           END-PERFORM.

           STOP RUN.
