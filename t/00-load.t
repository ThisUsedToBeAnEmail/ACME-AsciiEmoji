#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'ACME::AsciiEmoji' ) || print "Bail out!\n";
}

diag( "Testing ACME::AsciiEmoji $ACME::AsciiEmoji::VERSION, Perl $], $^X" );
