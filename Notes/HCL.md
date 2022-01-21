# Hashicorp Configuration Language

- A resource/component is an object that Terraform manages (file, vm, s3 bucket,etc).

# HCL Basics
```
<block> <parameters>{
	key1 = value1
	key2 = value2
}
```

- Creating a file using terraform:
- sensitive content parameter prevents contents from showing up in logs when running terraform plan and apply.
- using both content and sensitive content will cause a conflict issue.
- terraform init downloads and installs plugins required for the providers needed for the configuration
