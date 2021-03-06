FROM openjdk:8
MAINTAINER John McConnell <johnnyillinois@gmail.com>

ARG LEIN_VERSION="stable"

ENV LEIN_ROOT "true"

RUN wget -q -O /usr/bin/lein \
    "https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein"

RUN chmod +x /usr/bin/lein

RUN lein

ENTRYPOINT ["lein"]
