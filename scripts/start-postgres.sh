#!/bin/bash

postgres -D /usr/local/pgsql/data >logfile 2>&1 &

PID=$!

# this runtime porperty is used by the stop-postgres script.
ctx instance runtime_properties pid ${PID}

ctx logger info "Sucessfully started PostgresSQL (${PID})"
