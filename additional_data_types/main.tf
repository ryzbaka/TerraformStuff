resource "random_pet" "pet1"{
    prefix = var.some_list[1]
    separator = "-"
    length = 1
}

resource "local_file" "pet-file" {
    filename = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/additional_data_types/${random_pet.pet1.id}.txt"
    content = var.some_map["statement1"]
}