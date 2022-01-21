variable "absolute_path"{
    description = "Absolute path of directory in which file is to be created."
    type = string
    default = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/random_values"
}

variable "file_content"{
    description = "Contents of the file to be created"
    type = string
    default = "This is a file with a randomly generated name"
}

variable "pet_name_length"{
    default = 2  
    type = number
}
