use warnings;
use strict;

use LWP::Simple;

getstore('http://code.jquery.com/ui/1.9.1/themes/ui-lightness/jquery-ui.css', 'prerequisites/jquery-ui.css'       );
getstore('http://code.jquery.com/jquery-latest.min.js'                      , 'prerequisites/jquery-latest.min.js');
getstore('https://raw.githubusercontent.com/allmarkedup/purl/master/purl.js', 'prerequisites/purl.js'             ); # Purl: A JavaScript URL parser
