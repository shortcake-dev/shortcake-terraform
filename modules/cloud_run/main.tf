resource "google_cloud_run_service" "cloud_run" {
  name     = var.service_name
  location = var.region

  template {
    spec {
      containers {
        image = var.image
      }
    }

    metadata {
      annotations = {
        "run.googleapis.com/cloudsql-instances" = var.sql_instance.connection_name

        # No clustering (this may change for prod)
        "autoscaling.knative.dev/maxScale" = 1
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}
