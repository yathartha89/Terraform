resource "local_file" "DevOps" {
          filename = "/home/yatharthavijay5/terrform_course/terraform_local_file/DevOps_automated.txt"
          content = "I want to become a DevOps Engineer who rocked Terraform"
}


resource "random_string" "rand-str" {
          length = 16
          special = true

}

output "random_string" {
        value =  random_string.rand-str[*].result
}

output "random_id" {
        value = random_string.rand-str.id
}
