#!/bin/bash
kill -9 $(ps aux | grep '[i]nfinite.sh' | awk '{print $2}')


