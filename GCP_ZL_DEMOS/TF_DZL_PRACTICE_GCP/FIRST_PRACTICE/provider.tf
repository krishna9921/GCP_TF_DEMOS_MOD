provider "aws" {
    access_key = "AKIAS4BMQBZIM2YKRS6D"
    secret_key = "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"
    region = "ap-south-1"
  
}

provider "google" {
    region = "asia-southeast1"
    credentials = "key.json"
    project = "cloudsqldeepdive"
  
}
