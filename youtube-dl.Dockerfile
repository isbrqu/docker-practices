FROM python:3.7.10-buster

RUN mkdir /download
RUN chown 1000:1000 /download
WORKDIR /download

RUN pip install --upgrade pip
RUN pip install youtube-dl

COPY --from=mwader/static-ffmpeg:4.4.0 /ffmpeg /usr/local/bin/
COPY --from=mwader/static-ffmpeg:4.4.0 /ffprobe /usr/local/bin/
COPY --from=mwader/static-ffmpeg:4.4.0 /qt-faststart /usr/local/bin/

ENTRYPOINT ["youtube-dl"]

