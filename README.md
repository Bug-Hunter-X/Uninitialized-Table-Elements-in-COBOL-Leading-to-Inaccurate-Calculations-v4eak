# Uninitialized Table Elements in COBOL
This repository demonstrates a common yet subtle error in COBOL:  using uninitialized table elements.  The program attempts to increment each element of a table, but the table isn't initialized, resulting in unpredictable behavior.

## Bug Description
The COBOL code attempts to add 1 to each element of a table named `WS-SUM`.  However, this table is never initialized; it contains whatever garbage values happened to be in memory at the time.  This results in incorrect calculations and unpredictable results.

## Solution
The solution involves explicitly initializing each element of the `WS-SUM` table to 0 before starting the loop. This ensures that the addition operation is performed with a known, predictable starting point.