client_download_url="https://dl.min.io/client/mc/release/linux-amd64/mcli_20241008093726.0.0_amd64.deb"

installClient(){
if [ ! -f ${cache_dir}/mcli_*_amd64.deb ]; then
  mkdir -p ${cache_dir}
  cd ${cache_dir}
  wget ${client_download_url}
fi

if ! command -v mcli 2>&1 >/dev/null
then
  sudo dpkg -i mcli_*_amd64.deb
fi

echo "client installed complete"
}

installClient
