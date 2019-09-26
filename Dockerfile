FROM jekyll/jekyll:3.8
COPY . .
RUN jekyll build