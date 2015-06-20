# file names are based on the name of the current directory
openssl genrsa -out ./"${PWD##*/}".key 8192
openssl req -new -sha256 -key ./"${PWD##*/}".key -out ./"${PWD##*/}".csr
openssl dhparam -out "${PWD##*/}".dh.pem 4096

# create this file as a placeholder
# copy the actual certificate data based on the information provided by your CA 
touch "${PWD##*/}".crt
