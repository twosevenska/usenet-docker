# Usenet Docker

This repo is my version of another fork. Setup should be a bit easier but even the original was pretty straightforward.

## Containers
* [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy) - Nginx Proxy
* [linuxserver/sabnzbd](https://github.com/linuxserver/docker-sabnzbd) - SABnzbd
* [linuxserver/couchpotato](https://github.com/linuxserver/docker-couchpotato) - CouchPotato
* [linuxserver/plex](https://github.com/linuxserver/docker-plex) - Plex
* [linuxserver/sonarr](https://github.com/linuxserver/docker-sonarr) - Sonarr
* [linuxserver/muximux](https://github.com/linuxserver/docker-muximux) - Muximux
* [linuxserver/ombi](https://github.com/linuxserver/docker-ombi) - Ombi

## Docker Setup
1. Update `./uidgid.env` with the user and group IDs that will be running Docker
2. Update `./.env` and add your own Hostname as well as your directory for config, downloads, movies and TV folders
3. Choose which Usenet services containers the use and remove the extras from the `./docker-compose.yml` file
4. Run `docker-compose up -d` to start all the Usenet services
