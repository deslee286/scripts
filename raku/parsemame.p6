#!/usr/bin/perl6
# After creating the file with just names and input methods, extract using:
# grep "dial\|doublejoy" t.out | grep -v wheel | grep -v pedal > dial.and.double.txt

#my $str = "ACG GCT ACT An interesting chain";
#say $str ~~ /<[ACGT\s]>+ \s+ (<[A..Z a..z \s]>+)/;
# OUTPUT: «｢ACG GCT ACT An interesting chain｣ 0 => ｢An interesting chain｣
#say $str ~~ /<[ACGT\s]>+: \s+ (<[A..Z a..z \s]>+)/;
# OUTPUT: «Nil
#exit;

# Let's read the file:
my $text = slurp "/home/deslee/skinny.xml";
put round( $text.chars / 1024 / 1024, 0.01 ) ~ " MB";
my @machines = split( "machine name=", $text );
pop @machines;

for @machines {
    if /^\"(<-["]>+)/ {
       my $machine_name = $0;
       # Now read in the input methods:
       my %ims;
       my @matches = m:global/'control type='\"(<-["]>+)/;
#       say @matches.elems;
       put $machine_name ~ ",", map( { s/'control type="'//; $_ }, @matches ).join("+"); # $/[0] ~ %ims.keys.join( "," );
    }
#    put $name;
}
#my $machine_name = 

exit;

use XML;



my $xml = from-xml-file('/home/deslee/skinny.xml');

exit;
say $xml[1]<en> ~ $xml[1][0]; ## "hello world"
say $xml[3][5][0]; ## "Maybe"

$xml[3].append('item', 'Never mind');

say $xml[3][9]; ## <item>Never mind</item>

