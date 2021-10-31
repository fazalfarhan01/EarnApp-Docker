# EarnApp Docker
### Docker Image for [EarnApp](https://earnapp.com)
Note: This is an unofficial build and comes with no warranty of any kind what so ever.
By using this image you also agree to BrightData's terms and conditions.

## How to:
### _Non Compose_
1. Make a directory for earnapp data
    - `mkdir $(HOME)/earnapp-data`
2. Run the container
    - `docker run -d --privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro -v $(HOME)/earnapp-data:/etc/earnapp --name earnapp fazalfarhan01/earnapp`
3. Start the install procedure
    - `docker exec -it earnapp install`
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
3. And then 
    ```BASH
    docker-compose exec app install
    ```
    This will install the app with persistant data.

3. You can access the earnapp cli using the command
    ```BASH
    docker-compose exec app earnapp <YOUR COMMAND GOES HERE>
    ```