FROM openjdk:8
MAINTAINER John McConnell <johnnyillinois@gmail.com>

ENV LEIN_ROOT "true"
ENV LEIN_VERSION "stable"

RUN wget -q -O /usr/bin/lein \
    "https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein"

RUN chmod +x /usr/bin/lein

RUN lein

ENTRYPOINT ["lein"]
