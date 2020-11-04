FROM alpine:3.12.1
RUN apk --no-cache add curl=7.69.1-r1
SHELL ["/bin/ash", "-eo", "pipefail", "-c"]
RUN curl -sSL https://github.com/stackrox/kube-linter/releases/download/0.1.2/kube-linter-linux.tar.gz  | tar -xz
CMD ["/kube-linter", "lint", "-"]
