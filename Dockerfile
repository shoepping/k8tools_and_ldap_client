FROM bitnami/kubectl:1.20.9 as kubectl
FROM ubuntu:latest
#LDAP and more Tools

RUN apt-get update && apt-get install bash bash-completion bind-tools curl ldap-utils iputils jq openldap-clients vim wget
COPY --from=kubectl /opt/bitnami/kubectl/bin/kubectl /usr/local/bin/
