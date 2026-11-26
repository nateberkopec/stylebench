---
name: Request ID middleware
file: request_id.rb
expect:
  - "\"x-request-id\""
  - "SecureRandom\\.uuid_v7"
---
Write a Rack middleware that adds an X-Request-Id header to every response.
