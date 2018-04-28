FROM spritsail/nzbget

LABEL maintainer="Adam Dodman <nzbget@adam-ant.co.uk>" \
      org.label-schema.name="NZBGet" \
      org.label-schema.url="https://nzbget.net/" \
      org.label-schema.description="NZBGet - the efficient Usenet downloader, with added ffmpeg libraries"

RUN apk add --no-cache ffmpeg file
