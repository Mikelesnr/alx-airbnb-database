# Database Normalization to 3NF

## Objective

Apply normalization principles to ensure the database is in the third normal form (3NF).

## Steps

### First Normal Form (1NF)

- Ensured each table has a primary key.
- Ensured each column contains atomic values.

### Second Normal Form (2NF)

- Ensured all non-key attributes are fully functionally dependent on the primary key.
- Eliminated partial dependencies.

### Third Normal Form (3NF)

- Ensured no transitive dependencies exist. (these can lead to redundancy as some elements will need to be updated in multiple places)

### Adjustments

Upon review, I found that the schema was in 3NF. No further adjustments were necessary as there were no transitive dependencies.

## Conclusion

I have reviewed the database and confirmed that it is in 3NF, ensuring minimal redundancy and optimal data integrity.
