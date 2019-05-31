FROM alpine:latest

MAINTAINER dbye68@gmail.com

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apk --no-cache add git tar bzip2 ca-certificates && update-ca-certificates

# get sample Armidale spatial data

RUN wget --no-check-certificate -O sampledata.tar.gz https://github.com/NSW-OEH-EMS-KST/grid-garage-sample-data/archive/GridGarage_SampleData_v1.0.2.tar.gz && \
    tar -xzf sampledata.tar.gz && rm sampledata.tar.gz

# get sample MCASS spatial data

RUN wget --no-check-certificate -O sampledata.tar.gz https://github.com/byezy/mcassexample/archive/v1.0.tar.gz && \
    tar -xzf sampledata.tar.gz && rm sampledata.tar.gz
