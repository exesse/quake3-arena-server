FROM alpine:latest as builder

LABEL author="Vladislav I. Kulbatski" email="hi@exesse.org"\
base_image_repo="https://github.com/jberrenberg/docker-quake3"\
pak0.pk3_repo="https://github.com/nrempel/q3-server"\
q3a_config_samples_repo="https://github.com/roguephysicist/q3a-server"

RUN \
  apk --no-cache add curl g++ gcc git make wget && \
  mkdir -p /tmp/build && \
  curl https://raw.githubusercontent.com/ioquake/ioq3/master/misc/linux/server_compile.sh -o /tmp/build/compile.sh && \
  curl https://ioquake3.org/data/quake3-latest-pk3s.zip --referer https://ioquake3.org/extras/patch-data/ -o /tmp/build/quake3-latest-pk3s.zip && \
  echo "y" | sh /tmp/build/compile.sh && \
  unzip /tmp/build/quake3-latest-pk3s.zip -d /tmp/build/ && \
  wget -O /tmp/build/quake3-latest-pk3s/baseq3/pak0.pk3 https://github.com/nrempel/q3-server/raw/master/baseq3/pak0.pk3 && \
  wget -O /tmp/build/quake3-latest-pk3s/baseq3/server.cfg https://raw.githubusercontent.com/exesse/quake3-arena-server/no-bots/server.cfg && \
  cp -r /tmp/build/quake3-latest-pk3s/* ~/ioquake3

FROM alpine:latest

RUN adduser ioq3srv -D

COPY --from=builder /root/ioquake3 /home/ioq3srv/ioquake3

USER ioq3srv

EXPOSE 27960/udp

CMD ["/home/ioq3srv/ioquake3/ioq3ded.x86_64", "+exec", "server.cfg"]