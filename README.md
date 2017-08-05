# Usenet Docker

This repo is my version of another fork. Setup should be a bit easier but even the original was pretty straightforward.

## Containers
* [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy) - Nginx Proxy
* [linuxserver/sabnzbd](https://github.com/linuxserver/docker-sabnzbd) - SABnzbd
* [linuxserver/couchpotato](https://github.com/linuxserver/docker-couchpotato) - CouchPotato
* [plexinc/pms-docker](https://github.com/plexinc/pms-docker) - Plex
* [linuxserver/sonarr](https://github.com/linuxserver/docker-sonarr) - Sonarr
* [linuxserver/muximux](https://github.com/linuxserver/docker-muximux) - Muximux
* [linuxserver/ombi](https://github.com/linuxserver/docker-ombi) - Ombi

## Docker Setup
1. Update `./uidgid.env` with the user and group IDs that will be running Docker
2. Update `./.env` and add your own Hostname as well as your directory for config, downloads, movies and TV folders
3. Choose which Usenet services containers the use and remove the extras from the `./docker-compose.yml` file
4. Run `docker-compose up -d` to start all the Usenet services

### Note about Plex and setting up Plex server
* Initially when all containers are fully running, Plex is accessible by IP:PORT/web/index.html but the Plex Server configuration is hidden.  This is due to the Plex container being behind the Docker Network's IP and not being able to connect to Plex.tv
* I found my solution in this Github issue thread <https://github.com/linuxserver/docker-plex/issues/36>
* Specifically I had to SSH tunnel to the Plex Docker container `ssh -L 8080:localhost:32400 user@dockerhost.mydomain.net`, then opened a web browser and went to `127.0.0.1:8080/web/index.html` which allowed me to configure my server
