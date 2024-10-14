source=deb

return(){
cd - > /dev/null
}

startServer(){
cd server
source ${source}.sh
source startServer.sh
return
}

getClient(){
cd client
source ${source}.sh
return
}

#startServer
getClient
