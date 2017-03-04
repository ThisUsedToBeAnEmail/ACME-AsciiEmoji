package ACME::AsciiEmoji;

use 5.006;
use strict;
use warnings;
use Data::Dumper;
use Exporter::Shiny;

my %emojis = (
    innocent    => [ 202, 152, 226, 128, 191, 202, 152 ],
    disapproval => [ 224, 178, 160, 32,  95,  224, 178, 160 ],
    table_flip => [
        40,  226, 149, 175, 194, 176, 226, 150, 161, 194,
        176, 239, 188, 137, 226, 149, 175, 239, 184, 181,
        32,  226, 148, 187, 226, 148, 129, 226, 148, 187
    ],
    put_the_table_back => [
        226, 148, 172, 226, 148, 128, 226, 148, 172, 227, 131, 142, 40, 32,
        227, 130, 156, 45,  227, 130, 156, 227, 131, 142, 41
    ],
    double_flip => [
        226, 148, 187, 226, 148, 129, 226, 148, 187, 239, 184, 181, 227, 131,
        189, 40,  96,  208, 148, 194, 180, 41,  239, 190, 137, 239, 184, 181,
        226, 148, 187, 226, 148, 129, 226, 148, 187
    ],
    super_waving => [
        40,  32,  239, 190, 159, 226, 136, 128, 239, 190, 159, 41,  239, 189,
        177, 239, 190, 138, 239, 190, 138, 229, 133, 171, 229, 133, 171, 239,
        190, 137, 227, 131, 189, 239, 190, 137, 227, 131, 189, 239, 190, 137,
        227, 131, 189, 239, 190, 137, 32,  239, 188, 188, 32,  47,  32,  239,
        188, 188, 47,  32,  239, 188, 188
    ],
    fistacuffs => [
        225, 131, 154, 40,  239, 189, 128, 227,
        131, 188, 194, 180, 225, 131, 154, 41
    ],
    cute_bear => [ 
        202, 149, 226, 128, 162, 225, 180, 165, 226, 128, 162, 202, 148 
    ],
    big_eyes => [
        40,  239, 189, 161, 226, 151, 149, 226, 128, 191,
        226, 151, 149, 239, 189, 161, 41
    ],
    surprised => [
        239, 188, 136, 227, 128, 128, 239, 190, 159, 208,
        148, 239, 190, 159, 239, 188, 137
    ],
    shrug => [ 194, 175, 92, 95, 40,  227, 131, 132, 41, 95, 47,  194, 175 ],
    meh   => [ 194, 175, 92, 40, 194, 176, 95,  111, 41, 47, 194, 175 ],
    feel_perky => [ 
        40, 96, 239, 189, 165, 207, 137, 239, 189, 165, 194, 180, 41 
    ],
    angry => [
        40,  226, 149, 172, 32,  224, 178, 160, 32, 231,
        155, 138, 224, 178, 160, 32,  41
    ],
    excited => [
        226, 152, 156, 40,  226, 140, 146, 32,  226, 150,
        189, 226, 140, 146, 32,  41,  226, 152, 158
    ],
    running => [
        206, 181, 61, 206, 181, 61,  206, 181, 61, 226, 148, 140,
        40,  59,  42, 194, 180, 208, 148, 96,  41, 239, 190, 137
    ],
    happy => [ 227, 131, 189, 40, 194, 180, 226, 150, 189, 32, 96, 41, 47 ],
    basking_in_glory => [
        227, 131, 189, 40,  194, 180, 227, 131,
        188, 239, 189, 128, 41,  227, 131, 142
    ],
    kitty => [ 225, 181, 146, 225, 180, 165, 225, 181, 146, 35 ],
    meow  => [
        224, 184, 133, 94, 226, 128, 162, 239, 187, 140,
        226, 128, 162, 94, 224, 184, 133
    ],
    cheers => [
        239, 188, 136, 32,  94,  95,  94,  239, 188, 137, 111, 232, 135, 170,
        232, 135, 170, 111, 239, 188, 136, 94,  95,  94,  32,  239, 188, 137
    ],
    chan => [
        40,  32, 205, 161, 194, 176, 32, 205, 156, 202,
        150, 32, 205, 161, 194, 176, 41
    ],
    disagree => [ 217, 169, 226, 151, 148, 204, 175, 226, 151, 148, 219, 182 ],
    flexing  => [
        225, 149, 153, 40,  226, 135, 128, 226, 128, 184,
        226, 134, 188, 226, 128, 182, 41,  225, 149, 151
    ],
    do_you_lift_bro => [
        225, 149, 166, 40, 195, 178, 95, 195, 179, 203, 135, 41, 225, 149, 164
    ],
    'kirby' => [
        226, 138, 130, 40, 226, 151, 137, 226, 128, 191,
        226, 151, 137, 41, 227, 129, 164
    ],
    'tripping_out' => [ 
        113, 40, 226, 157, 130, 226, 128, 191, 226, 157, 130, 41, 112 
    ],
    'discombobulated' => [ 226, 138, 153, 239, 185, 143, 226, 138, 153 ],
    'sad_shrug'       => [
        194, 175, 92,  95,  40,  226, 138, 153, 32,  239,
        184, 191, 226, 138, 153, 41,  95,  47,  194, 175
    ],
    'confused' => [ 194, 191, 226, 147, 167, 95, 226, 147, 167, 239, 174, 140 ],
    'confused_scratch' => [ 40, 226, 138, 153, 46, 226, 152, 137, 41, 55 ],
    'worried' => [ 40, 194, 180, 239, 189, 165, 95, 239, 189, 165, 96, 41 ],
    'dear_god_why' => [
        209, 137, 239, 188, 136, 239, 190, 159, 208, 148,
        239, 190, 159, 209, 137, 239, 188, 137
    ],
    'staring' => [
        217, 169, 40, 205, 161, 224, 185, 143, 95, 224, 185, 143, 41, 219, 182
    ],
    'strut' => [ 225, 149, 149, 40, 32, 225, 144, 155, 32, 41, 225, 149, 151 ],
    'zoned' => [ 40, 226, 138, 153, 95, 226, 151, 142, 41 ],
    'crazy' => [
        227, 131, 159, 226, 151, 143, 239, 185,
        143, 226, 152, 137, 227, 131, 159
    ],
    'trolling' => [
        32,  224, 188, 188, 226, 136, 181, 224, 188, 189, 32,  224, 188, 188,
        226, 141, 168, 224, 188, 189, 32,  224, 188, 188, 226, 141, 162, 224,
        188, 189, 32,  224, 188, 188, 226, 141, 164, 224, 188, 189
    ],
    'angry_troll' => [
        227, 131, 189, 224, 188, 188, 32,  224, 178, 160, 231, 155,
        138, 224, 178, 160, 32,  224, 188, 189, 239, 190, 137
    ],
    'hugger' => [
        40,  227, 129, 165, 239, 191, 163, 32, 194, 179,
        239, 191, 163, 41,  227, 129, 165
    ],
    'stranger_danger' => [
        40,  227, 129, 165, 239, 189, 161, 226, 151, 149, 226, 128, 191, 226,
        128, 191, 226, 151, 149, 239, 189, 161, 41,  227, 129, 165
    ],
    'flip_friend' => [
        40,  227, 131, 142, 224, 178, 160, 32,  226, 136, 169, 224,
        178, 160, 41,  227, 131, 142, 229, 189, 161, 40,  32,  92,
        111, 194, 176, 111, 41,  92,  32
    ],
    'cry' => [
        239, 189, 161, 239, 190, 159, 40,  32,  239, 190,
        159, 224, 174, 135, 226, 128, 184, 224, 174, 135,
        239, 190, 159, 41,  239, 190, 159, 239, 189, 161
    ],
    'tgif' => [
        226, 128, 156, 227, 131, 189, 40,  194, 180, 226, 150, 189,
        239, 189, 128, 41,  227, 131, 142, 226, 128, 157
    ],
    'dancing' => [
        226, 148, 140, 40,  227, 134, 134, 227,
        137, 168, 227, 134, 134, 41,  202, 131
    ],
    'sleepy' => [ 235, 136, 136, 95, 235, 136, 136 ],
    'shy'    => [
        40,  224, 185, 145, 226, 128, 162, 204, 129, 32,  226, 130,
        131, 32,  226, 128, 162, 204, 128, 224, 185, 145, 41
    ],
    'fly_away' => [
        226, 129, 189, 226, 129, 189, 224, 172, 152, 40,
        32,  203, 138, 225, 181, 149, 203, 139, 32,  41,
        224, 172, 147, 226, 129, 190, 226, 129, 190
    ],
    'careless' => [ 226, 151, 148, 95,  226, 151, 148 ],
    'love'     => [ 226, 153, 165, 226, 128, 191, 226, 153, 165 ],
    'touchy' => [
        212, 133, 40,  226, 137, 150, 226, 128,
        191, 226, 137, 150, 212, 133, 41
    ],
    'robot' => [ 123, 226, 128, 162, 204, 131, 95, 226, 128, 162, 204, 131, 125 ],
    'seal'         => [ 40, 225, 181, 148, 225, 180, 165, 225, 181, 148, 41 ],
    'questionable' => [ 40, 212, 190, 226, 128, 184, 32,  212, 190, 41 ],
    'winning'      => [
        40,  226, 128, 162, 204, 128, 225, 180, 151, 226, 128, 162,
        204, 129, 41,  217, 136, 32,  204, 145, 204, 145
    ],
    'zombie'   => [ 91, 194, 172, 194, 186, 45, 194, 176, 93, 194, 172 ],
    'pointing' => [
        40,  226, 152, 158, 239, 190, 159, 227, 131, 174,
        239, 190, 159, 41,  226, 152, 158
    ],
    'chasing' => [
        39,  39,  226, 140, 144, 40,  224, 178, 160, 219,
        190, 224, 178, 160, 41,  194, 172, 39,  39,  39
    ],
);

our @EXPORT    = keys %emojis;
our @EXPORT_OK = keys %emojis;

=head1 NAME

ACME::AsciiEmoji - The great new ACME::AsciiEmoji!

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use ACME::AsciiEmoji;
    my $foo = ACME::AsciiEmoji->new();
    ...

=cut

sub ascii_emoji {
    my $emoj = $emojis{ $_[0] };
    return pack( 'A1' x scalar @{$emoj}, map { chr($_) } @{$emoj} );
}

sub innocent {
    return ascii_emoji('innocent');
}

sub disapproval {
    return ascii_emoji('disapproval');
}

sub table_flip {
    return ascii_emoji('table_flip');
}

sub put_the_table_back {
    return ascii_emoji('put_the_table_back');
}

sub double_flip {
    return ascii_emoji('double_flip');
}

sub super_waving {
    return ascii_emoji('super_waving');
}

sub fistacuffs {
    return ascii_emoji('fistacuffs');
}

sub cute_bear {
    return ascii_emoji('cute_bear');
}

sub big_eyes {
    return ascii_emoji('big_eyes');
}

sub surprised {
    return ascii_emoji('surprised');
}

sub shrug {
    return ascii_emoji('shrug');
}

sub meh {
    return ascii_emoji('meh');
}

sub feel_perky {
    return ascii_emoji('feel_perky');
}

sub angry {
    return ascii_emoji('angry');
}

sub excited {
    return ascii_emoji('excited');
}

sub running {
    return ascii_emoji('running');
}

sub happy {
    return ascii_emoji('happy');
}

sub basking_in_glory {
    return ascii_emoji('basking_in_glory');
}

sub kitty {
    return ascii_emoji('kitty');
}

sub meow {
    return ascii_emoji('meow');
}

sub cheers {
    return ascii_emoji('cheers');
}

sub devious {
    return ascii_emoji('devious');
}

sub chan {
    return ascii_emoji('chan');
}

sub disagree {
    return ascii_emoji('disagree');
}

sub flexing {
    return ascii_emoji('flexing');
}

sub do_you_lift_bro {
    return ascii_emoji('do_you_lift_bro');
}

sub kirby {
    return ascii_emoji('kirby');
}

sub tripping_out {
    return ascii_emoji('tripping_out');
}

sub discombobulated {
    return ascii_emoji('discombobulated');
}

sub sad_shrug {
    return ascii_emoji('sad_shrug');
}

sub confused {
    return ascii_emoji('confused');
}

sub confused_scratch {
    return ascii_emoji('confused_scratch');
}

sub worried {
    return ascii_emoji('worried');
}

sub dear_god_why {
    return ascii_emoji('dear_god_why');
}

sub staring {
    return ascii_emoji('staring');
}

sub strut {
    return ascii_emoji('strut');
}

sub zoned {
    return ascii_emoji('zoned');
}

sub crazy {
    return ascii_emoji('crazy');
}

sub trolling {
    return ascii_emoji('trolling');
}

sub angry_troll {
    return ascii_emoji('angry_troll');
}

sub hugger {
    return ascii_emoji('hugger');
}

sub stranger_danger {
    return ascii_emoji('stranger_danger');
}

sub flip_friend {
    return ascii_emoji('flip_friend');
}

sub cry {
    return ascii_emoji('cry');
}

sub tgif {
    return ascii_emoji('tgif');
}

sub dancing {
    return ascii_emoji('dancing');
}

sub sleepy {
    return ascii_emoji('sleepy');
}

sub fly_away {
    return ascii_emoji('fly_away');
}

sub careless {
    return ascii_emoji('careless');
}

sub love {
    return ascii_emoji('love');
}

sub touchy {
    return ascii_emoji('touchy');
}

sub robot {
    return ascii_emoji('robot');
}

sub seal {
    return ascii_emoji('seal');
}

sub questionable {
    return ascii_emoji('questionable');
}

sub winning {
    return ascii_emoji('winning');
}

sub zombie {
    return ascii_emoji('zombie');
}

sub pointing {
    return ascii_emoji('pointing');
}

sub chasing {
    return ascii_emoji('chasing');
}

sub shy {
    return ascii_emoji('shy');
}

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 AUTHOR

LNATION, C<< <thisusedtobeanemail at gmail.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-acme-asciiemoji at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=ACME-AsciiEmoji>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc ACME::AsciiEmoji


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=ACME-AsciiEmoji>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/ACME-AsciiEmoji>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/ACME-AsciiEmoji>

=item * Search CPAN

L<http://search.cpan.org/dist/ACME-AsciiEmoji/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2017 LNATION.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

1;    # End of ACME::AsciiEmoji
