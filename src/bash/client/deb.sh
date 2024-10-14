installClient(){
if [ ! -f ${cache_dir}/mcli_*_amd64.deb ]; then
  mkdir -p ${cache_dir}
  cd ${cache_dir}
  wget https://dl.min.io/client/mc/release/linux-amd64/mcli_20241008093726.0.0_amd64.deb
fi

if ! command -v minio 2>&1 >/dev/null
then
  echo "could not be found"
  sudo dpkg -i mcli_20241008093726.0.0_amd64.deb
fi

echo "client installed complete"
}

installClient
