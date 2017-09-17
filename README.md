# docker-raspbian-bfgminer
Docker images for Raspberry Pi with BFG miner for ASIC/FPGA devices and Scrypt and Sha256 algo (ex. LTC / BTC)

Tryed with Gridseed Miner, would work with Zeus as well, ofcourse by default this image is designed for GridSeed miner, override commad if you want use different devices! HaPpY MiNinG! :)

Specify --> Algorithm, device, clock of the device processor, user, password and URL; below an example

```
/docker/bin/Bfgminer -S gridseed:all --set-device gridseed:clock=800 --failover-only --scrypt --userpass fabri555.2:2 --url stratum+tcp://litecoinpool.org:3333

```
