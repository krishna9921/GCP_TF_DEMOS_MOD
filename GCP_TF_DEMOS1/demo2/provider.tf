provider "google" {
    project = var.PROJECT
    region = var.REGION
    #copy the key.json to demo2 directory 
    credentials = "key.json"
    
}