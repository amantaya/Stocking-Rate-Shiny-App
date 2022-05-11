# local r docker container running on port 80
# this command disables authentication so only use it on a private network

docker run -d -e DISABLE_AUTH=true --rm -p 127.0.0.1:80:8787 -v C:/Users/andre/Dropbox/Dev/Stocking-Rate-Shiny-App:/home/rstudio/Stocking-Rate-Shiny-App rocker/verse:4.2.0
