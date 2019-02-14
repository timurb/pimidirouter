#!/bin/sh

exec /usr/bin/pd -nosound -alsamidi -listdev -stderr -rt -midiindev 1 -midioutdev 1 -nogui -open $(dirname $0)/midirouter.pd 
