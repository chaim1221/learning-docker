images=$(docker images | grep mysql | wc -l)
if [ $images -lt 1 ]; then
  docker pull mysql
fi

docker run mysql # errors because missing args
