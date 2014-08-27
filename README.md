# about-jqGrid


    git submodule update --init
    perl fetch_prerequisites.pl

-----

[`fetch_prerequisites.pl`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/fetch_prerequisites.pl) is a Perl script that fetches `jquery-latest.min.js`,
`jquery-ui.css` (currently for the lightness theme) and [Purl](https://github.com/allmarkedup/purl).

-----

[`addRowData.html`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/addRowData.html) uses a *local datasource* and `addRowData` to dynamically add rows on the client side.

[`cdn.html`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/cdn.html) uses Content Delivery Networks (CDNs) for the required Javascript and CSS files.

[`custom_formatter_links.html`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/custom_formatter_links.html) is an exaple that demonstrates how to convert
a cell into a `<a href=...` link. The target (the `href`) of this link 
[`custom_formatter_links_target.html`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/custom_formatter_links_target.html).

[`json_http_request.html`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/json_http_request.html) retrieves json data (from the WebServer, see `WebServer.pl` below) and populates
a jqGrid.

[`WebServer.pl`](https://github.com/ReneNyffenegger/about-jqGrid/blob/master/WebServer.pl) is a Web Server (using [perl-tcp](https://github.com/ReneNyffenegger/perl-tcp)) in order
to feed jqGrid with data from it. It listens on port 2808. This Webserver is used in conjunction with `json_http_request.html`.
