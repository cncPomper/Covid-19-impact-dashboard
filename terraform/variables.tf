variable "location" {
    description = "Project location"
    default = "EU"
}


variable "BQ_dataset_name" {
    description = "Covid-19 dashboard project"
    default = "covid_dataset"
}

variable "GCS_bucket_name" {
    description = "Covid-19 dashboard project bucket name"
    default = ""
}

variable "GCS_storage_class" {
    description = "Bucket Storage Class"
    default = "STANDARD"
}