#useanode base image
FROM node:7-onbuild
#set maintainer
LABEL maintainer "miiro@getintodevops.com"
#setahealth check
HEALTHCHECK --interval=5s\
    --timeout=5s\
    CMD curl -f http://127.0.0.1:8000 || exit1
#tell docker what port to expose
EXPOSE 8000
