resource "local_file" "somefile"{
	filename = "./lmao.txt"
	content = "lmao\n"
	provisioner "local-exec"{
		command = <<-EOF #heredoc syntax
		echo hello;
		echo created_file;
		EOF# this script will be run on the local machine from where terraform is run.
	}
}

# To run scripts on the remote resource machine you'll have to use the remote-exec provisioner
# remote-exec accepts a list(string) argument called inline where you can specify bash commands
# line by line.
# You'll also need a connection block inside the resource in order to establish connection with the local machine.
