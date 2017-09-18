# docker-bfgminer

[![](https://images.microbadger.com/badges/version/fabriziogaliano/bfgminer.svg)](https://microbadger.com/images/fabriziogaliano/bfgminer "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/fabriziogaliano/bfgminer.svg)](https://microbadger.com/images/fabriziogaliano/bfgminer "Get your own image badge on microbadger.com")

Docker images for x86_64 with BFG miner for ASIC/FPGA devices and Scrypt, Sha256, X11, etc... algo (ex. LTC / BTC / DASH / ETH)

Tried with Gridseed Miner, would work with Zeus and other as well, override commad if you want use different devices!

```
version: '2'
services:
   bfgminer:
      image: fabriziogaliano/bfgminer:x86

      container_name: bfgminer-x86
      network_mode: host
      privileged: true
      tty: true

      command: ["/home/bfgminer/bfgminer", "-S", "gridseed:all", "--set-device", "gridseed:clock=800", "--failover-only", "--scrypt", "--userpass", "fabri555.2:2",  "--url", "stratum+tcp://litecoinpool.org:3333"]

      restart: always

```

# HAPPY MINING! :)
