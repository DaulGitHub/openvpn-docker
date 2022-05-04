# Old version openvpn client

The aim of the repository have capabilities run an old version(2.4.7) openvpn client.


## Build image and start container
* Create directory conf in the root of project:
    ```
    mkdir conf
    ```
* Copy to conf directory files - ca.crt, config_linux.conf, creds, ta.key
* Build the image:
    ```
    docker-compose build
    ```
* Run the openvpn container
    ```
    docker-compose up -d
    ```
