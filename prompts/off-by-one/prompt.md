---
name: Fix an off-by-one
file: last_n.rb
expect:
  - "\\.last\\(n\\)"
---
`last_n` in last_n.rb should return the last n items, but it returns n + 1. Fix it.
