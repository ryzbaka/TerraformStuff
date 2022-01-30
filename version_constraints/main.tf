terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "1.4.0"
    }
  }
} #using an older version of the official local provider

resource "local_file" "somefile"{
    filename = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/version_constrains/hello.txt"
    content = "hello"
}