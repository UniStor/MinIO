getUser(){
ln -srf user.example.sh user.sh
source user.sh
}

makeAlias(){
getUser
server=localhost
port=9000

mcli alias set myminio/ http://${server}:${port} ${user} ${password}
}

makeAlias
