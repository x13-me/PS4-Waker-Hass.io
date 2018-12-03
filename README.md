## Hass.io plugins

[![Build Status](https://travis-ci.org/x13-me/hassio-addons.svg?branch=master)](https://travis-ci.org/x13-me/hassio-addons)

## Pre-built images

## [PS4Waker](https://github.com/x13-me/hassio-addons/tree/master/ps4waker) [![](https://images.microbadger.com/badges/version/vkorn/armhf-ps4waker.svg)](https://microbadger.com/images/vkorn/armhf-ps4waker "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/vkorn/armhf-ps4waker.svg)](https://microbadger.com/images/vkorn/armhf-ps4waker "Get your own image badge on microbadger.com")

REST-wrapper around ps4-waker to support ps4 component

## Usefull commands

If you're getting too much stalled containers, run (warning, can damage you setup!!!)

```
docker rm -v $(docker ps --filter status=exited -q 2>/dev/null)
docker rm -v $(docker ps --filter status=created -q 2>/dev/null)
```
Similar can be done for images.
