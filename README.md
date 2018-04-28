[hub]: https://hub.docker.com/r/adamant/nzbget
[git]: https://github.com/adamant/nzbget
[drone]: https://drone.adamant.io/spritsail/nzbget
[mbdg]: https://microbadger.com/images/adamant/nzbget

# [Adam-Ant/NZBGet][hub]

[![Layers](https://images.microbadger.com/badges/image/adamant/nzbget.svg)][mbdg]
[![Latest Version](https://images.microbadger.com/badges/version/adamant/nzbget.svg)][hub]
[![Git Commit](https://images.microbadger.com/badges/commit/adamant/nzbget.svg)][git]
[![Docker Pulls](https://img.shields.io/docker/pulls/adamant/nzbget.svg)][hub]
[![Docker Stars](https://img.shields.io/docker/stars/adamant/nzbget.svg)][hub]
[![Build Status](https://drone.adamant.io/api/badges/spritsail/nzbget/status.svg)][drone]

An Alpine Linux based Dockerfile to run the usenet downloader NZBGet.  This is a fork that includes ffmpeg and file, for post processing scripts. 
It expects a volume to store data mapped to `/config` in the container, and a volume where your downloads should go stored at `/downloads`. Enjoy!

This dockerfile uses a user with uid 904, and a gid of 900. Make sure this user has write access to the /config folder.
These user IDs can be overwritten by defining `$UID` and `$GID` respectively.

## Example run command
```
docker run -d --restart=on-failure:10 --name NZBGet -v /volumes/nzbget:/config -v /host/path/to/downloads:/downloads -p 6789:6789 adamant/nzbget
```
