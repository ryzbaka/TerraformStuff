resource "local_file" "file"{
    filename = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/for-each/${each.value}"
    content = "file content"
    for_each = var.filenames # you can also use the toset function to convert the list into a set.
}