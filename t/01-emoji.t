use Moonshine::Test qw/:all/;
use Acme::AsciiEmoji;
use strict;
use warnings;

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::innocent,
    expected => 'ʘ‿ʘ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::disapproval,
    expected => 'ಠ_ಠ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::table_flip,
    expected => '(╯°□°）╯︵ ┻━┻',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::put_the_table_back,
    expected => '┬─┬ノ( ゜-゜ノ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::double_flip,
    expected => '┻━┻︵ヽ(`Д´)ﾉ︵┻━┻',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::super_waving,
    expected => '( ﾟ∀ﾟ)ｱﾊﾊ八八ﾉヽﾉヽﾉヽﾉ ＼ / ＼/ ＼',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::fistacuffs,
    expected => 'ლ(｀ー´ლ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::cute_bear,
    expected => 'ʕ•ᴥ•ʔ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::big_eyes,
    expected => '(｡◕‿◕｡)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::surprised,
    expected => '（　ﾟДﾟ）',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::shrug,
    expected => '¯\_(ツ)_/¯',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::meh,
    expected => '¯\(°_o)/¯',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::feel_perky,
    expected => '(`･ω･´)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::angry,
    expected => '(╬ ಠ益ಠ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::excited,
    expected => '☜(⌒ ▽⌒ )☞',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::running,
    expected => 'ε=ε=ε=┌(;*´Д`)ﾉ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::happy,
    expected => 'ヽ(´▽ `)/',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::basking_in_glory,
    expected => 'ヽ(´ー｀)ノ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::kitty,
    expected => 'ᵒᴥᵒ#',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::meow,
    expected => 'ฅ^•ﻌ•^ฅ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::cheers,
    expected => '（ ^_^）o自自o（^_^ ）',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::chan,
    expected => '( ͡° ͜ʖ ͡°)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::disagree,
    expected => '٩◔̯◔۶',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::do_you_lift_bro,
    expected => 'ᕦ(ò_óˇ)ᕤ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::kirby,
    expected => '⊂(◉‿◉)つ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::tripping_out,
    expected =>'q(❂‿❂)p'
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::discombobulated,
    expected =>'⊙﹏⊙',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::sad_shrug,
    expected => '¯\_(⊙ ︿⊙)_/¯',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::confused,
    expected => '¿ⓧ_ⓧﮌ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::confused_scratch,
    expected => '(⊙.☉)7',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::dear_god_why,
    expected => 'щ（ﾟДﾟщ）',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::strut,
    expected => 'ᕕ( ᐛ )ᕗ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::zoned,
    expected => '(⊙_◎)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::crazy,
    expected => 'ミ●﹏☉ミ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::trolling,
    expected => ' ༼∵༽ ༼⍨༽ ༼⍢༽ ༼⍤༽'
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::angry_troll,
    expected => 'ヽ༼ ಠ益ಠ ༽ﾉ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::hugger,
    expected => '(づ￣ ³￣)づ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::stranger_danger,
    expected => '(づ｡◕‿‿◕｡)づ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::flip_friend,
    expected => '(ノಠ ∩ಠ)ノ彡( \o°o)\ ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::cry,
    expected => '｡ﾟ( ﾟஇ‸இﾟ)ﾟ｡',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::tgif,
    expected => '“ヽ(´▽｀)ノ”',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::dancing,
    expected => '┌(ㆆ㉨ㆆ)ʃ',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::sleepy,
    expected => '눈_눈',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::shy,
    expected => '(๑•́ ₃ •̀๑)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::fly_away,
    expected => '⁽⁽ଘ( ˊᵕˋ )ଓ⁾⁾',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::careless,
    expected => '◔_◔',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::love,
    expected => '♥‿♥',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::touchy,
    expected => 'ԅ(≖‿≖ԅ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::robot,
    expected => '{•̃_•̃}',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::seal,
    expected => '(ᵔᴥᵔ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::questionable,
    expected => '(Ծ‸ Ծ)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::winning,
    expected => '(•̀ᴗ•́)و ̑̑',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::zombie,
    expected => '[¬º-°]¬',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::pointing,
    expected => '(☞ﾟヮﾟ)☞',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::chasing,
    expected => "''⌐(ಠ۾ಠ)¬'''",
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::okay,
    expected => '( •_•)',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::put_sunglasses_on,
    expected => '( •_•)>⌐■-■',
);

moon_test_one(
    test => 'scalar',
    meth => \&Acme::AsciiEmoji::sunglasses,
    expected => '(⌐■_■)',
);

sunrise();
