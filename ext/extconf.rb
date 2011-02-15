require 'mkmf'

# increase message size on linux
if RUBY_PLATFORM =~ /linux/
  $defs.push("-DBUF_SIZE=256")
end

# warnings save lives
$CFLAGS << " -Wall "

create_makefile('rbtrace')
