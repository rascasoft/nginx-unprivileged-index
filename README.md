# nginx-unprivileged-index

Quick and dirty directory index for unprivileged nginx.

## Example

`$PWD/mydir` under `http://localhost:8080/`:

    docker run -p 8080:8080 \
        -v $PWD/mydir:/ \
        rascasoft/nginx-unprivileged-index
