#!/usr/bin/perl

# Compile testing for LWP-Online

use strict;
BEGIN {
	$|  = 1;
	$^W = 1;
}

use Test::More tests => 3;

ok( $] >= 5.005, "Your perl is new enough" );

use_ok('LWP::Online');

ok( ! defined &online, 'LWP::Online does not export by default' );

if ( $ENV{AUTOMATED_TESTING} ) {
	diag( "Exporter:    " . Exporter->VERSION    . "\n" );
	diag( "LWP::Online: " . LWP::Online->VERSION . "\n" );
}
