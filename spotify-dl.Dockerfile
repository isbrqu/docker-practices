FROM node
RUN npm install -g npm@latest
COPY --from=mwader/static-ffmpeg:4.4.0 /ffmpeg /usr/local/bin/
COPY --from=mwader/static-ffmpeg:4.4.0 /ffprobe /usr/local/bin/
COPY --from=mwader/static-ffmpeg:4.4.0 /qt-faststart /usr/local/bin/
RUN npm install -g spotify-dl
WORKDIR /download
ENTRYPOINT ["spotifydl"]
CMD ["--help"]
