FROM golang:1.13.7

RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y apt-transport-https lsb-release ca-certificates wget curl
RUN apt-get clean
RUN apt-get autoclean

RUN go get gopkg.in/urfave/cli.v2
RUN go get github.com/oxequa/realize

# COPY entrypoint.sh /root/
# RUN chmod +x /root/entrypoint.sh

# FROM golang:1.12-alpine
# RUN apk add -U --no-cache git ca-certificates
# ADD go.mod go.sum m/
# RUN cd m && go mod download
# ADD . m/
# RUN cd m && go install -mod=readonly ./cmd/foo
# RUN go clean -modcache -cache std
# ENTRYPOINT ["foo"]

COPY ./ /go/jerwa
WORKDIR /go/jerwa

COPY ./docker/go/sites-enabled/dev.conf /etc/nginx/sites-enabled/jerwa.conf

EXPOSE 80

ENTRYPOINT service nginx start && realize start --run
