#!/usr/bin/env perl 
use warnings;
use strict;
use IPC::Open2;

$| = 1;
chdir "/"; #!!!!!!!!!!!!!!!!!!!!!!!!!!

my $pid = open2(\*out2, \*in2, './get_flag') or die;

my $reply = <out2>;
print STDOUT $reply; #string: solve captcha..
$reply = <out2>;
print STDOUT $reply; #captcha formula

my $answer = eval($reply);
print STDOUT "answer: $answer\n"; 

print in2 " $answer "; #send it to process
in2->flush();

$reply = <out2>;
print STDOUT $reply; #flag :D