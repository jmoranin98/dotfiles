#!/usr/bin/bash

current_active_sink=$(pacmd list-sinks | grep '* index' | awk '{split($0, a, " "); print a[3]}' | xargs)

default_sink="2"

if [ $current_active_sink = "2" ]
then
  default_sink="1"
fi

if [ $current_active_sink = "1" ]
then
  default_sink="2"
fi

pacmd set-default-sink $default_sink