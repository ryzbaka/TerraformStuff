resource "random_string" "random_file_suffix" {
  length  = 16
  special = false

  count = length(var.contents) # length function returns the length of a list
}

resource "local_file" "randomly_generated_file" {
  filename = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/count/file-${random_string.random_file_suffix[count.index].result}.txt"
  content  = var.contents[count.index] 

  count = length(var.contents) # length function returns the length of a list
}

#disadvantage of using count in this case is that even if the index values of the list change due to the deletion of one value from it,
#1 file will be deleted while others will be unnecesarily be replaced due to the index of the resource being changed.