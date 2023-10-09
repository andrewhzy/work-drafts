provider "google" {
  project = "<your-project-id>"
  region  = "<your-region>"
}

resource "google_dataflow_job" "my_job" {
  name              = "my-job"
  template_gcs_path = "gs://path/to/your/template"
  temp_gcs_location = "gs://path/to/your/temp/location"
  input_file        = "gs://dataflow-samples/shakespeare/kinglear.txt"
  output_path       = "gs://path/to/your/output"

  service_account_email = "<your-service-account-email>"
}
