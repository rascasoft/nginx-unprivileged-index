FROM nginxinc/nginx-unprivileged:alpinebookworm-perl

COPY default.conf /etc/nginx/conf.d/default.conf
