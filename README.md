# about-jqGrid


    git submodule update --init
    perl fetch_required_files.pl

-----

[`addRowData.html`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/addRowData.html) uses a *local datasource* and `addRowData` to dynamically add rows on the client side.

[`WebServer.pl`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/WebServer.pl) is a Web Server (using [perl-tcp](https://github.com/ReneNyffenegger/perl-tcp)) in order
to feed jqGrid with data from it. It listens on port 2808.

[`json_http_request.html`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/json_http_request.html) retrieves json data (from the WebServer) and populates
a jqGrid.
