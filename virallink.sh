#!/bin/bash

docker build deploy/ -t virallink:latest
#docker run -it --rm cytoscape-desktop:latest /bin/bash

docker rm -f virallink
docker run -it --rm --name virallink -p 5900:5900 -p 1234:1234 -p 8080:8080 -p 6080:6080 -e no_proxy=localhost -e HUB_ENV_no_proxy=localhost -e SCREEN_WIDTH=1270 -e SCREEN_HEIGHT=700 -e VNC_NO_PASSWORD=1 virallink:latest screen -t -i -d -m /home/seluser/cytoscape/cytoscape-unix-3.7.0/cytoscape.sh; /bin/bash
#sh -c '/home/seluser/noVNC/utils/launch.sh --vnc localhost:5900 & /home/seluser/cytoscape/start.sh'
#docker exec -it virallink sh -c '/home/seluser/cytoscape/start.sh'
#/opt/bin/entry_point.sh &
