use Moonshine::Test qw/:all/;
use ACME::AsciiEmoji;

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::innocent,
    expected => 'ʘ‿ʘ',
);


moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::disapproval,
    expected => 'ಠ _ಠ',
);

sunrise();
