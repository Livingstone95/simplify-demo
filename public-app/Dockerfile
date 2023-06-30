FROM gcr.io/google.com/cloudsdktool/google-cloud-cli:latest
COPY dev-creds.json  ./dev-creds.json
RUN gcloud auth activate-service-account segunadebayo@cosmic-kayak-343810.iam.gserviceaccount.com --key-file=dev-creds.json --project=cosmic-kayak-343810

COPY script.sh ./script.sh
RUN chmod +x ./script.sh
EXPOSE 80
CMD ["./script.sh"]

