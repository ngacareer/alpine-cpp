## Quick reference
- Created by: <a href="https://github.com/ngacareer">ngacareer</a>
- Where to get help: <a href="https://forums.docker.com/">the Docker Community Forums</a>, <a href="https://dockr.ly/slack">the Docker Community Slack</a>, or <a href="https://stackoverflow.com/search?tab=newest&amp;q=docker">Stack Overflow</a>

## Supported tags and respective Dockerfile links
- <a href="https://github.com/ngacareer/alpine-cpp/blob/master/Dockerfile">latest</a>

## Quick reference (cont.)
- Where to file issues <a href="https://github.com/ngacareer/alpine-cpp/issues">https://github.com/ngacareer/alpine-cpp/issues</a>

## What is alpine-cpp ? 
The C++ images are based on Alpine Linux. CMake-generated files will be stored, then compile C++ project
## How to use this image
- On Docker 
```
docker run -itd --name alpine-cpp ngacareer/alpine-cpp
docker exec -it alpine-cpp sh
# cd /ngacareer
# cmake "$@" ..
 ```
- On Kubernetes
 ```
kubectl run alpine-cpp --image=ngacareer/alpine-cpp
kubectl exec -it alpine-cpp sh
# cd /ngacareer
# cmake "$@" ..
 ```
- On OpenShift
 ```
oc run alpine-cpp --image=ngacareer/alpine-cpp
oc exec alpine-cpp  -i -t sh
# cd /ngacareer
# cmake "$@" ..
 ```
## License

Copyright © 2021 Ngacareer

All contents licensed under the [MIT License](LICENSE)
