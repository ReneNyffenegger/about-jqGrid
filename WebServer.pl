use warnings;
use strict;
use feature 'switch';
use File::Slurp;

use lib 'perl-tcp'; # https://github.com/ReneNyffenegger/perl-tcp
use tq84::HTTP::Server;

tq84::HTTP::Server::start('localhost', 2808, \&request);

sub request { # {{{

    my $req = shift;

    given ($req->path) {

      when ('/') {
        $req->answer_file('index.html');
      }
      when ('/json_http_request') {
        json_http_request($req);
      }
      when ('/custom_formatter_rows') {
        json_http_request($req);
      }
      default {
        $req->answer_file("./" . $req->path);
      }
    }
} # }}}

sub json_http_request { # {{{
    my $req = shift;

    $req -> answer('200 Ok', 'application/json',
     '{"total"  : 1' . # total pages for the query
     ',"page"   : 1' . # current page of the query
     ',"records": 6' . # total number of records for the query
     ',"rows"   :  ' . # An array that contains the actual data
     '[
        {"id": 1, "cell": ["one"  , 20, "bla"        ]},
        {"id": 2, "cell": ["two"  , 30, "more bla"   ]},
        {"id": 3, "cell": ["three", 40, "then what"  ]},
        {"id": 4, "cell": ["four" , 50, "what now"   ]},
        {"id": 5, "cell": ["five" , 60, "bla bla bla"]},
        {"id": 6, "cell": ["six"  , 70, "the end"    ]}
      ]' . 
     '}');

    
} # }}}
