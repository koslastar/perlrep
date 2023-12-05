#!/usr/bin/perl
use strict;
use warnings;

my $filename = 'example.txt';
open my $file, '<', $filename or die "Failed to open file '$filename': $!";

my $output_filename = 'output.txt';
open my $output_file, '>', $output_filename or die "Could not create file '$output_filename': $!";

while (<$file>) {
     s/old_text/new_text/g; # Replace all occurrences of 'old_text' with 'new_text'
     print $output_file $_;
}

close $file;
close $output_file;

print "Replacements are complete. The result is written to the file '$output_filename'\n";
