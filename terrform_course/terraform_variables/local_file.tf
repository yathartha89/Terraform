resource "local_file" "DevOps" {
   filename = "/home/yatharthavijay5/terrform_course/terraform_variables/DevOps.txt"
   content = var.list1[0]
}

resource "local_file" "second_file" {
   filename = var.filename
   content = var.list1[1]




}


resource "local_file" "third_file" {
   filename = var.file1
   content = var.content_map["content1"]
}

output "info" {
   value = var.object_list 

}

output "json_file"{
   value =  var.number_of_students


}

