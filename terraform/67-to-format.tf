
terraform {
                    
  required_version =    "~>1.0"

  backend "gcs" {
    prefix =                                                "compute"
  }

   required_providers   {  
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

locals {
  some-var          = "hi Ollie"  
not-another-array=   [  "dog","cat" ,   "monkey" ]  

  second-array = [
    "canary",
     "owl",
    "wolf",
  "donkey"
  ]

}
provider "google" {
  project = "{{YOUR GCP PROJECT}}"
 region = "us-central1"
   zone       = "us-central1-c"
}