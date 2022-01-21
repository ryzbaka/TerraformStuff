resource "local_file" "pet"{
	filename = "/mnt/c/Users/hrizvi/Desktop/TerraformStuff/terraform-local-file/pets.txt"
	content = "We love pets"
	file_permission = "0700"
}
# resource -> block name
# local_file -> resource type; local-> provider, file-> resource
# pet -> resource name
# filename and contents are arguments in key value pair format specific to local file resource
