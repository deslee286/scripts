#!/usr/bin/perl6
use XML;

my $xml = from-xml-file('test.xml');

say $xml[1]<en> ~ $xml[1][0]; ## "hello world"
say $xml[3][5][0]; ## "Maybe"

$xml[3].append('item', 'Never mind');

say $xml[3][9]; ## <item>Never mind</item>

