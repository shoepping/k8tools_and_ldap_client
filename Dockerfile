FROM bitnami/kubectl:latest
#LDAP and more Tools
RUN apk update && apk add git less openssh &&  rm -rf /var/lib/apt/lists/* && rm /var/cache/apk/*

RUN apk update && apk add bash bash-completion bind-tools curl iperf3 iputils jq lynx netcat-openbsd openldap-clients socat util-linux vim wget
