resource "local_file" "pet" {
  filename = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/multiple-providers/Pets.txt"
  content = "We love pets!"
}

resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}
