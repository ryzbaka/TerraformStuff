resource "random_pet" "pet_name"{
    prefix = "file"
    separator = "-"
    length = 1
}

resource "local_file" "file"{
    filename = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/output_variables/${random_pet.pet_name.id}"
    content = "Trash file"
}

output pet-name{
    value = random_pet.pet_name.id
    description = "Randomly generated pet name."
}