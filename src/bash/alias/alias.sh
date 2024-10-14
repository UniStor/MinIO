getServer(){
server=localhost
port=9000
}

getUser(){
cd alias/getUser
ln -srf user.example.sh user.sh
source user.sh
cd - >/dev/null
}

aliasUser(){
alias_name=myminio
mcli alias set ${alias_name}/ http://${server}:${port} ${user} ${password}
}

aliasAdmin(){
alias_name=adminminio
admin_user=admin
admin_password=password

mcli alias set ${alias_name}/ http://${server}:${port} ${user} ${password}
}

getServer
getUser

aliasUser
aliasAdmin
