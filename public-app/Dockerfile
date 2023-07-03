# FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:latest
# COPY dev-creds.json  ./dev-creds.json
# RUN gcloud auth activate-service-account segunadebayo@cosmic-kayak-343810.iam.gserviceaccount.com --key-file=dev-creds.json --project=cosmic-kayak-343810

FROM alpine:latest
WORKDIR /
RUN apk add --update \
 python3 \
 curl \
 which \
 bash

RUN curl -sSL https://sdk.cloud.google.com | bash

ENV PATH $PATH:/root/google-cloud-sdk/bin

COPY script.sh ./script.sh
RUN chmod +x ./script.sh
COPY dev-creds.json  ./dev-creds.json
RUN gcloud auth activate-service-account segunadebayo@cosmic-kayak-343810.iam.gserviceaccount.com --key-file=dev-creds.json --project=cosmic-kayak-343810
EXPOSE 8001
CMD ["./script.sh"]

