#!/bin/bash

RUNDECK_DOCKER_ID=`docker ps | grep rundeck/rundeck | awk '{print $1}'`

docker cp rundeck/rundeck-rocketchat-notifier-0.1.jar $RUNDECK_DOCKER_ID:/home/rundeck/libext/

exit 0
