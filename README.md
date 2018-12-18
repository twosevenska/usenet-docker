# Usenet Docker

This repo is my version of another fork. Setup should be a bit easier but even the original was pretty straightforward.

## ! NOTICE !

THIS FORK HAS BEEN ARCHIVED AND DUPLICATED SINCE IT WAS BECOMING ITS OWN THING AND NOT EXCLUSIVE FOR USENET

## Containers
* [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy) - Nginx Proxy
* [linuxserver/sabnzbd](https://github.com/linuxserver/docker-sabnzbd) - SABnzbd
* [linuxserver/couchpotato](https://github.com/linuxserver/docker-couchpotato) - CouchPotato
* [plexinc/pms-docker](https://github.com/plexinc/pms-docker) - Plex
* [linuxserver/sonarr](https://github.com/linuxserver/docker-sonarr) - Sonarr
* [linuxserver/muximux](https://github.com/linuxserver/docker-muximux) - Muximux

## Docker Setup
1. Update `./uidgid.env` with the user and group IDs that will be running Docker
2. Update `./.env` and add your own Hostname as well as your directory for config, downloads, movies and TV folders
3. Create the necessary folders and make sure the user/group running the containers is the same
3. Choose which services containers to use and remove the extras from the `./docker-compose.yml` file
4. Run `docker-compose up -d` to start all the Usenet services

### Note about Plex and setting up Plex server
* Initially when all containers are fully running, Plex is accessible by IP:PORT/web/index.html but the Plex Server configuration is hidden.  This is due to the Plex container being behind the Docker Network's IP and not being able to connect to Plex.tv
* Basically from as stated in the original repo you need to tunnel the container and access the page. In order to do so follow the instructions on https://support.plex.tv/hc/en-us/articles/200288586-Installation specifically the section on "Opening the Plex Web App on a Device Other than the Server Itself"

### Services setup
* The htpc guides are pretty nifty: https://www.htpcguides.com
