#!/bin/bash
set -e

psql $POSTGRES_DB < db-empty.sql