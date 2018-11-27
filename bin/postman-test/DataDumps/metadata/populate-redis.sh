#!/usr/bin/env bash

LOAD_REDIS_DATA=../../../../go/cmd/load_redis_data.go

go run ${LOAD_REDIS_DATA} -t addressable <addressableDb.json
go run ${LOAD_REDIS_DATA} -t command <commandDb.json
go run ${LOAD_REDIS_DATA} -t device <deviceDb.json
go run ${LOAD_REDIS_DATA} -t deviceProfile <deviceProfileDb.json
go run ${LOAD_REDIS_DATA} -t deviceReport <deviceReportDb.json
go run ${LOAD_REDIS_DATA} -t deviceService <deviceserviceDb.json
go run ${LOAD_REDIS_DATA} -t provisionWatcher <provisioWatcherDb.json
go run ${LOAD_REDIS_DATA} -t schedule <scheduleDb.json
go run ${LOAD_REDIS_DATA} -t scheduleEvent <scheduleEventDb.json

