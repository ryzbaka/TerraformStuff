data "local_file" "dog"{
    filename = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/Datasources/dogs.txt"
} #resource provisioned outside terraform can be tracked as a datasource
resource "local_file" "pets"{
    filename = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/Datasources/pets.txt"
    content = data.local_file.dog.content
}