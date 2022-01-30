variable "filenames"{
    default = [
        "hamza.txt",
        "haider.txt",
        "horses.txt",
        "houses.txt"
    ]
    type = set(string)
    #for_each only works with map or set of strings
}