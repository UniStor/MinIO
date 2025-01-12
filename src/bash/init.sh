source=deb
language=Python

cache_dir=~/.uni/cache/minio

alias(){
source alias/main.sh
}

getServer(){
source server/${source}.sh
}

getClient(){
source client/${source}.sh
}

getSDK(){
source sdk/main.sh
}

startServer(){
source server/startServer.sh
}

setupClient(){
source client/main.sh
}

getServer
getClient
#getSDK

startServer
setupClient
