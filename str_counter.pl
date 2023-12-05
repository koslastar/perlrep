#!/usr/bin/perl
use strict;
use warnings;

my $filename = 'example.txt';
open my $file, '<', $filename or die "Failed to open file '$filename': $!";

my $line_count = 0;
while (<$file>) {
     $line_count++;
}

close $file;

print "Number of lines in file '$filename': $line_count\n";
