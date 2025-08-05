# A simple Dockerfile for pgroonga

[pgroonga extension]( https://pgroonga.github.io/install/debian.html) a
full-text search postgresql extension.

[tutorial](https://pgroonga.github.io/tutorial/)

```sql
CREATE EXTENSION pgroonga
CREATE INDEX pgroonga_tableColumnxxx_index ON table_name_aaa USING pgroonga (table_column_xxx);
CREATE INDEX pgroonga_tableColumnyyy_index ON table_name_aaa USING pgroonga (table_column_yyy);
```
