variable "filename" {
   default = "/home/yatharthavijay5/terrform_course/terraform_variables/DevOps_automated"

}

variable "content" {
   default = "This is a file generated with terraform variables"

}





variable "content_map" {
   type = map
   default = {
      "content1"="I love terraform"
      "content2"="I love DevOps"
}     
   
}

variable "file1"{
   type = string
   default = "/home/yatharthavijay5/terrform_course/terraform_variables/yathartharocks.txt"


}

variable "list1" {
   type = list
   default = ["This is cool", "This is cooler"]

}

variable "object_list" {
type = object ({
          name = string
          instances = number
          keys = list(string)
          ami = string


})

default = {
   name = "test_ec2_instance"
   instances = 4
   keys = ["key1.pem", "key2.pem"]
   ami = "ubuntu-adef"

}

}

variable "number_of_students"{
   type = number
}



