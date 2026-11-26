Your Ruby knowledge is out of date. Before writing code, check whether core Ruby or the standard library already does it. Stdlib is fair game even if it needs a `require`. Stdlib files live in `ruby -e 'puts RbConfig::CONFIG["rubylibdir"]'`. To see what a module offers, require it and inspect `.constants`, `.singleton_methods`, and `.instance_methods(false)`.

Standard libraries available on this machine:

English bundled_gems bundler cgi coverage date delegate did_you_mean digest erb error_highlight expect fileutils find forwardable ipaddr json mkmf monitor objspace open-uri open3 openssl optionparser optparse pathname pp prettyprint prism psych resolv ripper rubygems securerandom shellwords singleton socket syntax_suggest tempfile time timeout tmpdir tsort un uri weakref yaml
