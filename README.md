# Task 2 - Data Insertion and Handling Nulls

## Objective
Practice inserting, updating, and deleting data using SQL, while handling `NULL` values and default constraints.

## Tools Used
- SQLiteStudio / DB Fiddle

## Steps Performed
1. **Created** a `Students` table with `NOT NULL`, `DEFAULT`, and `UNIQUE` constraints.
2. **Inserted** records:
   - With all values provided
   - With `NULL` values
   - With `DEFAULT` values
3. **Updated** single and multiple rows.
4. **Deleted** records based on conditions.
5. Demonstrated **rollback** in a transaction.
6. Inserted values using a `SELECT` statement.

## Key Concepts
- **NULL**: Represents missing or unknown data, different from `0` or empty string.
- **DEFAULT**: Automatically assigns a value if none is provided.
- **IS NULL**: Used to filter rows where a column is `NULL`.
- **Partial Inserts**: Allowed when non-specified columns have `NULL` or `DEFAULT` values.
- **Rollback**: Restores the database to its state before the transaction.


