# Project 01 - Listen to FM radio

Source: https://wiki.gnuradio.org/index.php?title=RTL-SDR_FM_Receiver

# Usage

To connect to your radio using SoapySDR, you need to tell the flowgraph where it can be found.

The default setting is:

```
remote,remote=tcp://192.168.1.43:55132,remote:driver=rtlsdr
```

This describes the following:
* `remote` - use the `remote` SoapySDR driver.
*  `remote=tcp://192.168.1.43:55132` - use `tcp` to connect the remote driver to a SoapyServer at `192.168.1.43.55132`
* `remote:driver=rtlsdr` - set the remote radio driver to `rtlsdr`.

You'll have to update the IP address (192.168.1.43), and if you have SoapyServer running, you can connect to localhost.
