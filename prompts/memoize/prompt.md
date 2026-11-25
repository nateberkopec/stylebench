---
name: Memoize an expensive method
file: report.rb
---
`Report#summary` in report.rb is slow and is called many times on the same object. Make repeated calls fast.
