source=deb
language=Python

cache_dir=~/.uni/cache/minio

return(){
cd - > /dev/null
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

getServer
getClient
#getSDK

startServer
