#!/usr/bin/perl -w

use strict;

use warnings;

my $dir = '/data04/kafka/data';
opendir(DIR, $dir ) or die $!;

while (my $subfolder = readdir(DIR)){
        next if ($subfolder =~ m/^\./);
        print "/data04/kafka/data/$subfolder\n";
}



 $dir = '/data05/kafka/data';
opendir(DIR, $dir ) or die $!;

while (my $subfolder1 = readdir(DIR)){
        next if ($subfolder1 =~ m/^\./);
        print "/data05/kafka/data/$subfolder1\n";
}


 $dir = '/data08/kafka/data';
opendir(DIR, $dir ) or die $!;

while (my $subfolder2 = readdir(DIR)){
        next if ($subfolder2 =~ m/^\./);
        print "/data08/kafka/data/$subfolder2\n";
}


 $dir = '/data09/kafka/data';
opendir(DIR, $dir ) or die $!;

while (my $subfolder3 = readdir(DIR)){
        next if ($subfolder3 =~ m/^\./);
        print "/data09/kafka/data/$subfolder3\n";
}


close(DIR);


exit 0;

