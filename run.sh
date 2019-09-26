#export JEKYLL_VERSION=3.8
docker build -t myjekyll .
docker run --rm \
  -p 4000:4000 \
  --name jekyll_run \
  -it myjekyll \
  jekyll serve