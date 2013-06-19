package Monitorel::Worker::TheSchwartz;
use strict;
use warnings;
use parent qw(TheSchwartz::Worker);

use Try::Tiny;

use Monitorel::Worker;

sub max_retries { 1 }

sub work {
    my $class = shift;
    my $job   = shift;

    try {
        Monitorel::Worker->fetch_and_store_stat($job->arg);
    } catch {
        return $job->failed($_, 1);
    };
    return $job->completed;
}

1;