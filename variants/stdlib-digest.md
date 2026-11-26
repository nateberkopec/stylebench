Your Ruby knowledge is out of date. Before writing code, check whether core Ruby or the standard library already does it. Stdlib is fair game even if it needs a `require`. Here is a digest of the module functions, class methods, and regexp constants available in this Ruby 4.0.9, after requiring the standard library:

Array: .[] .try_convert #all? #any? #append #assoc #at #bsearch #bsearch_index #clear #collect #collect! #combination #compact #compact! #concat #count #cycle #deconstruct #delete #delete_at #delete_if #detect #difference #dig #drop #drop_while #each #each_index #empty? #fetch #fetch_values #fill #filter #filter! #find #find_index #first #flatten #flatten! #freeze #include? #index #insert #intersect? #intersection #join #keep_if #last #length #map #map! #max #min #minmax #none? #one? #pack #permutation #pop #prepend #product #push #rassoc #reject #reject! #repeated_combination #repeated_permutation #replace #reverse #reverse! #reverse_each #rfind #rindex #rotate #rotate! #sample #select #select! #shelljoin #shift #shuffle #shuffle! #size #slice #slice! #sort #sort! #sort_by! #sum #take #take_while #to_a #to_ary #to_h #transpose #union #uniq #uniq! #unshift #values_at #zip
BigDecimal: .double_fig .interpret_loosely .limit .mode .save_exception_mode .save_limit .save_rounding_mode
BigDecimal::Internal: .coerce_to_bigdecimal .coerce_validate_prec .infinity_computation_result .nan_computation_result
BigMath: .exp .log
Comparable: #between? #clamp
Complex: .polar .rect .rectangular
Data: .define
Date: .civil .commercial .gregorian_leap? .httpdate .iso8601 .jd .jisx0301 .julian_leap? .leap? .ordinal .parse .rfc2822 .rfc3339 .rfc822 .strptime .today .valid_civil? .valid_commercial? .valid_date? .valid_jd? .valid_ordinal? .xmlschema
DateTime: .civil .commercial .httpdate .iso8601 .jd .jisx0301 .now .ordinal .parse .rfc2822 .rfc3339 .rfc822 .strptime .xmlschema
Delegator: .delegating_block .public_api
Digest: .hexencode
Digest::Class: .base64digest .digest .file .hexdigest
Dir: .[] .chdir .children .chroot .delete .each_child .empty? .entries .exist? .fchdir .for_fd .foreach .getwd .glob .home .mkdir .mktmpdir .open .pwd .rmdir .tmpdir .unlink
Dir::Tmpname: .create .tmpdir
ERB: .version
ERB::DefMethod: .def_erb_method
ERB::Escape: .html_escape
ERB::Util: .h .html_escape .u .url_encode
Enumerable: #all? #any? #chain #chunk #chunk_while #collect #collect_concat #compact #count #cycle #detect #drop #drop_while #each_cons #each_entry #each_slice #each_with_index #each_with_object #entries #filter #filter_map #find #find_all #find_index #first #flat_map #grep #grep_v #group_by #include? #inject #lazy #map #max #max_by #member? #min #min_by #minmax #minmax_by #none? #one? #partition #reduce #reject #reverse_each #select #slice_after #slice_before #slice_when #sort #sort_by #sum #take #take_while #tally #to_a #to_h #to_set #uniq #zip
Enumerator: .produce .product
File: .absolute_path .absolute_path? .atime .basename .birthtime .blockdev? .chardev? .chmod .chown .ctime .delete .directory? .dirname .empty? .executable? .executable_real? .exist? .expand_path .extname .file? .fnmatch .fnmatch? .ftype .grpowned? .identical? .join .lchmod .lchown .link .lstat .lutime .mkfifo .mtime .owned? .path .pipe? .readable? .readable_real? .readlink .realdirpath .realpath .rename .setgid? .setuid? .size .size? .socket? .split .stat .sticky? .symlink .symlink? .truncate .umask .unlink .utime .world_readable? .world_writable? .writable? .writable_real? .zero?
FileTest: .blockdev? .chardev? .directory? .empty? .executable? .executable_real? .exist? .file? .grpowned? .identical? .owned? .pipe? .readable? .readable_real? .setgid? .setuid? .size .size? .socket? .sticky? .symlink? .world_readable? .world_writable? .writable? .writable_real? .zero?
FileUtils: .cd .chdir .chmod .chmod_R .chown .chown_R .cmp .collect_method .commands .compare_file .compare_stream .copy .copy_entry .copy_file .copy_stream .cp .cp_lr .cp_r .getwd .have_option? .identical? .install .link .link_entry .ln .ln_s .ln_sf .ln_sr .makedirs .mkdir .mkdir_p .mkpath .move .mv .options .options_of .private_module_function .pwd .remove .remove_dir .remove_entry .remove_entry_secure .remove_file .rm .rm_f .rm_r .rm_rf .rmdir .rmtree .safe_unlink .symlink .touch .uptodate?
Find: .find .prune
Forwardable: .debug .debug=
Hash: .[] .ruby2_keywords_hash .ruby2_keywords_hash? .try_convert #any? #assoc #clear #compact #compact! #compare_by_identity #compare_by_identity? #deconstruct_keys #default #default= #default_proc #default_proc= #delete #delete_if #dig #each #each_key #each_pair #each_value #empty? #except #fetch #fetch_values #filter #filter! #flatten #freeze #has_key? #has_value? #include? #invert #keep_if #key #key? #keys #length #member? #merge #merge! #rassoc #rehash #reject #reject! #replace #select #select! #shift #size #slice #store #to_a #to_h #to_hash #to_proc #transform_keys #transform_keys! #transform_values #transform_values! #update #value? #values #values_at
IO: .binread .binwrite .console .copy_stream .for_fd .foreach .open .pipe .popen .read .readlines .select .sysopen .try_convert .write
IO::Buffer: .for .map .size_of .string
Integer: .sqrt .try_convert #abs #allbits? #anybits? #bit_length #ceil #ceildiv #chr #coerce #denominator #digits #div #divmod #downto #even? #fdiv #floor #gcd #gcdlcm #integer? #lcm #magnitude #modulo #next #nobits? #numerator #odd? #ord #pow #pred #rationalize #remainder #round #size #succ #times #to_d #to_f #to_i #to_int #to_r #truncate #upto #zero?
JSON: .[] .create_id .create_id= .deprecation_warning .dump .dump_default_options .dump_default_options= .fast_generate .fast_unparse .generate .generator .generator= .load .load_default_options .load_default_options= .load_file .load_file! .parse .parse! .parser .parser= .pretty_generate .pretty_unparse .restore .state .state= .unparse .unsafe_load .unsafe_load_default_options .unsafe_load_default_options=
JSON::Fragment: .[] .inspect .keyword_init? .members
JSON::ParserOptions: .prepare
Kernel: .Array .BigDecimal .Complex .Float .Hash .Integer .Pathname .Rational .String .URI .` .abort .at_exit .autoload .autoload? .binding .block_given? .caller .caller_locations .catch .eval .exec .exit .exit! .fail .fork .format .gets .global_variables .iterator? .lambda .load .local_variables .loop .open .p .pp .print .printf .proc .putc .puts .raise .rand .readline .readlines .require .require_relative .select .set_trace_func .sleep .spawn .sprintf .srand .syscall .system .test .throw .trace_var .trap .untrace_var .warn
Math: .acos .acosh .asin .asinh .atan .atan2 .atanh .cbrt .cos .cosh .erf .erfc .exp .expm1 .frexp .gamma .hypot .ldexp .lgamma .log .log10 .log1p .log2 .sin .sinh .sqrt .tan .tanh
Module: .constants .nesting .used_modules .used_refinements
Open3: .capture2 .capture2e .capture3 .pipeline .pipeline_r .pipeline_rw .pipeline_start .pipeline_w .popen2 .popen2e .popen3
OpenURI: RE_LWS RE_PARAMETERS RE_QUOTED_STRING RE_TOKEN .check_options .open_http .open_loop .open_uri .redirectable? .scan_open_optional_arguments
OpenURI::Meta: .init
OptionParser: DecimalInteger DecimalNumeric OctalInteger SPLAT_PROC .accept .getopts .inc .reject .terminate .top .with
OptionParser::Acceptables: DecimalInteger DecimalNumeric OctalInteger
OptionParser::Completion: .candidate .completable? .regexp
OptionParser::Switch: .guess .incompatible_argument_styles .pattern
PP: .mcall .pp .sharing_detection .sharing_detection= .singleline_pp .width_for
Pathname: SEPARATOR_PAT .getwd .glob .mktmpdir .pwd
PrettyPrint: .format .singleline_format
Psych: .add_builtin_type .add_domain_type .add_tag .config .domain_types .domain_types= .dump .dump_stream .dump_tags .dump_tags= .libyaml_version .load .load_file .load_stream .load_tags .load_tags= .parse .parse_file .parse_stream .parser .remove_type .safe_dump .safe_load .safe_load_file .safe_load_stream .to_json .unsafe_load .unsafe_load_file
Random: .bytes .new_seed .rand .seed .srand .urandom
Random::Formatter: #alphanumeric #base64 #hex #rand #random_bytes #random_number #urlsafe_base64 #uuid #uuid_v4 #uuid_v7
Range: #begin #bsearch #count #cover? #each #end #entries #exclude_end? #first #include? #last #max #member? #min #minmax #overlap? #reverse_each #size #step #to_a #to_set
RbConfig: .expand .fire_update! .ruby
Regexp: .compile .escape .last_match .linear_time? .quote .timeout .timeout= .try_convert .union #casefold? #encoding #fixed_encoding? #match #match? #named_captures #names #options #source #timeout
Ruby::Box: .current .enabled?
SecureRandom: .bytes .gen_random
Set: .[] #add #add? #classify #clear #collect! #compare_by_identity #compare_by_identity? #delete #delete? #delete_if #difference #disjoint? #divide #each #empty? #encode_with #filter! #flatten #flatten! #include? #init_with #intersect? #intersection #join #keep_if #length #map! #member? #merge #proper_subset? #proper_superset? #reject! #replace #reset #select! #size #subset? #subtract #superset? #to_a #to_set #union
Shellwords: .escape .join .shellescape .shelljoin .shellsplit .shellwords .split
Singleton: .module_with_class_methods
String: .try_convert #append_as_bytes #ascii_only? #b #byteindex #byterindex #bytes #bytesize #byteslice #bytesplice #capitalize #capitalize! #casecmp #casecmp? #center #chars #chomp #chomp! #chop #chop! #chr #clear #codepoints #concat #count #crypt #dedup #delete #delete! #delete_prefix #delete_prefix! #delete_suffix #delete_suffix! #downcase #downcase! #dump #dup #each_byte #each_char #each_codepoint #each_grapheme_cluster #each_line #empty? #encode #encode! #encoding #end_with? #force_encoding #freeze #getbyte #grapheme_clusters #gsub #gsub! #hex #include? #index #insert #intern #length #lines #ljust #lstrip #lstrip! #match #match? #next #next! #oct #ord #partition #prepend #replace #reverse #reverse! #rindex #rjust #rpartition #rstrip #rstrip! #scan #scrub #scrub! #setbyte #shellescape #shellsplit #size #slice #slice! #split #squeeze #squeeze! #start_with? #strip #strip! #sub #sub! #succ #succ! #sum #swapcase #swapcase! #to_c #to_d #to_f #to_i #to_r #to_str #to_sym #tr #tr! #tr_s #tr_s! #undump #unicode_normalize #unicode_normalize! #unicode_normalized? #unpack #unpack1 #upcase #upcase! #upto #valid_encoding?
StringIO: .open
StringScanner: .must_C_version
Struct: #deconstruct #deconstruct_keys #dig #each #each_pair #filter #length #members #select #size #to_a #to_h #values #values_at
Symbol: .all_symbols
Tempfile: .create .open
Thread: .abort_on_exception .abort_on_exception= .current .each_caller_location .exit .fork .handle_interrupt .ignore_deadlock .ignore_deadlock= .kill .list .main .pass .pending_interrupt? .report_on_exception .report_on_exception= .start .stop
Time: .at .gm .httpdate .iso8601 .local .mktime .now .parse .rfc2822 .rfc822 .strptime .utc .xmlschema .zone_offset
Time::tm: .from_time
Timeout: .timeout
Timeout::State: .instance
Timeout::Sync: .synchronize
URI: ABS_PATH FRAGMENT HOST OPAQUE PORT QUERY REL_PATH SCHEME USERINFO .decode_uri_component .decode_www_form .decode_www_form_component .encode_uri_component .encode_www_form .encode_www_form_component .extract .for .get_encoding .join .open .parse .parser= .regexp .register_scheme .scheme_list .split
URI::FTP: .build .new2
URI::File: .build
URI::Generic: .build .build2 .component .default_port .use_proxy? .use_registry
URI::HTTP: .build
URI::LDAP: .build
URI::MailTo: EMAIL_REGEXP HEADER_REGEXP .build
URI::RFC3986_Parser: HOST RFC3986_URI RFC3986_relative_ref USERINFO
URI::Schemes: .escape .find .list .register .unescape
URI::Util: .make_components_hash
URI::WS: .build
