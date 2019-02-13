# Raspberry Pi-based MIDI router

This is a really simple experimental MIDI router implemented in Raspberry Pi.

The idea is simple: I have a synth that has the only MIDI-In over USB and lacking plain MIDI-In.
At the same time I want to send external events to it.

To deal with that I use Raspberry Pi B and just translate all midi messages from USB keyboard to MIDI device.

### Usage

Update FROM and TO in `connect.sh` and run the service. You can get those values by running `aconnect -l`.

### License and author
* License:: MIT
* Author:: Timur Batyrshin <erthad@gmail.com>
