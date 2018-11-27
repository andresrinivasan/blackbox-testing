#!/usr/bin/env sh

LOAD_REDIS_DATA=../../../../go/cmd/load_redis_data.go

go run ${LOAD_REDIS_DATA} -t event <eventDb.json
go run ${LOAD_REDIS_DATA} -t reading <readingDb.json
go run ${LOAD_REDIS_DATA} -t valueDescriptor <valueDescriptorDb.json
