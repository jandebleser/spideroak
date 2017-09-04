#!/usr/bin/env bash

sleep $SLEEP

if [ $HEADLESS ] ; then
    SpiderOakONE -v --headless $@
else
    SpiderOakONE $@
fi
