FROM httpd:2.4

RUN mv /usr/local/bin/httpd-foreground /usr/local/bin/httpd-foreground-original

COPY httpd.tpl.conf /usr/local/apache2/conf/httpd.tpl.conf

COPY httpd-foreground.sh /usr/local/bin/httpd-foreground

RUN chmod +x  /usr/local/bin/httpd-foreground
