#!/bin/bash 
curl -H \
"Authorization: Bearer $(gcloud auth print-identity-token)" \
https://service-b-sr572cbmhq-nw.a.run.app