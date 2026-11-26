---
name: Top rows from a CSV
file: top_rows.rb
expect:
  - "\\.max_by\\(\\w"
---
Write a Ruby method that reads a CSV file and returns the 5 rows with the highest value in a given column.
