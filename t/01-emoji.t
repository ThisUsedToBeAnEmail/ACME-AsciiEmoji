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

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::table_flip,
    expected => '(╯°□°）╯︵ ┻━┻',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::put_the_table_back,
    expected => '┬─┬ノ( ゜-゜ノ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::double_flip,
    expected => '┻━┻︵ヽ(`Д´)ﾉ︵┻━┻',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::super_waving,
    expected => '( ﾟ∀ﾟ)ｱﾊﾊ八八ﾉヽﾉヽﾉヽﾉ ＼ / ＼/ ＼',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::fistacuffs,
    expected => 'ლ(｀ー´ლ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::cute_bear,
    expected => 'ʕ•ᴥ•ʔ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::big_eyes,
    expected => '(｡◕‿◕｡)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::surprised,
    expected => '（　ﾟДﾟ）',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::shrug,
    expected => '¯\_(ツ)_/¯',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::meh,
    expected => '¯\(°_o)/¯',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::feel_perky,
    expected => '(`･ω･´)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::angry,
    expected => '(╬ ಠ 益ಠ )',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::excited,
    expected => '☜(⌒ ▽⌒ )☞',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::running,
    expected => 'ε=ε=ε=┌(;*´Д`)ﾉ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::happy,
    expected => 'ヽ(´▽ `)/',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::basking_in_glory,
    expected => 'ヽ(´ー｀)ノ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::kitty,
    expected => 'ᵒᴥᵒ#',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::meow,
    expected => 'ฅ^•ﻌ•^ฅ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::cheers,
    expected => '（ ^_^）o自自o（^_^ ）',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::chan,
    expected => '( ͡° ͜ʖ ͡°)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::disagree,
    expected => '٩◔̯◔۶',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::do_you_lift_bro,
    expected => 'ᕦ(ò_óˇ)ᕤ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::kirby,
    expected => '⊂(◉‿◉)つ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::tripping_out,
    expected =>'q(❂‿❂)p'
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::discombobulated,
    expected =>'⊙﹏⊙',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::sad_shrug,
    expected => '¯\_(⊙ ︿⊙)_/¯',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::confused,
    expected => '¿ⓧ_ⓧﮌ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::confused_scratch,
    expected => '(⊙.☉)7',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::dear_god_why,
    expected => 'щ（ﾟДﾟщ）',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::strut,
    expected => 'ᕕ( ᐛ )ᕗ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::zoned,
    expected => '(⊙_◎)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::crazy,
    expected => 'ミ●﹏☉ミ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::trolling,
    expected => ' ༼∵༽ ༼⍨༽ ༼⍢༽ ༼⍤༽'
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::angry_troll,
    expected => 'ヽ༼ ಠ益ಠ ༽ﾉ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::hugger,
    expected => '(づ￣ ³￣)づ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::stranger_danger,
    expected => '(づ｡◕‿‿◕｡)づ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::flip_friend,
    expected => '(ノಠ ∩ಠ)ノ彡( \o°o)\ ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::cry,
    expected => '｡ﾟ( ﾟஇ‸இﾟ)ﾟ｡',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::tgif,
    expected => '“ヽ(´▽｀)ノ”',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::dancing,
    expected => '┌(ㆆ㉨ㆆ)ʃ',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::sleepy,
    expected => '눈_눈',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::shy,
    expected => '(๑•́ ₃ •̀๑)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::fly_away,
    expected => '⁽⁽ଘ( ˊᵕˋ )ଓ⁾⁾',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::careless,
    expected => '◔_◔',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::love,
    expected => '♥‿♥',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::touchy,
    expected => 'ԅ(≖‿≖ԅ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::robot,
    expected => '{•̃_•̃}',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::seal,
    expected => '(ᵔᴥᵔ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::questionable,
    expected => '(Ծ‸ Ծ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::winning,
    expected => '(•̀ᴗ•́)و ̑̑',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::zombie,
    expected => '[¬º-°]¬',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::pointing,
    expected => '(☞ﾟヮﾟ)☞',
);

moon_test_one(
    test => 'scalar',
    meth => \&ACME::AsciiEmoji::chasing,
    expected => "''⌐(ಠ۾ಠ)¬'''",
);

sunrise();
