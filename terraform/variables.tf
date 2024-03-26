variable "credentials" {
  description = "GCP credentials"
  default     = "../keys/terraform-covid-19-project.json"
}

variable "location" {
  description = "Project location"
  default     = "EUROPE-WEST1"
}

variable "project" {
  description = "Project"
  type        = string
  default     = "precise-rite-412717"
}

variable "region" {
  description = "Region"
  type        = string
  default     = "EUROPE-WEST1"
}

variable "BQ_dataset_name" {
  description = "Covid-19 dashboard project"
  default     = "covid_project_dataset"
}

variable "GCS_bucket_name" {
  description = "Covid-19 dashboard project bucket name"
  default     = "precise-rite-412717-terraform-covid-project"
}

variable "GCS_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}
