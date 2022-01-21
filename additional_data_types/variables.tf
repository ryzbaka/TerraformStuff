#LIST
variable "some_list"{
    type = list(string) #lists can only hold elements of the same type
    default = ["Apple","Banana"]
}

#MAP
variable "some_map" {
    type = map(string)
    default = {
        "statement1": "This is the first statement."
        "statement2": "This is the second statement."
    }
}

#OBJECT
variable "Cat" {
    type = object({
        name = string
        color = string
        age = number
        food = list(string)
        favorite = bool
    })
    default = {
      age = 12
      color = "White"
      favorite = true
      food = [ "Fish pellets", "Milk" ]
      name = "Bella"
    }
}

#SET -> same as list but with no duplicate values
variable "some_set"{
    type = set(string) #sets can only hold elements of the same type
    default = ["Apple","Banana"]
}

#TUPLE -> same as list but with no duplicate values
variable "some_tuple"{
    type = tuple([string,number,bool]) 
    default = ["Apple",23,false]
}
