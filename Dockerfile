FROM bitnami/kubectl:latest
#LDAP and more Tools

RUN apk add bash bash-completion bind-tools curl iperf3 iputils jq lynx netcat-openbsd openldap-clients socat util-linux vim wget
