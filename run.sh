export JEKYLL_VERSION=3.8
docker run --rm \
  --volume="$PWD:/srv/jekyll" \
  -p 4000:4000 \
  --name jekyll_run \
  -it jekyll/jekyll:$JEKYLL_VERSION \
  jekyll serve