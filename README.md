# nginx-unprivileged-index

Quick and dirty directory index unprivileged NGINX web server container.

## NGINX configuration

The web server is configured with the simplest possible `default.conf`:

```nginx
server {
    listen       8080;
    server_name  localhost;

    location / {
        root   /usr/share/nginx/html;
        autoindex on;
    }
}
```

## Launching the container

If the directory you want to index is `$PWD/mydir` you will invoke `docker` as
follows:

```console
$ docker run \
    -p 8080:8080 \
    -v $PWD/mydir:/usr/share/nginx/html \
    rascasoft/nginx-unprivileged-index
```

The web server will be available at [http://localhost:8080/](http://localhost:8080/).

## License

MIT

## Author Information

Raoul Scarazzini ([rascasoft](https://github.com/rascasoft))
