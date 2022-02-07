FROM google/cloud-sdk:alpine
RUN apk add --update --no-cache openjdk8-jre
RUN gcloud components install cloud-firestore-emulator beta --quiet
COPY entrypoint /entrypoint
RUN chmod +x /entrypoint
ENV PORT 8888
EXPOSE "$PORT"
ENV PROJECT_ID "dev-project"
ENTRYPOINT ["/entrypoint"]
