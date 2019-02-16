# Zerotier + Socat

FROM zerotier/zerotier-containerized:latest
LABEL Maintainer=Acevpn.com

ENV Zerotier_Network_ID=""
ENV Socat_Dest_IP="192.168.29.110"
ENV Socat_Dest_Port="3389"

COPY startup.sh /startup.sh

RUN true \
    && apk add --no-cache socat \
    && rm -rf /var/cache/apk/* \
    && chmod +x startup.sh \
    && true

ENTRYPOINT ["/startup.sh"]
