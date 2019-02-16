ZeroTier + Socat Docker image by [Acevpn](https://www.acevpn.com/)

# Description

Zerotier is an open source, cross-platform and easy to setup and use virtual LAN / Hamachi alternative available on Android, iOS, Mac, Windows, Linux.

# Usage

This Dockerfile is pushed to [dockerhub](https://hub.docker.com/r/acevpn/zerotiersocat/).

# Build

```docker build -t zerotiersocat .
docker run --privileged --name ZerotierSocat zerotiersocat
```

# Environment Variables

Zerotier_Network_ID = Your Zerotier Network ID. Create your network at https://my.zerotier.com/
Socat_Dest_IP = Socat destination IP
Socat_Dest_Port = Socat destination port.

Socat syntax for RDP
```socat TCP-LISTEN:3389,fork,reuseaddr TCP:<Computer_IP>:3389
```
