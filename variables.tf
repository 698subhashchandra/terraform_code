variable "filename" {
        default = "/home/ubuntu/terraform-course/terraform-variables/devops-automated.txt"
}

variable "content" {
        default = "THIS IS AUTO GENREATED FROM A VARIABLE"
}

variable "devops_op_trainer" {}

variable "content_map" {
type = map
default = {
"content1" = "THIS IS A COOL CONTENT"
"content2" = "THIS IS A COOLER CONTENT"
}
}

variable "file_list" {
type = list
default = ["/home/ubuntu/terraform-course/terraform-variables/file_1.txt", "/home/ubuntu/terraform-course/terraform-variables/file_2.txt"]
}

variable "aws_ec2_object" {
  type = object({
        name = string
        instances = number
        keys = list(string)
        ami = string
})

default = {
        name = "test_ec2_instanc"
        instances = 4
        keys = ["key1.pem", "key2.pem"]
        ami = "ubuntu_adg23hgc"
}
}

variable "no_of_students" {}
