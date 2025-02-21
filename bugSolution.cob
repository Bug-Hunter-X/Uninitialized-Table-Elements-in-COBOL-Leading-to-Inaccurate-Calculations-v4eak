01 WS-SUM PIC 9(5) OCCURS 100 TIMES.
01 WS-COUNTER PIC 9(3).
01 WS-SUM-TOTAL PIC 9(7).

PROCEDURE DIVISION.
    PERFORM VARYING WS-COUNTER FROM 1 BY 1 UNTIL WS-COUNTER > 100
        MOVE 0 TO WS-SUM(WS-COUNTER)  
    END-PERFORM.

    PERFORM VARYING WS-COUNTER FROM 1 BY 1 UNTIL WS-COUNTER > 100 
        ADD 1 TO WS-SUM(WS-COUNTER) 
        ADD WS-SUM(WS-COUNTER) TO WS-SUM-TOTAL
    END-PERFORM.
    DISPLAY "The sum of all elements is: " WS-SUM-TOTAL
    STOP RUN.

*The solution initializes all the elements of WS-SUM table to zero before starting the addition loop. Now the program will add 1 to each element correctly.*