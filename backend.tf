terraform {
    backend "s3" {
        bucket = "my-jerryparakode1993-bucket"
        key    = "jerin/terraform.tfstate"
        region = "us-east-1"
    }
}
