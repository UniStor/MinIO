data_dir=/mnt/data
cache_dir=~/.uni/cache/minio

if [ ! -f ${cache_dir}/minio_*_amd64.deb ]; then
  mkdir -p ${cache_dir}
  cd ${cache_dir}
  wget https://dl.min.io/server/minio/release/linux-amd64/minio_20241002175041.0.0_amd64.deb
fi

if ! command -v minio 2>&1 >/dev/null
then
  echo "could not be found"
  sudo dpkg -i minio_20241002175041.0.0_amd64.deb
fi

if [ ! -d ${data_dir} ]; then
  sudo mkdir -p ${data_dir}
  sudo chown -R $USER:$USER ${data_dir}
  echo "made storage directory ${data_dir}"
fi

startMinio(){
MINIO_ROOT_USER=admin MINIO_ROOT_PASSWORD=password minio server /mnt/data --console-address ":9001"
}
