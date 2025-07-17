FROM mcr.microsoft.com/devcontainers/base:debian

RUN apt-get update && \
    apt-get install -y docker.io docker-compose curl && \
    apt-get clean

# Permitir usar docker como usuário padrão no Codespace
RUN groupadd docker && usermod -aG docker vscode
