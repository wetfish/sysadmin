server {
    listen         80;
    server_name    wet.fish www.wet.fish;

    root /home/wetfish/Projects/wet.fish/public_html;
    index index.html index.htm;

    # define error page
    error_page 404 = @notfound;

    # error page location redirect 301
    location @notfound {
        return 302 https://wiki.wetfish.net$uri;
    }
}
