#!perl

use strict;
use warnings;
use Test::More 0.98;

use Algorithm::Retry::Constant;

#subtest "required arguments" => sub {
#};

subtest "basics" => sub {
    my $ar = Algorithm::Retry::Constant->new(
        delay_on_failure => 2,
        delay_on_success => 1,
    );

    is($ar->success(1), 1);
    is($ar->success(2), 1);
    is($ar->failure(3), 2);
    is($ar->failure(4), 2);
};

# XXX test jitters

DONE_TESTING:
done_testing;
