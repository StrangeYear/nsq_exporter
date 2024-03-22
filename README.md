# NSQ Exporter

[![GoDoc](https://godoc.org/github.com/StrangeYear/nsq_exporter?status.svg)](https://godoc.org/github.com/StrangeYear/nsq_exporter) [![Build Status](https://travis-ci.org/StrangeYear/nsq_exporter.svg?branch=master)](https://travis-ci.org/StrangeYear/nsq_exporter) [![](https://images.microbadger.com/badges/image/StrangeYear/nsq_exporter.svg)](https://microbadger.com/images/StrangeYear/nsq_exporter "Get your own image badge on microbadger.com")

NSQ exporter for prometheus.io, written in go.

## Usage

    docker run -d --name nsq_exporter -l nsqd:nsqd -p 9117:9117 StrangeYear/nsq_exporter:latest -nsq.addr=http://nsqd:4151 -collectors=nsqstats

## Building

    make

    OR

    go get -u github.com/StrangeYear/nsq_exporter
    go install github.com/StrangeYear/nsq_exporter

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request
