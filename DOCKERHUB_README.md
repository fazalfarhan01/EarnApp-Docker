# EarnApp Docker
### Docker Image for [EarnApp](https://earnapp.com)
[![DigitalOcean Referral Badge](https://web-platforms.sfo2.cdn.digitaloceanspaces.com/WWW/Badge%201.svg)](https://www.digitalocean.com/?refcode=bbb533f6add9&utm_campaign=Referral_Invite&utm_medium=Referral_Program&utm_source=badge)

Note: This is an unofficial build and comes with no warranty of any kind what so ever.
By using this image you also agree to BrightData's terms and conditions.


[Source Code](https://github.com/fazalfarhan01/earnapp_docker)

## Also works on ARM processors (Raspberry Pi(ARMv7)/ARM64)
### Please note: This image doesn't work on Windows/WSL 

## Available Tags
1. `latest` - Built and updated daily
2. `hourly-latest` - Built and updated every hour at UTC 10th minute.

## How to:
### _Non Compose_
1. Make a directory for earnapp data
    - `mkdir $HOME/earnapp-data`
2. Run the container
    - `docker run -d --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v $HOME/earnapp-data:/etc/earnapp --name earnapp fazalfarhan01/earnapp`
3. Get the UUID
    - `docker exec -it earnapp earnapp showid`
4. Copy and paste the app `UUID` in the [EarnApp Dashboard](https://earnapp.com/dashboard) 

### Compose
1. Make a new directory, create a file named `docker-compose.yml` and paste the following into it.
```YML
version: "3.3"
services:
  app:
    image: fazalfarhan01/earnapp
    privileged: true
    volumes:
       - /sys/fs/cgroup:/sys/fs/cgroup:ro
       - ./etc:/etc/earnapp
```
2. Run `docker-compose up -d`

3. You can access the earnapp cli using the command
    ```BASH
    docker-compose exec app earnapp <YOUR COMMAND GOES HERE>
    ```

## Like my work?
Consider donating.
- BTC: 1PdUFXmVUxy88NRPJ2RFuhyjUqMiJyZybR
- ETH: 0x715810d3619b6831b3d4ff0465ec3523aceb20c6
- PayPal: [@fazalfarhan01](https://www.paypal.me/fazalfarhan01)