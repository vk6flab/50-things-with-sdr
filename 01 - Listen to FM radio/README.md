# Project 01 - Listen to FM radio

Source: https://wiki.gnuradio.org/index.php?title=RTL-SDR_FM_Receiver

# Usage

To connect to your radio using SoapySDR, you need to tell the flowgraph where it can be found. The default setting is:

```txt
remote,remote=tcp://192.168.1.43:55132,remote:driver=rtlsdr
```

It describes the following:
* `*remote*,remote=tcp://192.168.1.43:55132,remote:driver=rtlsdr`, meaning, use the `remote` driver.
* `remote,remote=tcp://192.168.1.43:55132,remote:driver=rtlsdr`, meaning, set the remote driver destination to a server at `tcp://192.168.1.43.55132`.
* `remote,remote=tcp://192.168.1.43:55132,remote:driver=rtlsdr`, meaning, set the remote driver radio to `rtlsdr`.

You'll have to update the IP address (192.168.1.43), and if you have SoapyServer running, you can connect to localhost.
