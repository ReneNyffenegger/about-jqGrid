use warnings;
use strict;

use File::Fetch;

fetch('http://code.jquery.com/ui/1.9.1/themes/ui-lightness/jquery-ui.css');
fetch('http://code.jquery.com/jquery-latest.min.js'                      );

sub fetch { # {{{
    my $uri     = shift;
    my $fetcher = new File::Fetch(uri=>$uri);
    $fetcher->fetch;
} # }}}
