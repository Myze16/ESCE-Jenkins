FROM jenkins/jenkins:lts

USER root
RUN apt-get update && apt-get install -y curl netcat-openbsd

RUN curl -s https://ngrok-agent.s3.amazonaws.com/ngrok.asc | tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null && \
    echo "deb https://ngrok-agent.s3.amazonaws.com buster main" | tee /etc/apt/sources.list.d/ngrok.list && \
    apt-get update && apt-get install -y ngrok

ENV JAVA_OPTS="-Djenkins.install.runSetupWizard=false"

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN ngrok config add-authtoken MEU_TOKEN

EXPOSE 8080 50000

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
