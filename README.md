# docker-bfgminer

[![](https://images.microbadger.com/badges/version/fabriziogaliano/docker-bfgminer.svg)](https://microbadger.com/images/fabriziogaliano/docker-bfgminer "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/fabriziogaliano/docker-bfgminer.svg)](https://microbadger.com/images/fabriziogaliano/docker-bfgminer "Get your own image badge on microbadger.com")

Docker images for Raspberry Pi with BFG miner for ASIC/FPGA devices and Scrypt, Sha256, X11, etc... algo (ex. LTC / BTC / DASH / ETH)

Tried with Gridseed Miner, would work with Zeus and other as well,override commad if you want use different devices!

```
version: '2'
services:
   bfgminer:
      image: fabriziogaliano/rpi-bfgminer:arm

      container_name: bfgminer-arm
      network_mode: host
      privileged: true
      tty: true

      command: ["/home/bfgminer/bfgminer", "-S", "gridseed:all", "--set-device", "gridseed:clock=800", "--failover-only", "--scrypt", "--userpass", "fabri555.2:2",  "--url", "stratum+tcp://litecoinpool.org:3333"]

```

# HAPPY MINING! :)