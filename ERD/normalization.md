## Purpose
This document explains how the database schema for the airbnb-clone project has been normalized up to the 5th Normal Form (5NF) to ensure data integrity, avoid redundancy, and maintain scalability.

### 1NF
**Definition:**  
- All columns must contain atomic (indivisible) values.  
- Each record must be unique.

**How it's achieved:**  
- Every column holds a single value (e.g., no arrays, lists, or comma-separated strings).  
- Primary keys are defined for all tables to ensure uniqueness.

### 2NF
**Definition:**
- Must be in 1NF.
- All non-key attributes must be fully functionally dependent on the entire primary key.

**How it's achieved:**
- No table has a composite primary key.
- All non-key attributes are directly dependent on a single primary key.

### 3NF
**Definition:**
- Must be in 2NF.
- There are no transitive dependencies (i.e., non-key attributes must not depend on other non-key attributes).

**How it's achieved:**
- Each non-key column depends only on the primary key, not on another non-key column.
- E.g., email does not determine password_hash.
