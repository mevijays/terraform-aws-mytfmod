variable "ec2_type" {
  default = "t3.micro"
  description = "Give the instance size here"
}
variable "ec2_tags" {
  default = null
}
variable "ami_id" {
  default = null
}
variable "ami_name_filter" {
  default = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  description = "an ami image filter name data in list example: ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"
}
variable "ami_owner_name" {
  default = ["099720109477"]
  description = "mention aws ami owner id"
}