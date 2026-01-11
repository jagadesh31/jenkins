FROM jenkins/jenkins:lts-jdk17

USER root

# Install docker CLI
RUN apt-get update && \
    apt-get install -y docker.io docker-compose-plugin && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
