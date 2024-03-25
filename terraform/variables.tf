variable "credentials" {
  description = "GCP credentials"
  default     = "../keys/terraform-covid-19-project.json"
}

variable "location" {
  description = "Project location"
  default     = "EU"
}

variable "project" {
  description = "Project"
  type        = string
  default     = "precise-rite-412717"
}

variable "region" {
  description = "Region"
  type        = string
  default     = "europe-west1-b"
}

variable "BQ_dataset_name" {
  description = "Covid-19 dashboard project"
  default     = "covid_dataset"
}

variable "GCS_bucket_name" {
  description = "Covid-19 dashboard project bucket name"
  default     = "precise-rite-412717-terraform-covid-project"
}

variable "GCS_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
