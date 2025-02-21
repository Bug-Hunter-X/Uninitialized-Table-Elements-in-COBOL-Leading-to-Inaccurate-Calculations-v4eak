MOVE 0 TO WS-COUNTER. 
PERFORM VARYING WS-COUNTER FROM 1 BY 1 UNTIL WS-COUNTER > 100 
    ADD 1 TO WS-SUM(WS-COUNTER) 
END-PERFORM. 

* The above code attempts to increment each element of the WS-SUM table. However, it does not initialize the table before use, resulting in unpredictable behavior.

The problem lies in the fact that the table WS-SUM is not initialized.  COBOL doesn't automatically initialize table elements to zero or any other value.  Depending on what was in that memory location before, you'll get very strange results.  In some cases you may not even detect a problem, but the results will be wrong.