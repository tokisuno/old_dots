#IMPORTANT FOR WHEN USING SLIPPI ON LINUX

1 - Type the following into your terminal
```sudo rm -f /etc/udev/rules.d/51-gcadapter.rules && sudo touch /etc/udev/rules.d/51-gcadapter.rules && echo 'SUBSYSTEM=="usb", ENV{DEVTYPE}=="usb_device", ATTRS{idVendor}=="057e", ATTRS{idProduct}=="0337", MODE="0666"' | sudo tee /etc/udev/rules.d/51-gcadapter.rules > /dev/null && sudo udevadm control --reload-rules```

2 - It should work from here. If not, run this

```sudo systemctl restart udev.service && sudo systemctl restart systemd-udevd.service
```
