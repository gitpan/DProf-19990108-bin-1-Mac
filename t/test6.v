# perl

use V;

dprofpp( '-T' );
$expected =
qq{main::bar
main::baz
   main::bar
   main::foo
      main::bar
main::foo
   main::bar
};
report 1, sub { $expected eq $results };

