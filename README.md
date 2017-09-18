# docker-raspbian-bfgminer
Docker images for Raspberry Pi with BFG miner for ASIC/FPGA devices and Scrypt and Sha256 algo (ex. LTC / BTC)

Tryed with Gridseed Miner, would work with Zeus and other as well, by default this image is designed for GridSeed miner, override commad if you want use different devices!

Specify --> user, password and URL; below an example:

```
version: '2'
services:
   bfgminer:
      image: fabriziogaliano/docker-raspbian-bfgminer:latest

      networks: host

      environments:
         BFG_USER: "fabri555.2"
         BFG_PASSWORD: "2"
         BFG_URL: "stratum+tcp://litecoinpool.org:3333"

```

If you want ovverride the command by using docker compose simply insert the following command, of course with your custom configuration! :

```
         command: [ "/home/bfgminer/Bfgminer", "-S", "gridseed:all", "--set-device", "gridseed:clock=800", "--failover-only", "--scrypt", "--userpass", "fabri555.2:2", "--url", "stratum+tcp://litecoinpool.org:3333" ]

```

# HAPPY MINING! :)