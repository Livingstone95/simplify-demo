project             = "cosmic-kayak-343810"
region              = "europe-west2"
service_identity    = "cloudidentity.googleapis.com"
service_run         = "run.googleapis.com"
ingress             = "INGRESS_TRAFFIC_ALL"
image_a             = "gcr.io/forward-server-390416/fastapi"
image_b             = "gcr.io/forward-server-390416/django_blog:latest"
role_service_a      = "roles/run.invoker"
role_service_b      = "roles/run.invoker"
account_id_identity = "segun-cloud-identity-id"
account_id_run      = "csegun-run-id"
service_a_name      = "service-a"
service_b_name      = "service-b"


