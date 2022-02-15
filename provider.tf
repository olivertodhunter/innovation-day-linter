terraform {

  required_version =   "~>1.0"

  backend  "gcs" {
    prefix  = "compute"
  }

  required_providers {
    google = {
      version = "~>4.0"
    }
      null = {
    version = "~>3.0"
    }
  }

}



provider "google" {
  project =  "fake-project"
}