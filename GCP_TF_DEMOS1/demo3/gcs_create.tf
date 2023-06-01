  provider "google" {
    project = var.PROJECT
    region = var.REGION
    #copy the key.json to demo2 directory 
    credentials = file("key.json")
  }
   
   resource "google_storage_bucket" "bucket" {
   name = "demo3-bucket-111"
   location = "asia-southeast1"
   force_destroy = true 
   storage_class = "REGIONAL"
   

   versioning {
       enabled = true
   }

}