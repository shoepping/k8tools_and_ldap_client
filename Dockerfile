FROM bitnami/kubectl:1.20.9 as kubectl
FROM ubuntu:latest
#LDAP and more Tools

RUN apt-get update && apt-get install -y bash bash-completion curl ldap-utils jq vim wget
COPY --from=kubectl /opt/bitnami/kubectl/bin/kubectl /usr/local/bin/
COPY ldap.con /etc/ldap/ldap.conf
