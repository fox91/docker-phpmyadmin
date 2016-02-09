#!/bin/bash
set -e
set -u
set -x

docker push docker.io/fox91/phpmyadmin:4.5.3.1
docker push docker.io/fox91/phpmyadmin:4.5

docker push docker.io/fox91/phpmyadmin:4.4.15.2
