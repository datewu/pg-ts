Dockerfile for 
[pgroonga extension]( https://pgroonga.github.io/install/debian.html) for postgresql full-text search

[tutorial](https://pgroonga.github.io/tutorial/)

```sql
CREATE EXTENSION pgroonga
CREATE INDEX pgroonga_tableColumnxxx_index ON table_name_aaa USING pgroonga (table_column_xxx);
CREATE INDEX pgroonga_tableColumnyyy_index ON table_name_aaa USING pgroonga (table_column_yyy);
```
