FROM cm2network/steamcmd

RUN ./steamcmd.sh +login anonymous +app_update 2394010 validate +quit
VOLUME /home/steam/Steam/steamapps/common/PalServer
WORKDIR /home/steam/Steam/steamapps/common/PalServer
ENTRYPOINT [ "./PalServer.sh" ]