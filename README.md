# Raspberry Pi-based MIDI router

This is a really simple experimental MIDI router implemented in Raspberry Pi.

The idea is simple: I have a synth that has the only MIDI-In over USB and lacking plain MIDI-In.
At the same time I want to send external events to it.

To deal with that I use Raspberry Pi B and just translate all midi messages from USB keyboard to MIDI device.

### Usage

Update FROM and TO in `connect.sh` and run the service. You can get those values by running `aconnect -l`.

To enable auto-start in Raspberry Pi checkout the repository to `/usr/local/midirouter` on your Pi, then run:
```
sudo ln -s /usr/local/midirouter/midirouter.service /etc/systemd/system
sudo systemctl enable midirouter
sudo systemctl start midirouter
```

Check if it started up correctly:
```
journalctl -u midirouter
```

You should see lines like this:
```
Feb 13 23:43:36 raspberrypi connect.sh[472]: + aconnect -l
Feb 13 23:43:36 raspberrypi connect.sh[472]: + sleep 1
Feb 13 23:43:37 raspberrypi connect.sh[472]: + true
Feb 13 23:43:37 raspberrypi connect.sh[472]: + grep -q Connecting To
Feb 13 23:43:37 raspberrypi connect.sh[472]: + aconnect -l
```

### License and author
* License:: MIT
* Author:: Timur Batyrshin <erthad@gmail.com>
