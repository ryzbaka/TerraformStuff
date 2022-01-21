resource "random_pet" "pet_name"{
    prefix = "randomly_generated"
    separator = "-"
    length = var.pet_name_length 
}

resource "local_file" "random_file"{
    filename = "${var.absolute_path}/${random_pet.pet_name.id}.txt"
    content = var.file_content
}